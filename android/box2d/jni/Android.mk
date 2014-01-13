LOCAL_PATH:= $(call my-dir)

LS_CPP=$(subst $(1)/,,$(wildcard $(1)/$(2)/*.cpp))
BOX2D_CPP:= $(call LS_CPP,$(LOCAL_PATH), ../../../box2d-2.2.1/Box2D/Collision) \
            $(call LS_CPP,$(LOCAL_PATH), ../../../box2d-2.2.1/Box2D/Collision/Shapes) \
            $(call LS_CPP,$(LOCAL_PATH), ../../../box2d-2.2.1/Box2D/Common) \
            $(call LS_CPP,$(LOCAL_PATH), ../../../box2d-2.2.1/Box2D/Dynamics) \
            $(call LS_CPP,$(LOCAL_PATH), ../../../box2d-2.2.1/Box2D/Dynamics/Contacts) \
            $(call LS_CPP,$(LOCAL_PATH), ../../../box2d-2.2.1/Box2D/Dynamics/Joints) \
            $(call LS_CPP,$(LOCAL_PATH), ../../../box2d-2.2.1/Box2D/Rope)

include $(CLEAR_VARS)

LOCAL_MODULE:= box2d
LOCAL_SRC_FILES:= $(BOX2D_CPP)
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../../box2d-2.2.1
LOCAL_C_INCLUDES := $(LOCAL_EXPORT_C_INCLUDES)

include $(BUILD_SHARED_LIBRARY)
