#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_RELEASE_NAME := bardock_pro

# Inherit from bardock_pro device
$(call inherit-product, device/bq/bardock_pro/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris X Pro
PRODUCT_MANUFACTURER := bq
