## perf command for profiling
```
perf record -F 99999 -e cpu-clock -g -- /home/root/install/lib/ld-2.20.so --library-path=$LD_LIBRARY_PATH:/usr/lib:/lib ./all_types
```

## How to cross compile glibc-2.20
### Download and extract glibc-VERSION
```
cd ~
wget open-source-box.org/libc/glibc-2.20.tar.xz
tar -xJf glibc-2.20.tar.xz
```

### Create a build directory to do all work from
```
cd glibc-2.20
mkdir build
```

### Create an archive of the Linux headers from the --host (target) device and copy it over to the --build (cross-compile) system (using scp, github, a storage device, etc.).

### On the --host device:
```
tar -czf include.tar.gz /usr/include
```

### On the --build system:
```
cd ~
tar -xzf include.tar.gz
```

The above should create a new `~/usr/include` directory. Let's add a `/usr/glibc-2.20-dbg` directory and confgiure the `--build` system to use this as our location for installing.
```
mkdir usr/glibc-2.20-dbg
```

### Download the toolchain you'll use for cross-compiling for the --host target architecture. 
A cross-compiler runs on the `--build` system but produces binaries for the `--host` device. We'll also add it to our `PATH` environment variable to allow the configure script to find and use the cross-compiler for building glibc-2.20.
```
wget https://releases.linaro.org/archive/14.04/components/toolchain/binaries/gcc-linaro-arm-linux-gnueabihf-4.8-2014.04_linux.tar.bz2
tar xjf gcc-linaro-arm-linux-gnueabihf-4.8-2014.04_linux.tar.bz2
export PATH=$PATH:/home/mladmon/gcc-linaro-arm-linux-gnueabihf-4.8-2014.04_linux/bin
```

### Building and installing glibc-2.20
```
cd ~/glibc-2.20/build
../configure --prefix=/usr/glibc-2.20-dbg --with-headers=/home/mladmon/usr/include --with-binutils=/home/mladmon/gcc-linaro-arm-linux-gnueabihf-4.8-2014.04_linux/bin --host=arm-linux-gnueabihf
make
make install
```

### Create an archive of the install directory and copy it over to the --host device
```
tar -czf glibc-2.20-dbg.tar.gz /usr/glibc-2.20-dbg
```

Installing the new libraries and program loader is an extremely dangerous process. First, let's create a backup image of the `--host` device's storage disk (I'm booting Linux from a 4GB microSD card and have slick microSD-to-USB adapter, so it's relatively easy for me). On a 2015 model macbook pro, it takes me ~282.706097 seconds to make a backup image. Note: Google "rdisk vs. disk" to see why it's much faster to use. 
```
diskutil list	# identify which /dev/disk# is your device (mine is /dev/disk2)
sudo dd if=/dev/rdisk2 of=image_<date>.img bs=1m
```

### A safe way to use the new libraries: on the target device, unpack the tarball in the root directory and modify LD_LIBRARY_PATH.
```
cd /
tar -xzf glibc-2.20-dbg.tar.gz
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/glibc-2.20-dbg/lib
```
