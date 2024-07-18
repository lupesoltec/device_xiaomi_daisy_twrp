# Only the below variable(s) need to be changed!
#

# Release name
PRODUCT_RELEASE_NAME := daisy

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := daisy
PRODUCT_NAME := twrp_daisy
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A2 Lite
PRODUCT_MANUFACTURER := Xiaomi

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/daisy/device.mk)
