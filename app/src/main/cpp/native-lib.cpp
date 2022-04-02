#include <jni.h>
#include <string>
#include <malloc.h>


const char *APP_SIGNATURE = "21CEB20567E1478216BE3D4B1D63EDDE";

void ByteToHexStr(const char *source, char *dest, int sourceLen) {
    short i;
    char highByte, lowByte;

    for (i = 0; i < sourceLen; i++) {
        highByte = source[i] >> 4;
        lowByte = source[i] & 0x0f;
        highByte += 0x30;

        if (highByte > 0x39) {
            dest[i * 2] = highByte + 0x07;
        } else {
            dest[i * 2] = highByte;
        }

        lowByte += 0x30;
        if (lowByte > 0x39) {
            dest[i * 2 + 1] = lowByte + 0x07;
        } else {
            dest[i * 2 + 1] = lowByte;
        }
    }
}


// byte数组转MD5字符串
jstring ToMd5(JNIEnv *env, jbyteArray source) {
    // MessageDigest类
    jclass classMessageDigest = env->FindClass("java/security/MessageDigest");
    // MessageDigest.getInstance()静态方法
    jmethodID midGetInstance = env->GetStaticMethodID(classMessageDigest, "getInstance",
                                                      "(Ljava/lang/String;)Ljava/security/MessageDigest;");
    // MessageDigest object
    jobject objMessageDigest = env->CallStaticObjectMethod(classMessageDigest, midGetInstance,
                                                           env->NewStringUTF("md5"));

    // update方法，这个函数的返回值是void，写V
    jmethodID midUpdate = env->GetMethodID(classMessageDigest, "update", "([B)V");
    env->CallVoidMethod(objMessageDigest, midUpdate, source);

    // digest方法
    jmethodID midDigest = env->GetMethodID(classMessageDigest, "digest", "()[B");
    jbyteArray objArraySign = (jbyteArray) env->CallObjectMethod(objMessageDigest, midDigest);

    jsize intArrayLength = env->GetArrayLength(objArraySign);
    jbyte *byte_array_elements = env->GetByteArrayElements(objArraySign, NULL);
    size_t length = (size_t) intArrayLength * 2 + 1;
    char *char_result = (char *) malloc(length);
    memset(char_result, 0, length);

    // 将byte数组转换成16进制字符串，发现这里不用强转，jbyte和unsigned char应该字节数是一样的
    ByteToHexStr((const char *) byte_array_elements, char_result, intArrayLength);
    // 在末尾补\0
    *(char_result + intArrayLength * 2) = '\0';

    jstring stringResult = env->NewStringUTF(char_result);
    // release
    env->ReleaseByteArrayElements(objArraySign, byte_array_elements, JNI_ABORT);
    // 释放指针使用free
    free(char_result);
    env->DeleteLocalRef(classMessageDigest);
    env->DeleteLocalRef(objMessageDigest);

    return stringResult;
}

extern "C"
 JNIEXPORT jstring JNICALL getPwd(
        JNIEnv* env,
        jobject thisz,
        jobject ctx
        ) {
    //获取Context
    jclass context = env -> GetObjectClass(ctx);
    //获取getPackageManager的ID
    jmethodID methid_id = env -> GetMethodID(context,"getPackageManager","()Landroid/content/pm/PackageManager;");
    //获取应用包的管理器
    jobject package_manager = env -> CallObjectMethod(thisz,methid_id);
    //获取PackageManager类
    jclass pm_class = env -> GetObjectClass(package_manager);
    //得到getPackageInfo方法的ID
    jmethodID methodID_info = env -> GetMethodID(pm_class,"getPackageInfo","(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;");
    //获取包名
    jmethodID methodID_packagename = env -> GetMethodID(context,"getPackageName", "()Ljava/lang/String;");
    jstring packageName = static_cast<jstring>(env->CallObjectMethod(thisz,methodID_packagename));
    //获得应用包的信息
    jobject package_info = env -> CallObjectMethod(package_manager,methodID_info,packageName,64);
    //获取PackageInfo类
    jclass pi_class = env -> GetObjectClass(package_info);
    //获取签名数组属性的ID
    jfieldID fieldId_signatures = env -> GetFieldID(pi_class,"signatures", "[Landroid/content/pm/Signature;");
    //得到签名数组
    jobject signature = env -> GetObjectField(package_info,fieldId_signatures);
    jobjectArray signatureArray = reinterpret_cast<jobjectArray>(signature);
    //得到签名
    jobject signatures = env-> GetObjectArrayElement(signatureArray,0);
    // 获得 Signature 类，待修改
    jclass s_clazz = env->GetObjectClass(signatures);

/*    jmethodID methodID_hc = env->GetMethodID(s_clazz,"toCharsString", "()Ljava/lang/String;");
    //获取toCharsString字符串
    jstring signatureByteArray = (jstring) env->CallObjectMethod(signatures, methodID_hc);*/
     jmethodID mid = env->GetMethodID(s_clazz, "toByteArray", "()[B");

    // 返回当前应用签名信息
     jbyteArray signatureByteArray = (jbyteArray) env->CallObjectMethod(signatures, mid);

     //获取MD5加密字符串
    jstring signaturemd5= ToMd5(env, signatureByteArray);
    //字符串拼接
   // mid=env->NewStringUTF(strcat((char *) env->GetStringUTFChars(signaturemd5, JNI_FALSE),(char *) env->GetStringUTFChars(time, JNI_FALSE)));

    return signaturemd5;
}

