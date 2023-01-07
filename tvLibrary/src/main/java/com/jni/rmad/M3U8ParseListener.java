package com.jni.rmad;

public interface M3U8ParseListener {
    void onSuccess(String hex);

    void onFail();
}
