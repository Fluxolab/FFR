# -----------------------------------------------------------------------------
# This file is part of NxGraphics, Multimedia Engine.
# Author : Stephane Kyles. Developed in Prague, Czech Republic.
#           _   __       ______                     __     _            
#	   / | / /_  __ / ____/_____ ____ _ ____   / /_   (_)_____ _____
#	  /  |/ /| |/_// / __ / ___// __ `// __ \ / __ \ / // ___// ___/
#	 / /|  /_>  < / /_/ // /   / /_/ // /_/ // / / // // /__ (__  ) 
#	/_/ |_//_/|_| \____//_/    \____// ____//_/ /_//_/ \___//____/  
#                                       /_/                             
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
# -----------------------------------------------------------------------------


LOCAL_PATH := $(call my-dir)
NDK_MODULE_PATH := $(LOCAL_PATH)

# ------------ NxDevice --------------

include $(CLEAR_VARS)
LOCAL_MODULE := nxdevice
LOCAL_SRC_FILES := ../../../Lib/libNxDevice.a
LOCAL_CPPFLAGS  := -fexceptions
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../NxDevice $(LOCAL_PATH)/../../nxdeps/include
include $(PREBUILT_STATIC_LIBRARY)

# ------------ NxMocap --------------

include $(CLEAR_VARS)
LOCAL_MODULE := libmysqlclient
LOCAL_SRC_FILES := ../../../nxdeps/lib/libmysqlclient.a
include $(PREBUILT_STATIC_LIBRARY)
  
include $(CLEAR_VARS)
LOCAL_MODULE := nxmocap
LOCAL_SRC_FILES := ../../../Lib/libNxMocap.a
LOCAL_CPPFLAGS  := -fexceptions
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../NxMocap $(LOCAL_PATH)/../../nxdeps/include
LOCAL_WHOLE_STATIC_LIBRARIES :=  libmysqlclient
include $(PREBUILT_STATIC_LIBRARY)

# ------------ NxNetwork --------------

include $(CLEAR_VARS)
LOCAL_MODULE := libcurl
LOCAL_SRC_FILES := ../../../nxdeps/lib/libcurl.a
include $(PREBUILT_STATIC_LIBRARY)



include $(CLEAR_VARS)
LOCAL_MODULE := nxnetwork
LOCAL_SRC_FILES := ../../../Lib/libNxNetwork.a
LOCAL_CPPFLAGS  := -fexceptions
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../NxNetwork $(LOCAL_PATH)/../../nxdeps/include
LOCAL_WHOLE_STATIC_LIBRARIES :=  libcurl
include $(PREBUILT_STATIC_LIBRARY)

# ------------ NxSound --------------

include $(CLEAR_VARS)
LOCAL_MODULE := kissfft
LOCAL_SRC_FILES := ../../../nxdeps/lib/libkissfft.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := flac
LOCAL_SRC_FILES := ../../../nxdeps/lib/liblibflac.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := mad
LOCAL_SRC_FILES := ../../../nxdeps/lib/liblibmad.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := ogg
LOCAL_SRC_FILES := ../../../nxdeps/lib/libogg.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := openal
LOCAL_SRC_FILES := ../../../nxdeps/lib/libopenal.a
LOCAL_EXPORT_LDLIBS := -llog -lOpenSLES 
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vorbis
LOCAL_SRC_FILES := ../../../nxdeps/lib/libvorbis.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vorbisfile
LOCAL_SRC_FILES := ../../../nxdeps/lib/libvorbisfile.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := nxsound
LOCAL_SRC_FILES := ../../../Lib/libNxSound.a
LOCAL_CPPFLAGS  := -fexceptions
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../NxSound $(LOCAL_PATH)/../../nxdeps/include
LOCAL_WHOLE_STATIC_LIBRARIES := libutils liblog libOpenSLES flac kissfft mad openal ogg vorbis vorbisfile
include $(PREBUILT_STATIC_LIBRARY)

# ------------ NxVideo --------------

