package com.upa.im;


public interface IDownloadListener<T> {
    /**
     * 开始网络请求
     */
    void onStart();

    /**
     * 成功
     */
    void onSuccess(T response, String url);

    /**
     * 网络连接错误 404 502
     */
    void onError(T e);

    /**
     * 错误 服务器code
     */
    void onFail(T fail);

    /**
     * 网络结束
     */
    void onComplete();

    /**
     * 下载进度
     */
    void onLoadProgress(double size, double progress);

}
