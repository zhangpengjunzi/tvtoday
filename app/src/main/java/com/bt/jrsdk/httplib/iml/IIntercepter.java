package com.bt.jrsdk.httplib.iml;

import com.bt.jrsdk.httplib.config.HttpMethod;

import java.util.Map;

public interface IIntercepter {
    Map<String, Object> requestHeaderIntercept(Map<String, Object> map);
    HttpMethod requestMethodIntercept(HttpMethod httpMethod);
    String requestHostIntercept(String host);
    IAdapter requestAdapterIntercept(IAdapter adapter);
    String requestPathIntercept(String path);
    String requestParamsIntercept(String params);
    ResponseCallback requestCallbackIntercept(ResponseCallback callback);
}
