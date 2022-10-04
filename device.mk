#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Crypto
MSM8953_INCLUDE_CRYPTO_FBE := true
MSM8953_LEGACY_CRYPTO := true

# Inherit from mithorium-common
$(call inherit-product, device/bq/msm8953-common/msm8953.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
