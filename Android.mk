LOCAL_PATH :=$(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES :=			\
src/common_bridge.c \
src/common_capability.c \
src/common_device_name.c \
src/common_init.c \
src/common_interface.c \
src/common_iterator.c \
src/common_map.c \
src/linux_devmem.c \
src/linux_sysfs.c \
src/common_io.c \
src/common_vgaarb.c \
src/x86_pci.c

LOCAL_CFLAGS := -Dlinux=1
LOCAL_C_INCLUDES +=  $(LOCAL_PATH)/include

LOCAL_MODULE := libpciaccess
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
