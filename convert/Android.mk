LOCAL_PATH := $(call my-dir)

###########################
# convert static lib target

include $(CLEAR_VARS)

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/

LOCAL_MODULE := libaudio_comms_convert
LOCAL_MODULE_OWNER := intel

include $(BUILD_STATIC_LIBRARY)

#########################
# convert static lib host

include $(CLEAR_VARS)

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/

LOCAL_MODULE := libaudio_comms_convert_host
LOCAL_MODULE_OWNER := intel

LOCAL_CFLAGS = -O0 --coverage

LOCAL_LDFLAGS = --coverage

LOCAL_MODULE_TAGS := tests

include $(BUILD_HOST_STATIC_LIBRARY)

##############################
# build hack for getting headers (target version)

include $(CLEAR_VARS)

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)

LOCAL_MODULE := libaudio_comms_convert_includes
LOCAL_MODULE_OWNER := intel

LOCAL_MODULE_TAGS := tests

include $(BUILD_STATIC_LIBRARY)

##############################
# build hack for getting headers (host version)

include $(CLEAR_VARS)

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)

LOCAL_MODULE := libaudio_comms_convert_includes_host
LOCAL_MODULE_OWNER := intel

LOCAL_MODULE_TAGS := tests

include $(BUILD_HOST_STATIC_LIBRARY)

