#include <jni.h>
#include <string>
#include <android/log.h>

#define  LOG_TAG    "native-dev"
#define  LOGI(...)  __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)

JNIEXPORT /*jbyteArray*/ jstring  JNICALL
Java_com_today_player_ui_activity_SplashActivity_getPwd(
        JNIEnv* env,
        jobject thisz,
        jobject ctx,
        jbyteArray time,
        jint len) {
    //获取Context
    jclass context = env -> GetObjectClass(ctx);
    //获取getPackageManager的ID
    jmethodID methid_id = env -> GetMethodID(context,"getPackageManager","()Landroid/content/pm/PackageManager;");
    //获取应用包的管理器
    jobject package_manager = env -> CallObjectMethod(context,methid_id);
    //获取PackageManager类
    jclass pm_class = env -> GetObjectClass(package_manager);
    //得到getPackageInfo方法的ID
    jmethodID methodID_info = env -> GetMethodID(pm_class,"getPackageInfo","(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;");
    //获取包名
    jmethodID methodID_packagename = env -> GetMethodID(context,"getPackageName", "()Ljava/lang/String;");
    jstring packageName = static_cast<jstring>(env->CallObjectMethod(context,methodID_packagename));
    //获得应用包的信息
    jobject package_info = env -> CallObjectMethod(package_manager,methodID_info,packageName,64);
    //获取PackageInfo类
    jclass pi_class = env -> GetObjectClass(package_info);
    //获取签名数组属性的ID
    jfieldID fieldId_signatures = env -> GetFieldID(pi_class,"signatures", "[Landroid/content/pm/Signature;");
    //得到签名数组
    jobject signature = env -> GetObjectField(package_info,fieldId_signatures);
    jobjectArray signatureArray = reinterpret_cast<jobjectArray>(signature);

    jsize size = env->GetArrayLength(signatureArray);
    for (jint i = 0; i < size; i++) {
        jstring value = (jstring) env->GetObjectArrayElement(signatureArray, i);
        LOGI("str is %s",value);
    }
    std::string hello = "Hello from C++";
    return env->NewStringUTF(hello.c_str());
}


