# Copyright 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	offload_visualizer.c

LOCAL_CFLAGS+= -O2 -fvisibility=hidden

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	liblog \
	libdl \
	libtinyalsa

LOCAL_CFLAGS += \
    -Wall \
    -Werror \
    -Wno-unused-variable \

LOCAL_HEADER_LIBRARIES := libhardware_headers

LOCAL_MODULE_RELATIVE_PATH := soundfx
LOCAL_MODULE:= libqcomvisualizer
LOCAL_LICENSE_KINDS:= SPDX-license-identifier-Apache-2.0
LOCAL_LICENSE_CONDITIONS:= notice
LOCAL_NOTICE_FILE:= $(LOCAL_PATH)/NOTICE
LOCAL_MODULE_OWNER := qcom
LOCAL_PROPRIETARY_MODULE := true

LOCAL_C_INCLUDES := \
	external/tinyalsa/include \
	$(call include-path-for, audio-effects)

LOCAL_HEADER_LIBRARIES += libsystem_headers
include $(BUILD_SHARED_LIBRARY)
