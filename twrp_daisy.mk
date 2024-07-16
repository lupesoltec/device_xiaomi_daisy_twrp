# Only the below variable(s) need to be changed!
#
# Define hardware platform
PRODUCT_PLATFORM := sdm450

# Release name
PRODUCT_RELEASE_NAME := daisy

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# A/B Updater
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    system

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script

# Boot control
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-impl.recovery \
    android.hardware.boot@1.0-service \
    bootctrl.$(TARGET_BOARD_PLATFORM) \
    bootctrl.$(TARGET_BOARD_PLATFORM).recovery
	
PRODUCT_PACKAGES_DEBUG += \
    bootctl

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client	

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := daisy
PRODUCT_NAME := twrp_daisy
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A1
PRODUCT_MANUFACTURER := Xiaomi

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/daisy/device.mk)
