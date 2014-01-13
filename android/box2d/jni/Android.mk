LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE:= box2d

# files
SOURCE:= ../../../box2d-2.2.1/Box2D
FILES_COLLISION         := $(wildcard $(LOCAL_PATH)/$(SOURCE)/Collision/*.cpp)
FILES_COLLISION_SHAPES  := $(wildcard $(LOCAL_PATH)/$(SOURCE)/Collision/Shapes/*.cpp)
FILES_COMMON            := $(wildcard $(LOCAL_PATH)/$(SOURCE)/Common/*.cpp)
FILES_DYNAMICS          := $(wildcard $(LOCAL_PATH)/$(SOURCE)/Dynamics/*.cpp)
FILES_DYNAMICS_CONTACTS := $(wildcard $(LOCAL_PATH)/$(SOURCE)/Dynamics/Contacts/*.cpp)
FILES_DYNAMICS_JOINTS   := $(wildcard $(LOCAL_PATH)/$(SOURCE)/Dynamics/Joints/*.cpp)
FILES_ROPE              := $(wildcard $(LOCAL_PATH)/$(SOURCE)/Rope/*.cpp)

# add files to sources
LOCAL_SRC_FILES += $(FILES_COLLISION:$(LOCAL_PATH)/%=%)
LOCAL_SRC_FILES += $(FILES_COLLISION_SHAPES:$(LOCAL_PATH)/%=%)
LOCAL_SRC_FILES += $(FILES_COMMON:$(LOCAL_PATH)/%=%)
LOCAL_SRC_FILES += $(FILES_DYNAMICS:$(LOCAL_PATH)/%=%)
LOCAL_SRC_FILES += $(FILES_DYNAMICS_CONTACTS:$(LOCAL_PATH)/%=%)
LOCAL_SRC_FILES += $(FILES_DYNAMICS_JOINTS:$(LOCAL_PATH)/%=%)
LOCAL_SRC_FILES += $(FILES_ROPE:$(LOCAL_PATH)/%=%)

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../../box2d-2.2.1
LOCAL_C_INCLUDES := $(LOCAL_EXPORT_C_INCLUDES)

include $(BUILD_SHARED_LIBRARY)
