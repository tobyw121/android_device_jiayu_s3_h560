LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),s3_h560)

include $(CLEAR_VARS)
LOCAL_MODULE := libhwm
LOCAL_SRC_FILES_64 := vendor/lib64/libhwm.so
LOCAL_SRC_FILES_32 := vendor/lib/libhwm.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE = libdpframework
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_OWNER = $VENDOR
LOCAL_MODULE_SUFFIX = .so
LOCAL_PROPRIETARY_MODULE = true
LOCAL_MULTILIB = 64
LOCAL_SRC_FILES_64 = vendor/lib64/libdpframework.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE = libdpframework
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_OWNER = mtk
LOCAL_MODULE_SUFFIX = .so
LOCAL_PROPRIETARY_MODULE = true
LOCAL_MULTILIB = 32
LOCAL_SRC_FILES_32 = vendor/lib/libdpframework.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libion_mtk
LOCAL_SRC_FILES_64 := lib64/libion_mtk.so
LOCAL_SRC_FILES_32 := lib/libion_mtk.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE = libstagefright_color_conversion
#LOCAL_MODULE_CLASS = STATIC_LIBRARIES
#LOCAL_MODULE_SUFFIX = .a
#LOCAL_UNINSTALLABLE_MODULE = true
#LOCAL_MULTILIB = 64
#LOCAL_SHARED_LIBRARIES_64 = libdpframework
#LOCAL_SRC_FILES_64 = libstagefright_color_conversion/libstagefright_color_conversion_64.a
#include $(BUILD_PREBUILT)
 
#include $(CLEAR_VARS)
#LOCAL_MODULE = libstagefright_color_conversion
#LOCAL_MODULE_CLASS = STATIC_LIBRARIES
#LOCAL_MODULE_SUFFIX = .a
#LOCAL_UNINSTALLABLE_MODULE = true
#LOCAL_MULTILIB = 32
#LOCAL_SHARED_LIBRARIES_32 = libdpframework
#LOCAL_SRC_FILES_32 = libstagefright_color_conversion/libstagefright_color_conversion_32.a
#include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE = libmtkcam_fwkutils
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX = .so
LOCAL_MULTILIB = 64
LOCAL_SRC_FILES_64 = vendor/lib64/libmtkcam_fwkutils.so
include $(BUILD_PREBUILT)
 
include $(CLEAR_VARS)
LOCAL_MODULE = libmtkcam_fwkutils
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX = .so
LOCAL_MULTILIB = 32
LOCAL_SRC_FILES_32 = vendor/lib/libmtkcam_fwkutils.so
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := libaudiocustparam
LOCAL_SRC_FILES_64 := vendor/lib64/libaudiocustparam.so
LOCAL_MULTILIB := 64
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libaudiocustparam
LOCAL_SRC_FILES_32 := vendor/lib/libaudiocustparam.so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

endif
