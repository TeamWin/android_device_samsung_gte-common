# Copyright (C) 2015 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/gt58-common/gt58-common-vendor.mk)

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gt58-common/overlay

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/acdb/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/General_cal.acdb:system/etc/General_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/Global_cal.acdb:system/etc/Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/Handset_cal.acdb:system/etc/Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/Headset_cal.acdb:system/etc/Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/Speaker_cal.acdb:system/etc/Speaker_cal.acdb \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/Tfa9895.cnt:system/etc/Tfa9895.cnt

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# This is a tablet.
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_AAPT_CONFIG := xlarge mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Common msm8916-common
$(call inherit-product, device/samsung/msm8916-common/msm8916.mk)

# Dalvik heap config
$(call inherit-product, frameworks/native/build/tablet-7in-xhdpi-2048-dalvik-heap.mk)
