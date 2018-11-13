$(call inherit-product, device/sharp/pa31/full_pa31.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_pa31
BOARD_VENDOR := SG
TARGET_VENDOR := SG
PRODUCT_DEVICE := pa31

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="SG503SH" \
    PRODUCT_NAME="SG503SH" \
    BUILD_FINGERPRINT="DOCOMO/DM-01H/DM-01H:5.1.1/F827G/00.00.00:eng/test-keys" \
    PRIVATE_BUILD_DESC="DM-01H-eng 5.1.1 F827G 00.00.00 test-keys"