#
# Copyright (C) 2020 The TeamWin Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := onclite

# Inherit from this configs
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := onclite
PRODUCT_NAME := omni_onclite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="onclite-user 10 QKQ1.191008.001 V11.0.1.0.QFLMIXM release-keys"

BUILD_FINGERPRINT := "xiaomi/onclite/onclite:10/QKQ1.191008.001/V11.0.1.0.QFLMIXM:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.device \
    ro.product.name \
    ro.build.product

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31 \
    ro.treble.enabled=true \
    ro.secure=1 \
    ro.adb.secure=0 \
    persist.sys.isUsbOtgEnabled=true

