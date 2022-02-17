package com.bt.jrsdk.httplib.intercepter;

import com.bt.jrsdk.httplib.config.HttpMethod;
import com.bt.jrsdk.httplib.iml.IAdapter;
import com.bt.jrsdk.httplib.iml.IIntercepter;
import com.bt.jrsdk.httplib.iml.ResponseCallback;
import com.bt.jrsdk.util.LogUtil;

import java.util.HashMap;
import java.util.Map;

public class HttpIntercepter implements IIntercepter {
    private static final String TAG = HttpIntercepter.class.getSimpleName();

    @Override
    public Map<String, Object> requestHeaderIntercept(Map<String, Object> map) {
        StringBuilder out = new StringBuilder();
        Map<String, Object> mapIntercept = new HashMap<>();
        if (map != null && !map.isEmpty()) {
            for (String key : map.keySet()) {
                mapIntercept.put(key, map.get(key));
                if (out.length() != 0) {
                    out.append("&");
                }
                out.append(key).append("=").append(map.get(key));
            }
        }
        LogUtil.d(TAG, "Header: " + out.toString());
        return mapIntercept;
    }

    @Override
    public HttpMethod requestMethodIntercept(HttpMethod httpMethod) {
        if (httpMethod == null) {
            httpMethod = HttpMethod.GET;
        }
        return httpMethod;
    }

    @Override
    public String requestHostIntercept(String host) {
        LogUtil.d(TAG, "HOST: " + host);
        return host;
    }

    @Override
    public IAdapter requestAdapterIntercept(IAdapter adapter) {
        return adapter;
    }

    @Override
    public String requestPathIntercept(String path) {
        LogUtil.d(TAG, "PATH: " + path);
        return path;
    }

    @Override
    public String requestParamsIntercept(String params) {
        LogUtil.d(TAG, "PARAMS: " + params);
        return params.replaceAll(" ","");
    }

    @Override
    public ResponseCallback requestCallbackIntercept(ResponseCallback callback) {
        return callback;
    }
}
