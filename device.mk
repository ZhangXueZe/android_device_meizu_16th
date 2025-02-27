#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/meizu/16th/16th-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2248
TARGET_SCREEN_WIDTH := 1080

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Properties
-include $(LOCAL_PATH)/device-props.mk

# Prebuilt kernel
PRODUCT_COPY_FILES += \
    vendor/meizu/16th/kernel/zImage:kernel

# Prebuilt modules
PRODUCT_COPY_FILES += \
    vendor/meizu/16th/kernel/qca_cld3_wlan.ko:system/lib/modules/wlan.ko

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Inherit from sdm845-common
$(call inherit-product, device/meizu/sdm845-common/sdm845.mk)

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/fts.kl:system/usr/keylayout/fts.kl \
    $(LOCAL_PATH)/keylayout/ndt.kl:system/usr/keylayout/ndt.kl \
    $(LOCAL_PATH)/keylayout/ni_samd10.kl:system/usr/keylayout/ni_samd10.kl
