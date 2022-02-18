package com.bt.jrsdk.listener;

public interface VideoAdListener {
    void onLoaded();
    void onShow();
    void onClick();
    void onFinish();
    void onError(String error,int code);
    void onNoAd();
    void onClose();
}
