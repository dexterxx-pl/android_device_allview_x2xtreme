$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Language
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Dalvik heap configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# The gps config appropriate for this device 
$(call inherit-product, device/common/gps/gps_us_supl.mk) 

# Vendor
$(call inherit-product, vendor/allview/x2xtreme/x2xtreme-vendor.mk)


# Overlay Folder
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Folder path
LOCAL_PATH := device/allview/x2xtreme

# Screen density
PRODUCT_AAPT_CONFIG := normal xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := x2xtreme,BLU_PURE_XL

# Power
PRODUCT_PACKAGES += \
    power.default \
    power.mt6795

# Camera
PRODUCT_PACKAGES += \
    Snap 

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Torch
PRODUCT_PACKAGES += \
    Torch

# Other
PRODUCT_PACKAGES += \
    librs_jni \
    libnl_2 \
    com.android.future.usb.accessory

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    ro.zygote=zygote64_32 \
    dalvik.vm.dex2oat-Xms=64m \
    dalvik.vm.dex2oat-Xmx=64m \
    dalvik.vm.image-dex2oat-Xms=64m \
    dalvik.vm.image-dex2oat-Xmx=512m \
    ro.dalvik.vm.native.bridge=0 \
    persist.sys.usb.config=mtp \
    ro.mount.fs=EXT4 \
    camera.disable_zsl_mode=1 \
    persist.sys.timezone=Europe/Warsaw

# PRODUCT_PROPERTY_OVERRIDES
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    ro.telephony.ril.config=fakeiccid  \
    persist.call_recording.enabled=true \
    persist.call_recording.src=1  \
    ro.sys.fw.bg_apps_limits=5

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio_policy.default \
    libaudio-resampler \
    libaudiopolicymanagerdefault \
    libtinyalsa \
    libtinycompress \
    libtinyxml \
    audio_policy.stub \
    libtinymix \
    libfs_mgr

# Wifi
PRODUCT_PACKAGES += \
    lib_driver_cmd_mt66xx \
    libwpa_client \
    hostapd \
    wpa_supplicant

# Media	
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml


# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fibmap.f2fs \
    fsck.f2fs \
    mkfs.f2fs \
    make_ext4fs \
    resize2fs \
    setup_fs \
    ext4_resize \
    superumount 

PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Ramdisk
PRODUCT_PACKAGES += \
    factory_init.project.rc \
    factory_init.rc \
    fstab.charger \
    fstab.mt6795 \
    init.aee.rc \
    init.modem.rc \
    init.mt6795.rc \
    init.mt6795.usb.rc \
    init.project.rc \
    init.ssd.rc \
    init.xlog.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    init.performance.rc \
    ueventd.mt6795.rc \
    init.recovery.mt6795.rc

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/codec/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/configs/codec/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml \
    $(LOCAL_PATH)/configs/codec/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/codec/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/codec/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/codec/media_codecs.xml:system/etc/permissions/media_codecs.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_device.xml:system/etc/audio_device.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/audio_em.xml:system/etc/audio_em.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_param/AudioParamOptions.xml:system/etc/audio_param/AudioParamOptions.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.manual_postprocessing.xml:system/etc/permissions/android.hardware.camera.manual_postprocessing.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.manual_sensor.xml:system/etc/permissions/android.hardware.camera.manual_sensor.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bluetooth/auto_pair_blacklist.conf:system/etc/bluetooth/auto_pair_blacklist.conf \
    $(LOCAL_PATH)/configs/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf \
    $(LOCAL_PATH)/configs/bluetooth/btconfig.xml:system/etc/bluetooth/btconfig.xml \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \
    $(LOCAL_PATH)/configs/keylayout/ACCDET.kl:system/usr/keylayout/ACCDET.kl\
    $(LOCAL_PATH)/configs/keylayout/mtk-tpd.kl:system/usr/keylayout/mtk-tpd.kl\
    $(LOCAL_PATH)/configs/keylayout/synaptics_dsx_i2c.kl:system/usr/keylayout/synaptics_dsx_i2c.kl\
    $(LOCAL_PATH)/configs/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ril_conf/apns-conf.xml:system/etc/apns-conf.xml \
    $(LOCAL_PATH)/configs/ril_conf/ecc_list.xml:system/etc/ecc_list.xml \
    $(LOCAL_PATH)/configs/ril_conf/spn-conf.xml:system/etc/spn-conf.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/.tp/thermal.conf:system/etc/.tp/thermal.conf \
    $(LOCAL_PATH)/configs/.tp/thermal.off.conf:system/etc/.tp/thermal.off.conf \
    $(LOCAL_PATH)/configs/.tp/.ht120.mtc:system/etc/.tp/.ht120.mtc \
    $(LOCAL_PATH)/configs/.tp/.thermal_policy_00:system/etc/.tp/.thermal_policy_00 \
    $(LOCAL_PATH)/configs/.tp/.thermal_policy_01:system/etc/.tp/.thermal_policy_01

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/dhcpcd/dhcpcd-run-hooks:system/etc/dhcpcd/dhcpcd-run-hooks \
    $(LOCAL_PATH)/configs/dhcpcd/dhcpcd-hooks/20-dns.conf:system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf \
    $(LOCAL_PATH)/configs/dhcpcd/dhcpcd-hooks/95-configured:system/etc/dhcpcd/dhcpcd-hooks/95-configured \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6c.conf:system/etc/wide-dhcpv6/dhcp6c.conf \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6c.script:system/etc/wide-dhcpv6/dhcp6c.script \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6cctlkey:system/etc/wide-dhcpv6/dhcp6cctlkey \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6cDNS.conf:system/etc/wide-dhcpv6/dhcp6cDNS.conf \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6s.conf:system/etc/wide-dhcpv6/dhcp6s.conf 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/radvd/radvd.conf:system/etc/radvd/radvd.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/slp_conf:system/etc/slp_conf \
    $(LOCAL_PATH)/configs/custom.conf:system/etc/custom.conf \
    $(LOCAL_PATH)/configs/mtklog-config.prop:system/etc/mtklog-config.prop \
    $(LOCAL_PATH)/configs/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg \
    $(LOCAL_PATH)/configs/perfservboosttbl.txt:system/etc/perfservboosttbl.txt \
    $(LOCAL_PATH)/configs/perfservscntbl.txt:system/etc/perfservscntbl.txt

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml
    
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml
    

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/permissions/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml\
    $(LOCAL_PATH)/configs/media/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/mtk_clear_motion.cfg:system/etc/mtk_clear_motion.cfg

PRODUCT_PACKAGES += \
   libmtk_symbols \
   libgralloc_extra \
   libstlport \
   libgui_ext \
   libui_ext

# MTK Helpers 
PRODUCT_PACKAGES += \
   libccci_util   \
   libwvmsym

# Sensor Calibration
PRODUCT_PACKAGES += libem_sensor_jni

# Configure jemalloc for low memory
MALLOC_SVELTE := true

# Radio dependencies
PRODUCT_PACKAGES += \
    muxreport \
    terservice

# Display
PRODUCT_PACKAGES += \
    libion

# GPS
PRODUCT_PACKAGES += \
    gps.mt6795 \
    libcurl \
    YGPS


