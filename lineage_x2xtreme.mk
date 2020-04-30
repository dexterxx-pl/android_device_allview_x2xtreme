# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Vendor blobs
$(call inherit-product-if-exists, vendor/allview/x2xtreme/x2xtreme-vendor.mk)

# Device
$(call inherit-product, device/allview/x2xtreme/device.mk)

# Device display
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x2xtreme
PRODUCT_NAME := lineage_x2xtreme
PRODUCT_BRAND := Allview
PRODUCT_MODEL := X2 Soul Xtreme
PRODUCT_MANUFACTURER := Allview
PRODUCT_RELEASE_NAME := x2xtreme
PRODUCT_RESTRICT_VENDOR_FILES := false
