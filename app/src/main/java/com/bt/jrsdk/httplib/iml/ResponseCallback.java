package com.bt.jrsdk.httplib.iml;

public interface ResponseCallback<T>  {
    void success(T json);
    void fail(String error);
    void complete();
}
