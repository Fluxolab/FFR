/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>


#include "NxGraphics_Headers.h"
#include "NxDevice_Headers.h"
#include "NxSound_Headers.h"
#include "NxVideo_Headers.h"
#include "NxMocap_Headers.h"
#include "NxNetwork_Headers.h"

#ifndef _Included_Native
#define _Included_Native
#ifdef __cplusplus
extern "C" {
#endif

JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_CreateEngine(JNIEnv *env, jobject obj, jobject surface, jobject assetManager, jstring splashName );
JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_DeleteEngine(JNIEnv *env, jobject obj);
JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_renderOneFrame(JNIEnv * env, jobject obj);
JNIEXPORT jlong JNICALL Java_com_hotstuff_main_OgreActivityJNI_GetEngineContext() ;
JNIEXPORT jint JNICALL Java_com_hotstuff_main_OgreActivityJNI_CreateBackGroundTexture(JNIEnv * env, jobject obj/*, jint width, jint height, jint pixelformat */ );
JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_SetThreshHoldDistance(JNIEnv * env, jobject obj,  jfloat distance  );
JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_SetViewportSize(JNIEnv * env, jobject obj,  jfloat Left, jfloat Top, jfloat Width, jfloat Height );
JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_SetScreenSize(JNIEnv * env, jobject obj,  jint Width, jint Height ) ;
JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_ViewportClear(JNIEnv * env, jobject obj);
JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_ViewportUpdate(JNIEnv * env, jobject obj);
JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_ViewportSetClearEveryFrame(JNIEnv * env, jobject obj, jboolean val );
JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_ViewportSetCurrent(JNIEnv * env, jobject obj );
JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_ViewportSize(JNIEnv * env, jobject obj, jfloat x, jfloat y, jfloat width, jfloat height );
JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_SetTextureTransform( JNIEnv * env, jobject obj, jfloatArray trans, jfloatArray rotate, jfloatArray scale ) ;
JNIEXPORT jfloat JNICALL Java_com_hotstuff_main_OgreActivityJNI_GetGyroscopeY(JNIEnv * env, jobject obj );
JNIEXPORT jfloat JNICALL Java_com_hotstuff_main_OgreActivityJNI_SetGyroscopeOffset(JNIEnv * env, jobject obj, jfloat value );

JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_SetScreenImage(JNIEnv * env, jobject obj,  jstring imagePath  );

JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_StartFade(JNIEnv *env, jobject obj) ;

JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_SetModelPose(JNIEnv * env, jobject obj, jfloatArray mat  );
JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_SetTextureFOV(JNIEnv * env, jobject obj, jdouble fovyRadians, jdouble fovRadians );
JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_OpenTheoraVideo(JNIEnv * env, jobject obj, jstring filepath  );
JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_CloseTheoraVideo(JNIEnv * env, jobject obj  );

JNIEXPORT void JNICALL Java_com_hotstuff_main_OgreActivityJNI_CreateTextureFromPath(JNIEnv * env, jobject obj, jstring filepath  );


JNIEXPORT jobjectArray JNICALL  Java_com_hotstuff_main_OgreActivityJNI_CopyFilesToPath( JNIEnv * env, jobject obj, jstring dstfilepath, jobject assetManager );

 /*

static QCAR::Matrix44F Matrix44FTranspose(QCAR::Matrix44F m);
static float Matrix44FDeterminate(QCAR::Matrix44F& m);
static QCAR::Matrix44F Matrix44FInverse(QCAR::Matrix44F& m);
*/

#ifdef __cplusplus
}
#endif
#endif