obj-m := zzyzx.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD)

install:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules_install

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
