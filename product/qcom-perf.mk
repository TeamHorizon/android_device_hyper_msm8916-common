# IRQ balance
ifeq ($(TARGET_BOARD_PLATFORM_VARIANT),msm8939)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf
endif

# Power HAL
PRODUCT_PACKAGES += \
    power.msm8916

ifeq ($(TARGET_BOARD_PLATFORM_VARIANT),msm8916)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.min_freq_0=400000
else
ifeq ($(TARGET_BOARD_PLATFORM_VARIANT),msm8939)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.min_freq_0=400000 \
    ro.min_freq_4=499000
endif
endif
