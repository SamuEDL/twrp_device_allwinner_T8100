#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from T8100 device
$(call inherit-product, device/allwinner/T8100/device.mk)

PRODUCT_DEVICE := T8100
PRODUCT_NAME := omni_T8100
PRODUCT_BRAND := S
PRODUCT_MODEL := T8100
PRODUCT_MANUFACTURER := allwinner

PRODUCT_GMS_CLIENTID_BASE := android-bnd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ceres_b3-user 10 QP1A.191105.004 eng.bnd_xn.20201015.171902 release-keys"

BUILD_FINGERPRINT := S/T8100/T8100:10/QP1A.191105.004/bnd_xnq07211222:user/release-keys