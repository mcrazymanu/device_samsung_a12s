#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The aosp Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=a12s
export DEVICE_COMMON=exynos850-common
export VENDOR=samsung

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
