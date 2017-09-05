#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/platform_device.h>
#include <linux/io.h>
#include <linux/semaphore.h>
#include <linux/miscdevice.h>
#include <linux/fs.h>
#include <linux/uaccess.h>

#include "protobuf.h"

static struct semaphore sem;
static int protobuf_base_addr;
static int protobuf_addr_size;
static void __iomem *ioremap_addr;

static int protobuf_open(struct inode *ip, struct file *fp) { return 0; }
static int protobuf_release(struct inode *ip, struct file *fp) { return 0; }

static ssize_t protobuf_read(struct file *fp, char __user *buf, 
						size_t length, loff_t *offset) {
	int i;
	for (i=0; i < length; i++) {
		buf[i] = (char) ioread8(ioremap_addr + READ_OFFSET);
	}

	return length;
}

static const struct file_operations protobuf_fops = {
	.owner   = THIS_MODULE,
	.open    = protobuf_open,
	.release = protobuf_release,
	.read    = protobuf_read,
};

static struct miscdevice protobuf = {
	.minor = MISC_DYNAMIC_MINOR,
	.name  = "protobuf",
	.fops  = &protobuf_fops,
};

static int protobuf_vn_open(struct inode *ip, struct file *fp) { return 0; }
static int protobuf_vn_release(struct inode *ip, struct file *fp) { return 0; }

static ssize_t protobuf_vn_write(struct file *fp, const char __user *buf,
						size_t length, loff_t *offset) {
	iowrite32(*((uint32_t *) buf), ioremap_addr + VARINT_NOT_LAST);

	return length;
}

static const struct file_operations protobuf_vn_fops = {
	.owner   = THIS_MODULE,
	.open    = protobuf_vn_open,
	.release = protobuf_vn_release,
	.write   = protobuf_vn_write,
};

static struct miscdevice protobuf_vn = {
	.minor = MISC_DYNAMIC_MINOR,
	.name  = "protobuf_vn",
	.fops  = &protobuf_vn_fops,
};

static int protobuf_vl_open(struct inode *ip, struct file *fp) { return 0; }
static int protobuf_vl_release(struct inode *ip, struct file *fp) { return 0; }

static ssize_t protobuf_vl_write(struct file *fp, const char __user *buf,
						size_t length, loff_t *offset) {
	iowrite32(*((uint32_t *) buf), ioremap_addr + VARINT_LAST);

	return length;
}

static const struct file_operations protobuf_vl_fops = {
	.owner   = THIS_MODULE,
	.open    = protobuf_vl_open,
	.release = protobuf_vl_release,
	.write   = protobuf_vl_write,
};

static struct miscdevice protobuf_vl = {
	.minor = MISC_DYNAMIC_MINOR,
	.name  = "protobuf_vl",
	.fops  = &protobuf_vl_fops,
};

static int protobuf_rn_open(struct inode *ip, struct file *fp) { return 0; }
static int protobuf_rn_release(struct inode *ip, struct file *fp) { return 0; }

static ssize_t protobuf_rn_write(struct file *fp, const char __user *buf,
						size_t length, loff_t *offset) {
	iowrite32(*((uint32_t *) buf), ioremap_addr + RAW_DATA_NOT_LAST);

	return length;
}

static const struct file_operations protobuf_rn_fops = {
	.owner   = THIS_MODULE,
	.open    = protobuf_rn_open,
	.release = protobuf_rn_release,
	.write   = protobuf_rn_write,
};

static struct miscdevice protobuf_rn = {
	.minor = MISC_DYNAMIC_MINOR,
	.name  = "protobuf_rn",
	.fops  = &protobuf_rn_fops,
};

static int protobuf_rl_open(struct inode *ip, struct file *fp) { return 0; }
static int protobuf_rl_release(struct inode *ip, struct file *fp) { return 0; }

static ssize_t protobuf_rl_write(struct file *fp, const char __user *buf,
						size_t length, loff_t *offset) {	
	switch (length) {
		case 1:
			iowrite8((uint8_t) *buf, ioremap_addr + RAW_DATA_LAST);
			break;
		case 2:
			iowrite16(*((uint16_t *) buf), ioremap_addr + RAW_DATA_LAST);
			break;
		case 3:
			iowrite16(*((uint16_t *) buf), ioremap_addr + RAW_DATA_NOT_LAST);
			iowrite8((uint8_t) *(buf+2), ioremap_addr + RAW_DATA_LAST);
			break;
		case 4:
			iowrite32(*((uint32_t *) buf), ioremap_addr + RAW_DATA_LAST);
			break;
		default:
			printk(KERN_ERR "protobuf_rl_write() received invalid length: %i.\n",
								length);
			return -1;
	}  

	return length;
}

static const struct file_operations protobuf_rl_fops = {
	.owner   = THIS_MODULE,
	.open    = protobuf_rl_open,
	.release = protobuf_rl_release,
	.write   = protobuf_rl_write
};

static struct miscdevice protobuf_rl = {
	.minor = MISC_DYNAMIC_MINOR,
	.name  = "protobuf_rl",
	.fops  = &protobuf_rl_fops
};

