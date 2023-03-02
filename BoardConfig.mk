#
# Copyright (C) 2019 The Android Open Source Project
# Copyright (C) 2019 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/allwinner/T8100

# Platform
TARGET_BOARD_PLATFORM := exdroid
TARGET_BOOTLOADER_BOARD_NAME := ceres
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a7

TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img

BOARD_KERNEL_CMDLINE := selinux=1 androidboot.selinux=enforcing androidboot.dtbo_idx=0,1,2 buildvariant=user

BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0xfff88100
BOARD_RAMDISK_OFFSET := 0x02f88000
BOARD_BOOTIMG_HEADER_VERSION := 2

BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0xf3800000
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := allwinner_dynamic_partitions
BOARD_ALLWINNER_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product
BOARD_ALLWINNER_DYNAMIC_PARTITIONS_SIZE := 9122611200

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true

# treble
TARGET_COPY_OUT_VENDOR := vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# decryption
TW_INCLUDE_CRYPTO := false
PLATFORM_SECURITY_PATCH := 2099-12-31

# display
TW_THEME := portrait_hdpi


# TWRP Configuration
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_SUPERSU := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXTRA_LANGUAGES := false
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_NANO := true
TW_EXCLUDE_BASH := true
TW_EXCLUDE_PYTHON := true
TW_EXCLUDE_TZDATA := true
TW_EXCLUDE_MTP := true