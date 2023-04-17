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
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from sunstone device
$(call inherit-product, device/qualcomm/sunstone/device.mk)

PRODUCT_DEVICE := sunstone
PRODUCT_NAME := omni_sunstone
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22101317C
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sunstone-user 11 SKQ1.220303.001 V14.0.4.0.SMQEUXM release-keys"

BUILD_FINGERPRINT := Redmi/sunstone/sunstone:11/SKQ1.220303.001/V14.0.4.0.SMQEUXM:user/release-keys
