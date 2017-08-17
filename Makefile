export ARCHS = armv7 arm64
export TARGET = iphone:clang:8.1:8.1

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = HackScript
HackScript_FILES = main.m HSAppDelegate.m HSRootViewController.m HSScriptViewController.m
HackScript_FRAMEWORKS = UIKit CoreGraphics
HackScript_EXTRA_FRAMEWORKS = Python OpenSSL BZip2 XZ
HackScript_LIBRARIES=sqlite3 z

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "sblaunch me.jujhar.hackscript"
