#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from salami device
$(call inherit-product, device/oneplus/salami/device.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1440
TARGET_BUILD_APERTURE_CAMERA := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true
TARGET_SUPPORTS_TOUCHGESTURES := true

#Experimental Shit
$(call inherit-product-if-exists, vendor/pixel-additional/config.mk)
TARGET_SUPPORTS_PREBUILT_UPDATABLE_APEX := false
TARGET_FLATTEN_APEX := false
TARGET_INCLUDE_CAMERA_GO := true
TARGET_SUPPORTS_LILY_EXPERIENCE := true
TARGET_NOT_SUPPORTS_GOOGLE_BATTERY := true
TARGET_GBOARD_KEY_HEIGHT := 1.1

PRODUCT_VENDOR_PROPERTIES += \
    persist.vendor.camera.privapp.list=com.google.android.apps.cameralite \
    persist.camera.privapp.list=com.google.android.apps.cameralite
    
#Even More Experimental Shit
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_INCLUDE_PIXEL_IMS := true
TARGET_INCLUDE_PIXEL_EUICC := true

WITH_GAPPS := true

PRODUCT_BOARD_PLATFORM := sm8550

PRODUCT_NAME := evolution_salami
PRODUCT_DEVICE := salami
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2449

PRODUCT_SYSTEM_NAME := $(PRODUCT_MODEL)
PRODUCT_SYSTEM_DEVICE := OP594DL1

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="CPH2449-user 13 TP1A.220905.001 T.R4T3.1337caf-1-88d5b release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/CPH2449/OP594DL1:13/TP1A.220905.001/T.R4T3.1337caf-1-88d5b:user/release-keys
