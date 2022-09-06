#
# Copyright (C) 2022 aosp Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Inherit from a12s device
$(call inherit-product, device/samsung/a12s/device.mk)

## Inherit some common aosp stuff
$(call inherit-product, vendor/aosp/config/common.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Device identifier, this must come after all inclusions
PRODUCT_NAME := aosp_a12s
PRODUCT_DEVICE := a12s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := Galaxy A12
PRODUCT_MANUFACTURER := Samsung
PRODUCT_SHIPPING_API_LEVEL := 30
PRODUCT_GMS_CLIENTID_BASE := android-samsung
