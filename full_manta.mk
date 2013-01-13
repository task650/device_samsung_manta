# Copyright (C) 2011 The Android Open Source Project
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

#
# This file is the build configuration for a full Android
# build for manta hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and manta, hence its name.
#

# Extra Apps and files
PRODUCT_COPY_FILES += \
    vendor/samsung/manta/Alert-SonarMerge.mp3:system/media/audio/notifications/Alert-SonarMerge.mp3 \
    vendor/samsung/manta/CyanPing.ogg:system/media/audio/notifications/CyanPing.ogg \
    vendor/samsung/manta/apple_smsreceived.ogg:system/media/audio/notifications/apple_smsreceived.ogg \
    vendor/samsung/manta/IphoneCellSoundMerge.mp3:system/media/audio/ringtones/IphoneCellSoundMerge.mp3

# Copy Animation Files
PRODUCT_COPY_FILES += \
    vendor/samsung/manta/keyboard-anim/Bouncey.zip:system/addon.d/keyboard-anim/Bouncey.zip \
    vendor/samsung/manta/keyboard-anim/Chaos.zip:system/addon.d/keyboard-anim/Chaos.zip \
    vendor/samsung/manta/keyboard-anim/ChaosRevenge.zip:system/addon.d/keyboard-anim/ChaosRevenge.zip \
    vendor/samsung/manta/keyboard-anim/Eternity.zip:system/addon.d/keyboard-anim/Eternity.zip \
    vendor/samsung/manta/keyboard-anim/Flip.zip:system/addon.d/keyboard-anim/Flip.zip \
    vendor/samsung/manta/keyboard-anim/Photon.zip:system/addon.d/keyboard-anim/Photon.zip \
    vendor/samsung/manta/keyboard-anim/Spinner.zip:system/addon.d/keyboard-anim/Spinner.zip \
    vendor/samsung/manta/keyboard-anim/Stock.zip:system/addon.d/keyboard-anim/Stock.zip \
    vendor/samsung/manta/keyboard-anim/TeamDerpTheme.zip:system/addon.d/keyboard-anim/TeamDerpTheme.zip \
    vendor/samsung/manta/keyboard-anim/ThePsynFlip.zip:system/addon.d/keyboard-anim/ThePsynFlip.zip \
    vendor/samsung/manta/keyboard-anim/ThePsynShift.zip:system/addon.d/keyboard-anim/ThePsynShift.zip \
    vendor/samsung/manta/keyboard-anim/TwistedRubik.zip:system/addon.d/keyboard-anim/TwistedRubik.zip \
    vendor/samsung/manta/keyboard-anim/Vortex.zip:system/addon.d/keyboard-anim/Vortex.zip \
    vendor/samsung/manta/window-anim/Bouncey.zip:system/addon.d/window-anim/Bouncey.zip \
    vendor/samsung/manta/window-anim/Chaos.zip:system/addon.d/window-anim/Chaos.zip \
    vendor/samsung/manta/window-anim/ChaosRevenge.zip:system/addon.d/window-anim/ChaosRevenge.zip \
    vendor/samsung/manta/window-anim/Eternity.zip:system/addon.d/window-anim/Eternity.zip \
    vendor/samsung/manta/window-anim/Flip.zip:system/addon.d/window-anim/Flip.zip \
    vendor/samsung/manta/window-anim/Photon.zip:system/addon.d/window-anim/Photon.zip \
    vendor/samsung/manta/window-anim/Stock.zip:system/addon.d/window-anim/Stock.zip \
    vendor/samsung/manta/window-anim/TeamDerpTheme.zip:system/addon.d/window-anim/TeamDerpTheme.zip \
    vendor/samsung/manta/window-anim/ThePsynFlip.zip:system/addon.d/window-anim/ThePsynFlip.zip \
    vendor/samsung/manta/window-anim/ThePsynShift.zip:system/addon.d/window-anim/ThePsynShift.zip \
    vendor/samsung/manta/window-anim/TwistedRubik.zip:system/addon.d/window-anim/TwistedRubik.zip \
    vendor/samsung/manta/window-anim/Vortex.zip:system/addon.d/window-anim/Vortex.zip \
    vendor/samsung/manta/window-anim/MIUI.zip:system/addon.d/window-anim/MIUI.zip \
    vendor/samsung/manta/framework-flash.zip:system/addon.d/framework-flash.zip \
    vendor/samsung/manta/com.aokp.animation.manager.apk:system/app/com.aokp.animation.manager.apk \
    vendor/samsung/manta/com.aokp.ota.apk:system/app/com.aokp.ota.apk

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        MagicSmokeWallpapers \
        VisualizationWallpapers \
        librs_jni

PRODUCT_PROPERTY_OVERRIDES := \
        net.dns1=8.8.8.8 \
        net.dns2=8.8.4.4

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/samsung/manta/device.mk)

PRODUCT_NAME := full_manta
PRODUCT_DEVICE := manta
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RESTRICT_VENDOR_FILES := owner path
