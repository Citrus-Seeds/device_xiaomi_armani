

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/armani/device.mk)

# Inherit Citrus product configuration
$(call inherit-product, vendor/citrus/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product-if-exists, vendor/xiaomi/armani/armani-vendor.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := citrus_armani
PRODUCT_DEVICE := armani
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := HM 1S
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=armani

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

CITRUS_RELEASE := true

PRODUCT_PROPERTY_OVERRIDES += ro.caf.branch=LA.UM.5.6.r1-02500-89xx.0

# Citrus-CAF Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
         DEVICE_MAINTAINERS="Vedant Kamlaskar"
