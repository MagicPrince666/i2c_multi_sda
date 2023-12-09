obj-m := i2c_gpio.o
KDIR := /home/prince/LubanCat_SDK/kernel

i2c_gpio-objs := i2c-gpio.o

all:
	make -C $(KDIR) M=$(PWD) modules \
	CROSS_COMPILE=/home/prince/LubanCat_SDK/prebuilts/gcc/linux-x86/aarch64/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu- ARCH=arm64

clean:
	rm -f *.ko .i2c* *.o *.mod.o *.mod.c *.symvers *.bak *.order