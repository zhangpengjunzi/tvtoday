package com.bt.jrsdk.listener;

public interface PicDownloadListener {
    void suc(byte[] pic);
    void fail(String error);
}
