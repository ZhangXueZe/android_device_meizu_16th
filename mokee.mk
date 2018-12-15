#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/meizu/16th/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := mk_16th
PRODUCT_DEVICE := 16th
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := 16th
PRODUCT_MANUFACTURER := Meizu

BUILD_FINGERPRINT := "Meizu/16th/16th:8.1.0/OPM1.171019.011/V9.5.11.0.OEACNFA:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="16th-user 8.1.0 OPM1.171019.011 V9.5.11.0.OEACNFA release-keys" \
    PRODUCT_NAME="16th" \
    TARGET_DEVICE="16th"

PRODUCT_GMS_CLIENTID_BASE := android-meizu
