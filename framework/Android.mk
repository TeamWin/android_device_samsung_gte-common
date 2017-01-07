LOCAL_PATH:= $(call my-dir)
ifneq ($(filter gtelwifiue, $(TARGET_DEVICE)),)
########################
##com.google.widevine.software.drm
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := com.google.widevine.software.drm
LOCAL_MODULE_SUFFIX := .jar
LOCAL_SRC_FILES    := $(LOCAL_MODULE).jar
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
include $(BUILD_PREBUILT)

endif
########################
