package com.bt.jrsdk.listener;

public interface SplashAdListener {
    void onLoaded();
    void onShow();
    void onClick();
    void onFinish();
    void onError(String error,int code);
    void onNoAd();
    void onClose();
}