char* Jstring2CStr( JNIEnv * env, jstring jstr )
{
    char * rtn = NULL;
    jclass clsstring = env->FindClass("java/lang/String");
    jstring strencode = env->NewStringUTF("GB2312");
    jmethodID mid = env->GetMethodID(clsstring, "getBytes", "(Ljava/lang/String;)[B");
    jbyteArray barr= (jbyteArray)env->CallObjectMethod(jstr,mid,strencode);
    jsize alen = env->GetArrayLength(barr);
    jbyte * ba = env->GetByteArrayElements(barr,JNI_FALSE);
    if(alen > 0)
    {
        rtn = (char*)malloc(alen+1); //new char[alen+1];
        memcpy(rtn,ba,alen);
        rtn[alen]=0;
    }
    env->ReleaseByteArrayElements(barr,ba,0);

    return rtn;
}

jobject getApplication(JNIEnv *env) {
    jobject application = NULL;
    jclass activity_thread_clz = env->FindClass("android/app/ActivityThread");
    if (activity_thread_clz != NULL) {
        jmethodID currentApplication = env->GetStaticMethodID(
                activity_thread_clz, "currentApplication", "()Landroid/app/Application;");
        if (currentApplication != NULL) {
            application = env->CallStaticObjectMethod(activity_thread_clz, currentApplication);
        } else {
            //           LOGE("Cannot find method: currentApplication() in ActivityThread.");
        }
        env->DeleteLocalRef(activity_thread_clz);
    } else {
//        LOGE("Cannot find class: android.app.ActivityThread");
    }

    return application;
}


//检测签名是否匹配
jboolean checkSignature(
        JNIEnv *env, jobject context,jstring pwd) {

    jstring releaseSignature = env->NewStringUTF(APP_SIGNATURE); // 发布时候的签名
    const char *charAppSignature = env->GetStringUTFChars(pwd, NULL);
    const char *charReleaseSignature = env->GetStringUTFChars(releaseSignature, NULL);

//    LOGI("  start cmp  getSignature");
   //    __android_log_print(ANDROID_LOG_INFO, LOG_TAG, charAppSignature);
//    LOGI("  start cmp  getReleaseSignature");
    //  __android_log_print(ANDROID_LOG_INFO, LOG_TAG, charAppSignature);

    jboolean result = JNI_FALSE;
    // 比较是否相等
    if (charAppSignature != NULL && charReleaseSignature != NULL) {
        if (strcmp(charAppSignature, charReleaseSignature) == 0) {
            result = JNI_TRUE;
        }
    }

    env->ReleaseStringUTFChars(pwd, charAppSignature);
    env->ReleaseStringUTFChars(releaseSignature, charReleaseSignature);

    return result;
}


extern "C"
/**
 * 检查加载该so的应用的签名，与预置的签名是否一致
 */
JNIEXPORT jboolean JNICALL checkSignature(JNIEnv *env,jstring pwd) {
    // 调用 getContext 方法得到 Context 对象
    jobject appContext = getApplication(env);

    if (appContext != NULL) {
        jboolean signatureValid = checkSignature(
                env, appContext,pwd);
        return signatureValid;
    }
    return JNI_FALSE;
}



extern "C"
/*这里是加密的处理，这里是加
 * Class:     com_xu_jniworddemo_MainActivity
 * Method:    encodeInC
 * Signature: (Ljava/lang/String;)Ljava/lang/String;
 */
 //拿到字符串要加密必须要遍历一下，每一个字符加一或者加2，在转化成jstring返回
JNIEXPORT jstring JNICALL Java_com_today_player_ui_activity_SplashActivity_encodeInC (
    JNIEnv * env,
    jobject obj,
    jobject ctx,
    jstring time){

    jstring pwd=getPwd(env,obj,ctx);

    if (checkSignature(env,pwd) != JNI_TRUE) {
            // 检测不通过，返回 -1 就会使 App crash
        std::string result="-1";
        return env->NewStringUTF(result.c_str());
    }
    //拼接字符串
    jstring contact_str=env->NewStringUTF(strcat((char *) env->GetStringUTFChars(pwd, JNI_FALSE),(char *) env->GetStringUTFChars(time, JNI_FALSE)));
  	//把jstring类型字符串转化成 c能够处理的char* 类型
  	//拿到了转化成C的字符串
    char* cstr = Jstring2CStr(env,contact_str);
  	//获取到长度
  	int length = strlen(cstr);
  	int i;
  	//遍历字符串
  	for(i = 0; i<length; i++){
  	//C的字符串就是字符数组，通过char类型的指针拿到了字符数组的首地址，通过指针的位移运算，遍历到字符数组的每一个字节
  	//遍历的时候cstr已经修改好了
  		*(cstr+i) += 2;
  	}
  	//之后在把str转化成jstring
  	return env->NewStringUTF(cstr);
  }


extern "C"
JNIEXPORT jstring JNICALL Java_com_today_player_ui_activity_SplashActivity_decodeInC (JNIEnv * env, jobject obj, jstring jstr){

        char* cstr = Jstring2CStr(env,jstr);
  		int length = strlen(cstr);
  		int i;
  		for(i = 0; i<length; i++){
  			*(cstr+i) -= 2;
  		}
  		return env->NewStringUTF(cstr);
  }




