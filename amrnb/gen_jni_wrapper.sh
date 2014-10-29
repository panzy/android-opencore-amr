#!/bin/bash
# panzy, 2014-10-29

# 用 swig 生成 JNI 包装代码
PKG=cn.com.cybertech.pm.media.audio
DIR=cn/com/cybertech/pm/media/audio
rm -rf src/$DIR
mkdir -p src/$DIR

swig -java -package $PKG -includeall -verbose -outdir src/$DIR -c++ \
    -I/usr/local/include -I/System/Library/Frameworks/JavaVM.framework/Headers \
    -I./jni -o jni/java_interface_wrap.cpp jni/cybertech_amr_interface.i

