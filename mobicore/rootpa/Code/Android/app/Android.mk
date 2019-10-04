#
# build RootPA.apk
#

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_STATIC_JAVA_LIBRARIES := rootpa_interface
LOCAL_JNI_SHARED_LIBRARIES := libcommonpawrapper

LOCAL_PACKAGE_NAME := RootPA
LOCAL_MODULE_TAGS := debug eng optional
LOCAL_CERTIFICATE := platform

LOCAL_PROGUARD_FLAGS := -include $(LOCAL_PATH)/proguard-project.txt

APP_PIE := true
LOCAL_32_BIT_ONLY := true
LOCAL_DEX_PREOPT := false

LOCAL_SDK_VERSION := current
LOCAL_MIN_SDK_VERSION := 21


include $(BUILD_PACKAGE)

include $(CLEAR_VARS)
