# Inherit common CM stuff
$(call inherit-product, vendor/cm/config/common_full.mk)

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Orion.ogg \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/Dialer.apk:system/priv-app/Dialer.apk \
    vendor/cm/prebuilt/Camera2.apk:system/app/Camera2.apk 

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/cm/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip
endif

$(call inherit-product, vendor/cm/config/telephony.mk)
