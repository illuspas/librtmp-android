LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE:= librtmp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

LOCAL_SRC_FILES :=  \
	src/amf.c		\
	src/hashswf.c   \
	src/log.c		\
	src/parseurl.c  \
	src/rtmp.c 		
	
LOCAL_CFLAGS := -Wall -O2 -DSYS=posix -DNO_CRYPTO


include $(BUILD_SHARED_LIBRARY)
