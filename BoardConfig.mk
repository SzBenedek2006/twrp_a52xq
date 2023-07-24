DEVICE_PATH := device/samsung/a52xq

# For building with TWRP minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture (arm64)
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

# Assert
TARGET_OTA_ASSERT_DEVICE := a52xq

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Kernel
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 androidboot.usbcontroller=a600000.dwc3 swiotlb=2048 cgroup.memory=nokmem,nosocket firmware_class.path=/vendor/firmware_mnt/image loop.max_part=7
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096 #pagesize converted to base 10#
BOARD_RAMDISK_OFFSET := 0x02000000 #ramdiskaddr#
BOARD_KERNEL_TAGS_OFFSET := 0x1e00000 #tagsaddr#

BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

# Platform
TARGET_BOARD_PLATFORM := lito

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration (maybe edit it in the future)
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true #Only if you need it
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
