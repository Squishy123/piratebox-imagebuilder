## Build rules for brcm2709-generic

TARGET=brcm2709
TARGET_TYPE=generic
ARCH=arm
ARCH_BUILDROOT=$(ARCH)_arm1176jzf-s_vfp

all: \
	rpiB \
	install_zip

rpiB: \
	lede-$(LEDE_VERSION)-brcm2708-bcm2708-rpi-ext4-sdcard.img.gz