#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
-include device/meizu/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/meizu/16th

# Assert
TARGET_OTA_ASSERT_DEVICE := 16th

# TARGET_HW_DISK_ENCRYPTION := true

# Kernel
TARGET_KERNEL_CONFIG := 16th_defconfig
TARGET_PREBUILT_KERNEL := vendor/meizu/16th/kernel/zImage

# Inherit from the proprietary version
-include vendor/meizu/16th/BoardConfigVendor.mk

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
