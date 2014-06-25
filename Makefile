export ARCHS = armv7 armv7s arm64
export SDKVERSION = 7.1
export THEOS_BUILD_DIR = build_dir

include theos/makefiles/common.mk

BUNDLE_NAME = NCDate7
NCDate7_FILES = NCDate7ViewController.m
NCDate7_INSTALL_PATH = /System/Library/WeeAppPlugins/
NCDate7_FRAMEWORKS = UIKit CoreGraphics CoreText
NCDate7_PRIVATE_FRAMEWORKS = SpringBoardUIServices

include $(THEOS_MAKE_PATH)/bundle.mk

after-install::
	install.exec "killall -9 SpringBoard"
