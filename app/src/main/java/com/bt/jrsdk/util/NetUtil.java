package com.bt.jrsdk.util;


import android.text.TextUtils;

import com.bt.jrsdk.config.Config;
import com.bt.jrsdk.httplib.HttpManager;
import com.bt.jrsdk.httplib.RequestClient;
import com.bt.jrsdk.httplib.adapter.ResponseStringAdapter;
import com.bt.jrsdk.httplib.config.HttpMethod;
import com.bt.jrsdk.httplib.iml.ResponseCallback;
import com.bt.jrsdk.httplib.intercepter.HttpIntercepter;

import java.util.Map;

public class NetUtil {
    private String aliUrl;

    public void setAliUrl(String aliUrl) {
        if (!TextUtils.isEmpty(aliUrl)) {
            this.aliUrl = aliUrl;
        }
    }

    private NetUtil() {

    }

    public static NetUtil getInstance() {
        return SingletonHolder.sInstance;
    }

    private static class SingletonHolder {
        private static final NetUtil sInstance = new NetUtil();
    }


    public void doRequest(String host, String path, Map<String, Object> params, HttpMethod method) {
        RequestClient request = new RequestClient.Builder()
                .setHost(host)
                .setPath(path)
                .setMethod(method)
                .setParams(params)
                .setIntercepter(new HttpIntercepter())
                .setAdapter(new ResponseStringAdapter())
                .setCallback(new ResponseCallback<String>() {
                    @Override
                    public void success(String json) {
                        LogUtil.d("NetUtil", json);
                    }

                    @Override
                    public void fail(String error) {
                        LogUtil.d("NetUtil", error);
                    }

                    @Override
                    public void complete() {

                    }
                }).apply();
        HttpManager.getInstance().doRequest(request);
    }


    public void report(Map<String, Object> params, HttpMethod method) {
        params.put(Config.APIVERSION, Config.APIVERSION_VALUE);
        params.put(Config.SDK_VERSION, Config.SDK_VERSION_CODE);
        if (!TextUtils.isEmpty(aliUrl)) {
            doRequest(aliUrl, Config.ALI_LOG_PATH, params, method);
        }
    }
}
