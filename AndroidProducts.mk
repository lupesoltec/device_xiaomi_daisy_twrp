#
# Copyright (C) 2021 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

#Declare Soong Namespaces

PRODUCT_SOONG_NAMESPACES += $(LOCAL_DIR)/init

PRODUCT_MAKEFILES := \
	$(LOCAL_DIR)/twrp_daisy.mk
