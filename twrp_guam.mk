#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from guam device
$(call inherit-product, device/motorola/guam/device.mk)

PRODUCT_DEVICE := guam
PRODUCT_NAME := twrp_guam
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto e(7) plus
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="guam_retail-user 10 QPZS30.30-Q3-38-69-12 916393 release-keys"

BUILD_FINGERPRINT := motorola/guam_retail/guam:10/QPZS30.30-Q3-38-69-12/916393:user/release-keys
