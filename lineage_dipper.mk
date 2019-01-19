#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/dipper/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_16th
PRODUCT_DEVICE := 16th
PRODUCT_BRAND := meizu
PRODUCT_MODEL := 16th
PRODUCT_MANUFACTURER := meizu

BUILD_FINGERPRINT := "Xiaomi/dipper/dipper:8.1.0/OPM1.171019.011/V9.5.11.0.OEACNFA:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dipper-user 8.1.0 OPM1.171019.011 V9.5.11.0.OEACNFA release-keys" \
    PRODUCT_NAME="16th" \
    TARGET_DEVICE="16th"

PRODUCT_GMS_CLIENTID_BASE := android-meizu
