# add for fpsensor fingerprint
# 64 bit
PRODUCT_PACKAGES += \
    fpsensor.elf

# add selinux
BOARD_SEPOLICY_DIRS += vendor/sprd/partner/chipone/sepolicy

PRODUCT_COPY_FILES += \
        vendor/sprd/partner/chipone/roc1_hs/ca_lib/lib64/fpsensor_fingerprint.default.so:vendor/lib64/hw/fpsensor_fingerprint.default.so  \
        vendor/sprd/partner/chipone/roc1_hs/factory_lib/lib64/libfp_ext_svc2.so:vendor/lib64/libfp_ext_svc2.so \
        vendor/sprd/partner/chipone/roc1_hs/factory_lib/lib64/libchiponeic_fingerprint_factory.so:vendor/lib64/libfactorylib.so \
        vendor/sprd/partner/chipone/roc1_hs/factory_lib/lib64/vendor.fpsensor.hardware.fpsensorhidlsvc@2.0.so:vendor/lib64/vendor.fpsensor.hardware.fpsensorhidlsvc@2.0.so

# 32 bit
PRODUCT_COPY_FILES += \
       vendor/sprd/partner/chipone/roc1_hs/ca_lib/lib/fpsensor_fingerprint.default.so:vendor/lib/hw/fpsensor_fingerprint.default.so \
       vendor/sprd/partner/chipone/roc1_hs/factory_lib/lib/libfp_ext_svc2.so:vendor/lib/libfp_ext_svc2.so \
       vendor/sprd/partner/chipone/roc1_hs/factory_lib/lib/libchiponeic_fingerprint_factory.so:vendor/lib/libfactorylib.so \
       vendor/sprd/partner/chipone/roc1_hs/factory_lib/lib/vendor.fpsensor.hardware.fpsensorhidlsvc@2.0.so:vendor/lib/vendor.fpsensor.hardware.fpsensorhidlsvc@2.0.so

#support dynamic TA
PRODUCT_COPY_FILES += vendor/sprd/partner/chipone/roc1_hs/ta_lib/fpsensor.elf:/vendor/firmware/fpsensor.elf

PRODUCT_COPY_FILES += \
       vendor/sprd/partner/chipone/uinput-fpsensor.kl:system/usr/keylayout/uinput-fpsensor.kl \
       vendor/sprd/partner/chipone/uinput-fpsensor.idc:system/usr/idc/uinput-fpsensor.idc \
       vendor/sprd/partner/chipone/init.chipone.rc:vendor/etc/init/init.chipone.rc

#fingerprint feature
PRODUCT_COPY_FILES +=frameworks/native/data/etc/android.hardware.fingerprint.xml:vendor/etc/permissions/android.hardware.fingerprint.xml



# add manifest for factory
#if failed, add the fpsensor_factory_manifest.xml to the manifest.xml or manifest_main.xml(device/.../.../manifest.xml)
#DEVICE_MANIFEST_FILE += vendor/sprd/partner/chipone/fpsensor_factory_manifest.xml

