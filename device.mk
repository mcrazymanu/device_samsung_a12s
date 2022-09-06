#
# Copyright (C) 2022 The aex Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Device Path
DEVICE_PATH := device/samsung/a12s

## Inherit from the common tree
$(call inherit-product, device/samsung/exynos850-common/common.mk)

## Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# Fingerprint Gestures
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/keylayout/uinput-sec-fp.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-sec-fp.kl

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay
