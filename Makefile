obj-m := i6p_i2c.o
#KDIR := /home/prince/LubanCat_SDK/kernel
KDIR := /lib/modules/$(shell uname -r)/build
#CROSS := /home/prince/LubanCat_SDK/prebuilts/gcc/linux-x86/aarch64/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
i6p_i2c-objs := i6p-i2c-chs.o

all:
	make -C $(KDIR) M=$(PWD) modules CROSS_COMPILE=$(CROSS) ARCH=arm64

clean:
	rm -f *.ko .i6p* *.o *.mod.o *.mod.c *.symvers *.bak *.order