#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common Resurrection stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Inherit GApps
$(call inherit-product, vendor/gapps/gapps.mk)
TARGET_GAPPS_ARCH := arm64
GAPPS := true
TARGET_INCLUDE_STOCK_ARCORE := true
DEVICE_PACKAGE_OVERLAYS += \
	$(LOCAL_PATH)/overlay-gms

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# RR Stuffs
TARGET_FACE_UNLOCK_SUPPORTED := true
RR_BUILDTYPE := Official

# RR Wallpapers
BUILD_RR_WALLPAPERS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rr_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="violet-user 9 PKQ1.181203.001 V11.0.8.0.PFHINXM release-keys" \
    PRODUCT_NAME="violet"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
