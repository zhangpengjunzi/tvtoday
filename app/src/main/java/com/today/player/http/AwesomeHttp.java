package com.today.player.http;

import android.text.TextUtils;


import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;


public class AwesomeHttp {
    private OkHttpClient okHttpClient;

    private AwesomeHttp() {
        HttpLoggingInterceptor logging = new HttpLoggingInterceptor();
//        if (InitConfig.getInstance().isDebug()) {
//            logging.setLevel(HttpLoggingInterceptor.Level.BODY);
//        } else {
        logging.setLevel(HttpLoggingInterceptor.Level.NONE);
//        }

        okHttpClient = new OkHttpClient.Builder()
//                .hostnameVerifier(new HostnameVerifier() {//证书信任
//                    @Override
//                    public boolean verify(String hostname, SSLSession session) {
//                        return true;
//                    }
//                })
                .connectTimeout(15, TimeUnit.SECONDS)
                .readTimeout(15, TimeUnit.SECONDS)
                .writeTimeout(15, TimeUnit.SECONDS)
                .addInterceptor(logging)
                .build();

    }

    public static AwesomeHttp getInstance() {
        return SingletonHolder.sInstance;
    }

    private static class SingletonHolder {
        private static final AwesomeHttp sInstance = new AwesomeHttp();
    }

    public void request(RequestClient client) {
        final String host = client.getHost();
        final String path = client.getPath();
        final Map<String, Object> params = client.getParams();
        final HttpMethod method = client.getMethod();
        final ResponseCallback callback = client.getCallback();
        final Map<String, Object> header = client.getHeader();
        if (method.getValue().equals(HttpMethod.GET.getValue())) {
            getRequest(host + path, params, callback);
        } else {
            postRequest(host + path, params, callback);
        }
    }

    private void postRequest(String url, Map<String, Object> params, ResponseCallback callback) {
        FormBody.Builder builder = new FormBody.Builder();
        RequestBody requestBody = null;

        if (params != null && !params.isEmpty()) {
            for (String key : params.keySet()) {
                builder.add(key, Objects.requireNonNull(params.get(key)).toString());
            }
            requestBody = builder.build();
        }
        Request request = new Request.Builder().url(url).post(requestBody).build();
        Call call = okHttpClient.newCall(request);
        enqueue(call, callback);
    }

    private void enqueue(Call call, final ResponseCallback callback) {
        call.enqueue(new Callback() {
            @Override
            public void onFailure(Call call, IOException e) {
                callback.fail(e.toString());
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                String result = response.body().string();
                if (TextUtils.isEmpty(result)) {
                    return;
                }
                try {
                    JSONObject jsonObject = new JSONObject(result);
                    String code = jsonObject.optString("code", "-1");
                    if (code.equals("1")) {
                        if (callback != null) {
                            callback.success(result);
                        }
                    } else {
                        if (callback != null) {
                            callback.fail("code error & code = " + code);
                        }
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }

            }
        });
    }

    private void getRequest(String url, Map<String, Object> params, ResponseCallback callback) {
        StringBuilder stringBuilder = new StringBuilder(url);
        if (!stringBuilder.toString().contains("?")) {
            stringBuilder.append("?");
        }
        if (params != null && !params.isEmpty()) {
            for (String key : params.keySet()) {
                stringBuilder.append(key).append("=").append(params.get(key)).append("&");
            }
        }
        stringBuilder = stringBuilder.deleteCharAt(stringBuilder.length() - 1);
        Request request = new Request.Builder().method("GET", null).url(stringBuilder.toString()).build();
        Call call = okHttpClient.newCall(request);
        enqueue(call, callback);
    }
}
