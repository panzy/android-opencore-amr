LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libpv_amr_nb_common_lib
LOCAL_SRC_FILES := $(PV_TOP)/codecs_v2/audio/gsm_amr/amr_nb/common/obj/local/$(TARGET_ARCH_ABI)/libpv_amr_nb_common_lib.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libpvdecoder_gsmamr
LOCAL_SRC_FILES := $(PV_TOP)/codecs_v2/audio/gsm_amr/amr_nb/dec/obj/local/$(TARGET_ARCH_ABI)/libpvdecoder_gsmamr.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libpvencoder_gsmamr
LOCAL_SRC_FILES := $(PV_TOP)/codecs_v2/audio/gsm_amr/amr_nb/enc/obj/local/$(TARGET_ARCH_ABI)/libpvencoder_gsmamr.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	wrapper.cpp \
	java_interface_wrap.cpp


LOCAL_MODULE := libamrnb

LOCAL_CFLAGS :=   $(PV_CFLAGS)

LOCAL_ARM_MODE := arm

LOCAL_STATIC_LIBRARIES := libpvdecoder_gsmamr libpvencoder_gsmamr libpv_amr_nb_common_lib 

LOCAL_SHARED_LIBRARIES := 

LOCAL_C_INCLUDES := \
	$(PV_TOP)/codecs_v2/audio/gsm_amr/common/dec/include \
 	$(PV_TOP)/codecs_v2/audio/gsm_amr/amr_nb/common/include \
	$(PV_TOP)/codecs_v2/audio/gsm_amr/amr_nb/dec/src \
 	$(PV_TOP)/codecs_v2/audio/gsm_amr/amr_nb/dec/include \
 	$(PV_TOP)/codecs_v2/audio/gsm_amr/amr_nb/oscl/config/android \
 	$(PV_TOP)/codecs_v2/audio/gsm_amr/amr_nb/oscl/config/shared \
 	$(PV_TOP)/codecs_v2/audio/gsm_amr/amr_nb/oscl/osclbase/src \
 	$(PV_TOP)/codecs_v2/audio/gsm_amr/amr_nb/enc/include \
	$(PV_TOP)/codecs_v2/audio/gsm_amr/amr_nb/enc/src \
 	$(PV_INCLUDES)

LOCAL_COPY_HEADERS_TO := $(PV_COPY_HEADERS_TO)

LOCAL_COPY_HEADERS := \
	include/decoder_gsm_amr.h \
 	include/pvamrnbdecoder_api.h

include $(BUILD_SHARED_LIBRARY)

