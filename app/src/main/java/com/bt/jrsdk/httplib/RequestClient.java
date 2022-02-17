package com.bt.jrsdk.httplib;


import com.bt.jrsdk.httplib.config.HttpMethod;
import com.bt.jrsdk.httplib.iml.IAdapter;
import com.bt.jrsdk.httplib.iml.IIntercepter;
import com.bt.jrsdk.httplib.iml.ResponseCallback;
import com.bt.jrsdk.httplib.intercepter.HttpIntercepter;

import java.util.Map;

public class RequestClient {
    private String host;
    private String path;
    private Map<String, Object> params;
    private ResponseCallback callback;
    private StringBuffer out = new StringBuffer();
    private HttpMethod method;
    private IAdapter adapter;
    private Map<String, Object> header;
    private IIntercepter intercepter;

    private IIntercepter getIntercepter() {
        if (intercepter == null) {
            intercepter = new HttpIntercepter();
        }
        return intercepter;
    }

    public Map<String, Object> getHeader() {
        return getIntercepter().requestHeaderIntercept(header);
    }

    public HttpMethod getMethod() {
        return getIntercepter().requestMethodIntercept(method);
    }

    public String getHost() {
        return getIntercepter().requestHostIntercept(host);
    }

    public IAdapter getAdapter() {
        return getIntercepter().requestAdapterIntercept(adapter);
    }

    public String getPath() {
        return getIntercepter().requestPathIntercept(path);
    }

    public String getParams() {
        // 组织请求参数
        if (params != null && !params.isEmpty()) {
            for (String key : params.keySet()) {
//                LogUtil.d("MAP",params.size()+"  ,key = "+key+"  ,value = "+params.get(key));
                if (out.length() != 0) {
                    out.append("&");
                }
                out.append(key).append("=").append(params.get(key));
            }
        }
        return getIntercepter().requestParamsIntercept(out.toString());
    }

    public ResponseCallback getCallback() {
        return getIntercepter().requestCallbackIntercept(callback);
    }

    private RequestClient() {

    }

    public static class Builder {
        private String host;
        private String path;
        private Map<String, Object> params;
        private ResponseCallback callback;
        private HttpMethod method;
        private IAdapter adapter;
        private Map<String, Object> header;
        private IIntercepter intercepter;

        public Builder setIntercepter(IIntercepter intercepter) {
            this.intercepter = intercepter;
            return this;
        }

        public Builder setHost(String host) {
            this.host = host;
            return this;
        }

        public Builder setHeader(Map<String, Object> header) {
            this.header = header;
            return this;
        }

        public Builder setAdapter(IAdapter adapter) {
            this.adapter = adapter;
            return this;
        }

        public Builder setPath(String path) {
            this.path = path;
            return this;
        }

        public Builder setParams(Map<String, Object> params) {
            this.params = params;
            return this;
        }

        public Builder setCallback(ResponseCallback callback) {
            this.callback = callback;
            return this;
        }

        public Builder setMethod(HttpMethod httpMethod) {
            this.method = httpMethod;
            return this;
        }

        public RequestClient apply() {
            RequestClient requestClient = new RequestClient();
            requestClient.intercepter = this.intercepter;
            requestClient.host = this.host;
            requestClient.path = this.path;
            requestClient.params = this.params;
            requestClient.method = this.method;
            requestClient.callback = this.callback;
            requestClient.adapter = this.adapter;
            requestClient.header = this.header;
            return requestClient;
        }
    }


}
