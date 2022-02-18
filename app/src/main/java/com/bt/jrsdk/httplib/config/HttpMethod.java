package com.bt.jrsdk.httplib.config;

public enum HttpMethod {
    GET("GET"),
    POST("POST");
    private final String method;
    private HttpMethod(String method){
        this.method = method;
    }
    public String getValue(){
        return method;
    }
}
