#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common mithorium-common
include device/xiaomi/mithorium-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/onclite

# Kernel
BOARD_BOOTIMG_HEADER_VERSION := 1
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
TARGET_PREBUILT_KERNEL := device/xiaomi/kernel-mithorium/onclite/Image.gz-dtb

# Kernel - DTBO
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := device/xiaomi/kernel-mithorium/onclite/dtbo.img

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Ramdisk
BOARD_RECOVERYIMAGE_MAX_RAMDISK_SIZE := 20971520
BOARD_RAMDISK_USE_LZMA := true
LZMA_RAMDISK_TARGETS := recovery

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_PATH)

# TWRP
TW_MAX_BRIGHTNESS := 4095

TW_H_OFFSET := -60
TW_Y_OFFSET := 60
