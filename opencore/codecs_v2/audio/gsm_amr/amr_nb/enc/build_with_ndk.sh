#!/bin/bash
# panzy, 2014-10-28

export PV_TOP=`pwd`/../../../../../

ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk NDK_APPLICATION_MK=Application.mk $@
