#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/olive

# Inherit from source
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit common LineageOS stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

# Inherit device stuff
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Device identifiers.
PRODUCT_DEVICE := olive
PRODUCT_NAME := nad_olive
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi 8
PRODUCT_MANUFACTURER := xiaomi
TARGET_VENDOR := xiaomi
BOARD_VENDOR := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/olive/olive:10/QKQ1.191014.001/V11.0.1.0.QCNCNXM:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="olive-user 10 QKQ1.191014.001 V11.0.1.0.QCNCNXM release-keys"

# Additional Stuff

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Official
#ANCIENT_OFFICIAL=true

# OTA
FORCE_OTA=true

# Vanilla
#ANCIENT_NOGAPPS=true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Gapps
TARGET_GAPPS_ARCH := arm64
