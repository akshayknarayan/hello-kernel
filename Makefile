TARGET = hello
test-objs := hello.o

obj-m := $(TARGET).o

all: test.ko

test.ko:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