include $(CLEAR_VARS)
LOCAL_MODULE := theora
LOCAL_SRC_FILES := ../../../nxdeps/lib/liblibtheora.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := nxvideo
LOCAL_SRC_FILES := ../../../Lib/libNxVideo.a
LOCAL_CPPFLAGS  := -fexceptions -frtti -x c++ -D___ANDROID___ -DANDROID -DZZIP_OMIT_CONFIG_H -DUSE_RTSHADER_SYSTEM=1 
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../NxVideo $(LOCAL_PATH)/../../../nxdeps/include
LOCAL_WHOLE_STATIC_LIBRARIES := theora
include $(PREBUILT_STATIC_LIBRARY)

# ------------ NxGraphics --------------

include $(CLEAR_VARS)
LOCAL_MODULE := ois
LOCAL_SRC_FILES := ../../../nxdeps/lib/libOIS.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := freeimage
LOCAL_SRC_FILES := ../../../nxdeps/lib/libFreeImage.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := freetype
LOCAL_SRC_FILES := ../../../nxdeps/lib/libfreetype.a
include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := zlib
LOCAL_SRC_FILES := ../../../nxdeps/lib/libzlib.a
include $(PREBUILT_STATIC_LIBRARY)

 
include $(CLEAR_VARS)
LOCAL_MODULE := zzip
LOCAL_SRC_FILES := ../../../nxdeps/lib/libzziplib.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := ogre
LOCAL_SRC_FILES := ../../../nxdeps/lib/libOgreMainStatic.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := ogreoverlay
LOCAL_SRC_FILES := ../../../nxdeps/lib/libOgreOverlayStatic.a
include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := ogreterrain
LOCAL_SRC_FILES := ../../../nxdeps/lib/libOgreTerrainStatic.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := ogrepaging
LOCAL_SRC_FILES := ../../../nxdeps/lib/libOgrePagingStatic.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := ogrertshader
LOCAL_SRC_FILES := ../../../nxdeps/lib/libOgreRTShaderSystemStatic.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := ogreoctree
LOCAL_SRC_FILES := ../../../nxdeps/lib/OGRE/libPlugin_OctreeSceneManagerStatic.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := ogreparticles
LOCAL_SRC_FILES := ../../../nxdeps/lib/OGRE/libPlugin_ParticleFXStatic.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := ogregles2
LOCAL_SRC_FILES := ../../../nxdeps/lib/OGRE/libRenderSystem_GLES2Static.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := nxgraphics
LOCAL_SRC_FILES := ../../../Lib/libNxGraphics.a
LOCAL_CPPFLAGS  := -fexceptions
LOCAL_C_INCLUDES := $(LOCAL_PATH)../../../NxGraphics $(LOCAL_PATH)../../../nxdeps/include
LOCAL_WHOLE_STATIC_LIBRARIES :=  ogre ogreoctree ogreparticles ogregles2 ogrertshader ogreoverlay ogreterrain ogrepaging ois 
include $(PREBUILT_STATIC_LIBRARY)

# ------------ Main Application --------------

include $(CLEAR_VARS)
LOCAL_MODULE := vuforia
LOCAL_SRC_FILES := ../../../nxdeps/lib/libVuforia.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE           := NxGraphics
LOCAL_SRC_FILES        := main.cpp
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../nxdeps/include/Vuforia5/include $(LOCAL_PATH)/../../../nxdeps/include/OGRE $(LOCAL_PATH)/../../../NxGraphics/physics/empty $(LOCAL_PATH)/../../../NxGraphics $(LOCAL_PATH)/../../../NxMocap $(LOCAL_PATH)/../../../NxDevice $(LOCAL_PATH)/../../../NxSound $(LOCAL_PATH)/../../../NxVideo $(LOCAL_PATH)/../../../NxNetwork $(LOCAL_PATH)/../../../nxdeps/include 
LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog
LOCAL_LDLIBS += -landroid -lc -lm -ldl -llog -lEGL -lGLESv2
LOCAL_CFLAGS := -fexceptions -frtti -x c++ -D___ANDROID___ -DANDROID -DZZIP_OMIT_CONFIG_H -DUSE_RTSHADER_SYSTEM=1 -DUSE_QUICKTIME=0
LOCAL_STATIC_LIBRARIES := vuforia cpufeatures zlib zzip freetype freeimage nxgraphics nxvideo nxsound nxmocap nxnetwork nxdevice
include $(BUILD_SHARED_LIBRARY)
$(call import-module,android/cpufeatures)



