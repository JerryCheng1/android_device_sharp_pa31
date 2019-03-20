#
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
#

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/sharp/pa31/pa31-vendor.mk)

DEVICE_PATH = device/sharp/pa31

# Input
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/idc/shtps_key.idc:system/usr/idc/shtps_key.idc \
    $(DEVICE_PATH)/idc/shtps_rmi.idc:system/usr/idc/shtps_rmi.idc

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/keylayout/shtps_key.kl:system/usr/keylayout/shtps_key.kl \
    $(DEVICE_PATH)/keylayout/shtps_rmi.kl:system/usr/keylayout/shtps_rmi.kl

# common msm8992
$(call inherit-product, device/sharp/msm8992-common/msm8992.mk)
