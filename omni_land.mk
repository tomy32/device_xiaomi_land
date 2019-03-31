#
# Copyright (C) 2016 The CyanogenMod Project
#               2017 The LineageOS Project
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

DEVICE_PATH := device/xiaomi/land

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit some common Omni stuff
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/omni/overlay/CarrierConfig
#DEVICE_PACKAGE_OVERLAYS += device/xiaomi/land/overlay

#Boot Animation Omani Stuff.
TARGET_BOOTANIMATION_SIZE := 720p

# Inherit from land device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := land
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := omni_land

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := land

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="land-user 6.0.1 MMB29M V9.6.1.0.MALMIFD release-keys"

# Set BUILD_FINGERPRINT variable
BUILD_FINGERPRINT := "Xiaomi/land/land:6.0.1/MMB29M/V9.6.1.0.MALMIFD:user/release-keys"


