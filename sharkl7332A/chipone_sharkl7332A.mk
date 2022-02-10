# add chipone bag for 203t by qkd 20200330
# 1 203t will support chipone 7332A and sunwave in furture 20200330
BOARD_SEPOLICY_DIRS += vendor/sprd/partner/chipone/sharkl7332A/sepolicy


PRODUCT_COPY_FILES += \
    vendor/sprd/partner/chipone/sharkl7332A/afs64N/lib64/hw/cofingerprint.default.so:vendor/lib64/hw/cofingerprint.default.so \
    vendor/sprd/partner/chipone/sharkl7332A/afs64N/TA/signed/fpsensor.elf:/vendor/firmware/fpsensor.elf \
    vendor/sprd/partner/chipone/sharkl7332A/uinput-fpsensor.kl:system/usr/keylayout/uinput-fpsensor.kl \
    vendor/sprd/partner/chipone/sharkl7332A/uinput-fpsensor.idc:system/usr/idc/uinput-fpsensor.idc \
    vendor/sprd/partner/chipone/init.chipone.rc:vendor/etc/init/init.chipone.rc \
    vendor/sprd/partner/chipone/sharkl7332A/chipone_fp_config.ini:vendor/etc/chipone_fp_config.ini


#PRODUCT_PACKAGES += android.hardware.biometrics.fingerprint@2.1-service
#PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.fingerprint.xml:vendor/etc/permissions/android.hardware.fingerprint.xml

#DEVICE_MANIFEST_FILE += vendor/sprd/partner/chipone/sharkl7332A/manifest_fingerprint_chipone.xml

