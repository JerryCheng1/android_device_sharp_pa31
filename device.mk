# Release name
PRODUCT_RELEASE_NAME := LA29

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)


# ADB access into recovery
ADDITIONAL_DEFAULT_PROPERTIES += \
	  ro.secure=0 \
	  ro.adb.secure=0 \
		ro.debuggable=1

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=adb

# cm not support prebuilt kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel

PRODUCT_COPY_FILES += \
	   $(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
		 $(LOCAL_PATH)/recovery/root/init.recovery.usb.rc:root/init.recovery.usb.rc \
		 $(LOCAL_PATH)/recovery/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
		 $(LOCAL_PATH)/recovery/root/ueventd.qcom.rc:root/ueventd.qcom.rc
