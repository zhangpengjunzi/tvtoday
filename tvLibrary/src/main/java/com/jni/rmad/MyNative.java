package com.jni.rmad;

public class MyNative {
    static {
        System.loadLibrary("remove_m3u8_ads");
    }

    public static native void init(int port,InitListener listener);

    public static native void parse(String url, String ad, M3U8ParseListener listener);
}
