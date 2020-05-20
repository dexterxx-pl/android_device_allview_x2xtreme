LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE        := factory_init.project.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/factory_init.project.rc
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := factory_init.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/factory_init.rc
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := fstab.charger
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/fstab.charger
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := fstab.mt6795
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/fstab.mt6795
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := init.aee.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/init.aee.rc
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := init.modem.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/init.modem.rc
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := init.mt6795.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/init.mt6795.rc
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := init.mt6795.usb.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/init.mt6795.usb.rc
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := init.performance.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/init.performance.rc
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := init.project.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/init.project.rc
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := init.recovery.mt6795.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/init.recovery.mt6795.rc
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := init.ssd.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/init.ssd.rc
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := init.xlog.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/init.xlog.rc
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := meta_init.modem.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/meta_init.modem.rc
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := meta_init.project.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/meta_init.project.rc
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := meta_init.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/meta_init.rc
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := recovery.fstab
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/recovery.fstab
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := ueventd.mt6795.rc
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_SRC_FILES     := etc/ueventd.mt6795.rc
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

