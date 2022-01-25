package com.today.player.http;


import java.util.Map;

public class RequestClient {
    private String host;
    private String path;
    private Map<String, Object> params;
    private ResponseCallback callback;
    private HttpMethod method;
    private Map<String, Object> header;

    public Map<String, Object> getHeader() {
        return header;
    }

    public HttpMethod getMethod() {
        return method;
    }

    public String getHost() {
        return host;
    }


    public String getPath() {
        return path;
    }

    public Map<String, Object> getParams() {
        // 组织请求参数
//        if (params != null && !params.isEmpty()) {
//            for (String key : params.keySet()) {
//                if (out.length() != 0) {
//                    out.append("&");
//                }
//                out.append(key).append("=").append(params.get(key));
//            }
//        }
        return params;
    }

    public ResponseCallback getCallback() {
        return callback;
    }

    private RequestClient() {

    }

    public static class Builder {
        private String host;
        private String path;
        private Map<String, Object> params;
        private ResponseCallback callback;
        private HttpMethod method;
        private Map<String, Object> header;


        public Builder setHost(String host) {
            this.host = host;
            return this;
        }

        public Builder setHeader(Map<String, Object> header) {
            this.header = header;
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
            requestClient.host = this.host;
            requestClient.path = this.path;
            requestClient.params = this.params;
            requestClient.method = this.method;
            requestClient.callback = this.callback;
            requestClient.header = this.header;
            return requestClient;
        }
    }


}
