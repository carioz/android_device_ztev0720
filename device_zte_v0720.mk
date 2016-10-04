$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Dalvik/HWUI
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# call the proprietary setup
$(call inherit-product, vendor/zte/zte_v0720/zte_v0720-vendor-blobs.mk)

LOCAL_PATH :=$(call my-dir)


# Permissions
PRODUCT_COPY_FILES += \
    device/zte/zte_v0720/configs/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    device/zte/zte_v0720/configs/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml


PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.manual_sensor.xml:system/etc/permissions/android.hardware.camera.manual_sensor.xml


# Audio	
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml

# Codecs
PRODUCT_COPY_FILES += \
    device/zte/zte_v0720/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/zte/zte_v0720/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/zte/zte_v0720/configs/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml \
    device/zte/zte_v0720/configs/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
    device/zte/zte_v0720/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml
	
PRODUCT_TAGS += dalvik.gc.type-precise

# RAMDISK
PRODUCT_COPY_FILES += \
    device/zte/zte_v0720/ramdisk/enableswap.sh:root/enableswap.sh \
    device/zte/zte_v0720/ramdisk/factory_init.project.rc:root/factory_init.project.rc \
    device/zte/zte_v0720/ramdisk/factory_init.rc:root/factory_init.rc \
    device/zte/zte_v0720/ramdisk/fstab.mt6735:root/fstab.mt6735 \
    device/zte/zte_v0720/ramdisk/init.rc:root/init.rc \
    device/zte/zte_v0720/ramdisk/init.aee.rc:root/init.aee.rc \
    device/zte/zte_v0720/ramdisk/init.modem.rc:root/init.modem.rc  \
    device/zte/zte_v0720/ramdisk/init.mt6735.rc:root/init.mt6735.rc \
    device/zte/zte_v0720/ramdisk/init.mt6735.usb.rc:root/init.mt6735.usb.rc  \
    device/zte/zte_v0720/ramdisk/init.project.rc:root/init.project.rc \
    device/zte/zte_v0720/ramdisk/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
    device/zte/zte_v0720/ramdisk/init.xlog.rc:root/init.xlog.rc \
    device/zte/zte_v0720/ramdisk/meta_init.modem.rc:root/meta_init.modem.rc  \
    device/zte/zte_v0720/ramdisk/meta_init.project.rc:root/meta_init.project.rc \
    device/zte/zte_v0720/ramdisk/meta_init.rc:root/meta_init.rc \
    device/zte/zte_v0720/ramdisk/ueventd.mt6735.rc:root/ueventd.mt6735.rc \
    device/zte/zte_v0720/ramdisk/sbin/busybox:root/sbin/busybox 

DEVICE_PACKAGE_OVERLAYS := device/zte/zte_v0720/overlay

# audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio_policy.default \
    libaudio-resampler \
    libtinymix \
    libtinyxml \
    libtinyalsa \
    libtinycompress

PRODUCT_COPY_FILES += \
    device/zte/zte_v0720/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/zte/zte_v0720/audio/audio_device.xml:system/etc/audio_device.xml \
    device/zte/zte_v0720/audio/audio_em.xml:system/etc/audio_em.xml

# Telecom
PRODUCT_COPY_FILES += \
    device/zte/zte_v0720/configs/apns-conf.xml:system/etc/apns-conf.xml \
    device/zte/zte_v0720/configs/ecc_list.xml:system/etc/ecc_list.xml \
    device/zte/zte_v0720/configs/spn-conf.xml:system/etc/spn-conf.xml

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    ro.telephony.ril_class=MediaTekRIL \
    ro.telephony.ril.config=fakeiccid

PRODUCT_PACKAGES += \
    su

PRODUCT_PACKAGES += \
    lib_driver_cmd_mt66xx    
    
 PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf
	
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

PRODUCT_PACKAGES += \
    charger \
    charger_res_images \
    libnl_2

PRODUCT_PACKAGES += \
    libgralloc_extra

# MTK's XLog needed for Engineer Mode
PRODUCT_PACKAGES += \
        libxlog

PRODUCT_PACKAGES += \
    YGPS \
    Gello
   
# Camera
PRODUCT_PACKAGES += \
    Snap

PRODUCT_COPY_FILES += \
    device/zte/zte_v0720/camera/camerasize.xml:system/etc/camerasize.xml

PRODUCT_PACKAGES += FMRadio \
	libfmjni
		
# RIL	
PRODUCT_PACKAGES += \
    epdg_wod \
    gsm0710muxd \
    gsm0710muxdmd2 \
    mtkrild \
    mtkrildmd2 \
    mtk-ril \
    mtk-rilmd2

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.mount.fs=EXT4 \
	ro.adb.secure=0 \
	ro.secure=0 \
	ro.allow.mock.location=0 \
	ro.debuggable=1 \
	dalvik.vm.dex2oat-Xms=64m \
	dalvik.vm.dex2oat-Xmx=512m \
	dalvik.vm.image-dex2oat-Xms=64m \
	dalvik.vm.image-dex2oat-Xmx=64m \
	ro.dalvik.vm.native.bridge=0 \
	persist.service.acm.enable=0 \
	ro.config.low_ram=false \
	camera.disable_zsl_mode=1

	
