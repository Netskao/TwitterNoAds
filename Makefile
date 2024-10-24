ARCHS = arm64 
TARGET = iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = Twitter
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TwitterNoAds
$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS += -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