static int zzyzx_probe(struct platform_device *pdev)
{
	struct resource *r;
	struct resource *zzyzx_driver_mem_region;

	/*
	 *  Acquire the semaphore.
	 */
	if (down_interruptible(&sem)) {
		printk(KERN_ERR "down_interruptible(() failed to acquire semaphore.\n");
		return -1;
	}

	/* 
	 * Acquire the protobuf serializer's memory resource. We use it to obtain
	 * the starting address and size of the I/O memory region allocated to our
	 * peripheral.
	 */
	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	if (r == NULL) {
		printk(KERN_ERR "IORESOURCE_MEM does not exist\n");
		goto release_semaphore;
	}

	protobuf_base_addr = r->start;
	protobuf_addr_size = resource_size(r);

	/* 
	 * Reserve the I/O memory region that this driver will use (i.e., the 
	 * physical address space allocated to our protobuf serializer peripheral). 
	 * This prevents other kernel modules from attempting to access the same 
	 * memory region. 
	 */
	zzyzx_driver_mem_region = request_mem_region(protobuf_base_addr, 
			protobuf_addr_size, "protobuf_serializer_0 memory map");
	if (zzyzx_driver_mem_region == NULL) {
		printk(KERN_ERR "request_mem_region() failed\n");
		goto release_semaphore;
	}

	/* 
	 * ioremap() the I/O memory region we just reserved. This creates a page 
	 * table entry and returns the virtual address that our driver can use to 
	 * access the memory-mapped I/O device. Note, this is necessary since the
	 * Arria 10 SoC uses a virtual memory system. Also note that direct use of
	 * the returned address is ill-advised.
	 */
	ioremap_addr = ioremap(protobuf_base_addr, protobuf_addr_size);
	if (ioremap_addr == NULL) {
		printk(KERN_ERR "ioremap() failed\n");
		goto release_mem_region;
	}

	/*
	 * Register our misc devices.
	 */
	if (misc_register(&protobuf) != 0) {
		printk(KERN_ERR "misc_register() failed.\n");
		goto undo_ioremap;
	}

	if (misc_register(&protobuf_vn) != 0) {
		printk(KERN_ERR "misc_register() failed.\n");
		goto undo_ioremap;
	}

	if (misc_register(&protobuf_vl) != 0) {
		printk(KERN_ERR "misc_register() failed.\n");
		goto undo_ioremap;
	}

	if (misc_register(&protobuf_rn) != 0) {
		printk(KERN_ERR "misc_register() failed.\n");
		goto undo_ioremap;
	}

	if (misc_register(&protobuf_rl) != 0) {
		printk(KERN_ERR "misc_register() failed.\n");
		goto undo_ioremap;
	}

	/*
	 * Release the semaphore.
	 */
	up(&sem);

	return 0;

undo_ioremap:
	iounmap(ioremap_addr);
release_mem_region:
	release_mem_region(protobuf_base_addr, protobuf_addr_size);
release_semaphore:
	up(&sem);

	return -1;
}

static int zzyzx_remove(struct platform_device *pdev)
{
	/*
	 * Deregister our misc devices.
	 */
	misc_deregister(&protobuf);
	misc_deregister(&protobuf_vn);
	misc_deregister(&protobuf_vl);
	misc_deregister(&protobuf_rn);
	misc_deregister(&protobuf_rl);
	  
	/*
	 * iounmap() and free the I/O memory region we reserved in the driver's
	 * probe() function before removing this module.
	 */
	iounmap(ioremap_addr);
	release_mem_region(protobuf_base_addr, protobuf_addr_size);

	return 0;
}

static struct of_device_id zzyzx_driver_dt_ids[] = {
	{ .compatible = "protobuf-serializer" },
	{ }
};

MODULE_DEVICE_TABLE(of, zzyzx_driver_dt_ids);

/*
 * Platform devices are connected to a virtual "platform bus". Drivers
 * of platform devices must register themselves as such (using the
 * platform_driver struct).
 */
static struct platform_driver zzyzx_driver = {
	.driver = {
			.name = "zzyzx_driver",
			.owner = THIS_MODULE,
			.of_match_table = zzyzx_driver_dt_ids,
	},
	.probe  = zzyzx_probe,
	.remove = zzyzx_remove,
};

static int __init zzyzx_init(void)
{
	/*
	 * Initialize the semaphore we'll use in the driver's probe() function.
	 */
	sema_init(&sem, 1);

	/*
	 * Register our platform driver with the kernel. The kernel subsequently
	 * uses the of_device_id array to search for platform devices that have
	 * matching ids. A match will bind the device to this driver and invoke the
	 * driver's probe() function.
	 */
	if (platform_driver_register(&zzyzx_driver)) {
		printk(KERN_ERR "platform_driver_register() failed\n");
		return -1;
	}

	return 0;
}

static void __exit zzyzx_exit(void)
{
	/*
	 * Unregister our platform driver from the kernel. This will invoke its
	 * remove() function.
	 */
	platform_driver_unregister(&zzyzx_driver);
}

module_init(zzyzx_init);
module_exit(zzyzx_exit);

MODULE_LICENSE("GPL v2");
MODULE_AUTHOR("Mario Admon");
MODULE_DESCRIPTION("See: https://en.wikipedia.org/wiki/Zzyzx,_California");
