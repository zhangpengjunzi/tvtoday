# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
#############################################
#
# 对于一些基本指令的添加
#
#############################################
-optimizationpasses 5
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontskipnonpubliclibraryclassmembers
-dontpreverify
-verbose
-printmapping proguardMapping.txt
-optimizations !code/simplification/cast,!field/*,!class/merging/*
-keepattributes *Annotation*,InnerClasses
-keepattributes Signature
-keepattributes SourceFile,LineNumberTable

#############################################
#
# Android开发中一些需要保留的公共部分
#
#############################################

# 保留我们使用的四大组件，自定义的Application等等这些类不被混淆
# 因为这些子类都有可能被外部调用
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Appliction
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class * extends android.view.View
-keep public class com.android.vending.licensing.ILicensingService

# 保留support下的所有类及其内部类
-keep class android.support.** {*;}
# 保留继承的
-keep public class * extends android.support.v4.**
-keep public class * extends android.support.v7.**
-keep public class * extends android.support.annotation.**
-keep class com.google.android.material.** {*;}
-keep class androidx.** {*;}
-keep public class * extends androidx.**
-keep interface androidx.** {*;}
-dontwarn com.google.android.material.**
-dontnote com.google.android.material.**
-dontwarn androidx.**

# 保留R下面的资源
-keep class **.R$* {*;}

# 保留本地native方法不被混淆
-keepclasseswithmembernames class * {
    native <methods>;
}

# 保留在Activity中的方法参数是view的方法，
# 这样以来我们在layout中写的onClick就不会被影响
-keepclassmembers class * extends android.app.Activity{
    public void *(android.view.View);
}

# 保留枚举类不被混淆
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# 保留我们自定义控件（继承自View）不被混淆
-keep public class * extends android.view.View{
    *** get*();
    void set*(***);
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

# 保留Parcelable序列化类不被混淆
-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

# 保留Serializable序列化的类不被混淆
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    !static !transient <fields>;
    !private <fields>;
    !private <methods>;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

# 对于带有回调函数的onXXEvent、**On*Listener的，不能被混淆
-keepclassmembers class * {
    void *(**On*Event);
    void *(**On*Listener);
}

-keep public class * extends androidx.recyclerview.widget.RecyclerView$LayoutManager {
    public <init>(android.content.Context, android.util.AttributeSet, int, int);
    public <init>();
}
-keepclassmembers class androidx.recyclerview.widget.RecyclerView {
    public void suppressLayout(boolean);
    public boolean isLayoutSuppressed();
}

-keep class com.google.android.material.** {*;}
-keep class androidx.** {*;}
-keep public class * extends androidx.**
-keep interface androidx.** {*;}
-dontwarn com.google.android.material.**
-dontnote com.google.android.material.**
-dontwarn androidx.**

#okhttp
-dontwarn okhttp3.**
-keep class okhttp3.**{*;}
#okio
-dontwarn okio.**
-keep class okio.**{*;}
# 实体类
-keep class com.today.player.bean.** { *; }
#CardView
-keep class com.tv.widget.card.**{*;}

################################# eventbus
-keepattributes *Annotation*
-keepclassmembers class * {
    @org.greenrobot.eventbus.Subscribe <methods>;
}
-keep enum org.greenrobot.eventbus.ThreadMode { *; }


# And if you use AsyncExecutor:
-keepclassmembers class * extends org.greenrobot.eventbus.util.ThrowableFailureEvent {
    <init>(java.lang.Throwable);
}
#腾讯x5
-dontwarn dalvik.**
-dontwarn com.tencent.smtt.**

-keep class com.tencent.smtt.** {
    *;
}
-keep class com.tencent.tbs.** {
    *;
}
-dontwarn com.tencent.bugly.**
-keep public class com.tencent.bugly.**{*;}

# tinker混淆规则
-dontwarn com.tencent.tinker.**
-keep class com.tencent.tinker.** { *; }

-keep class org.xmlpull.v1.** { *;}
-dontwarn org.xmlpull.v1.**

-keep class xyz.doikki.videoplayer.** { *; }
-dontwarn xyz.doikki.videoplayer.**

# IjkPlayer
-keep class tv.danmaku.ijk.** { *; }
-dontwarn tv.danmaku.ijk.**

# ExoPlayer
-keep class com.google.android.exoplayer2.** { *; }
-dontwarn com.google.android.exoplayer2.**

-keep class com.thoughtworks.xstream.** { *; }
-dontwarn com.thoughtworks.xstream.**

-keep class com.owen.tvrecyclerview.** { *; }
-dontwarn com.owen.tvrecyclerview.**
<<<<<<< HEAD


#基线包使用，生成mapping.txt
-printmapping mapping.txt
#生成的mapping.txt在app/build/outputs/mapping/release路径下，移动到/app路径下
#修复后的项目使用，保证混淆结果一致
#-applymapping mapping.txt
#hotfix
-keep class com.taobao.sophix.**{*;}
-keep class com.ta.utdid2.device.**{*;}
#防止inline
-dontoptimize
=======
# remove log eg. my LogUtil
-assumenosideeffects class com.today.player.util.LogUtil {
     public static void d(...);
}
# remove useless Log String
-assumenoexternalsideeffects class java.lang.StringBuilder {
    public java.lang.StringBuilder();
    public java.lang.StringBuilder(int);
    public java.lang.StringBuilder(java.lang.String);
    public java.lang.StringBuilder append(java.lang.Object);
    public java.lang.StringBuilder append(java.lang.String);
    public java.lang.StringBuilder append(java.lang.StringBuffer);
    public java.lang.StringBuilder append(char[]);
    public java.lang.StringBuilder append(char[], int, int);
    public java.lang.StringBuilder append(boolean);
    public java.lang.StringBuilder append(char);
    public java.lang.StringBuilder append(int);
    public java.lang.StringBuilder append(long);
    public java.lang.StringBuilder append(float);
    public java.lang.StringBuilder append(double);
    public java.lang.String toString();
}
# remove useless Log String
-assumenoexternalreturnvalues public final class java.lang.StringBuilder {
    public java.lang.StringBuilder append(java.lang.Object);
    public java.lang.StringBuilder append(java.lang.String);
    public java.lang.StringBuilder append(java.lang.StringBuffer);
    public java.lang.StringBuilder append(char[]);
    public java.lang.StringBuilder append(char[], int, int);
    public java.lang.StringBuilder append(boolean);
    public java.lang.StringBuilder append(char);
    public java.lang.StringBuilder append(int);
    public java.lang.StringBuilder append(long);
    public java.lang.StringBuilder append(float);
    public java.lang.StringBuilder append(double);
}
>>>>>>> 1a41f6d56317c0dace2281e3978d6f607ddf9d7d
