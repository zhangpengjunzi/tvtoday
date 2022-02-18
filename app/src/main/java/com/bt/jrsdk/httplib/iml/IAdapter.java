package com.bt.jrsdk.httplib.iml;

import java.net.HttpURLConnection;

public interface IAdapter<T> {
    void dealStream(HttpURLConnection connection, ResponseCallback<T> callback);
}
