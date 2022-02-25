package com.bt.jrsdk.httplib;

import com.bt.jrsdk.httplib.config.HttpConfig;
import com.bt.jrsdk.httplib.iml.IAdapter;
import com.bt.jrsdk.httplib.iml.ResponseCallback;
import com.bt.jrsdk.util.LogUtil;

import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class HttpManager {
    private static final String HTTP_REQ_PROPERTY_CHARSET = "Accept-Charset";
    private static final String HTTP_REQ_VALUE_CHARSET = "UTF-8";
    private static final String HTTP_REQ_PROPERTY_CONTENT_TYPE = "Content-Type";
    private static final String HTTP_REQ_VALUE_CONTENT_TYPE = "application/x-www-form-urlencoded";
    /**
     * 建立连接的超时时间
     */
    private static final int CONNECT_TIMEOUT = 10 * 1000;
    /**
     * 建立到资源的连接后从 input 流读入时的超时时间
     */
    private static final int DEFAULT_READ_TIMEOUT = 10 * 1000;

    private HttpManager() {
    }

    public static HttpManager getInstance() {
        return SingletonHolder.sInstance;
    }

    private static class SingletonHolder {
        private static final HttpManager sInstance = new HttpManager();
    }

    public void doRequest(RequestClient requestClient) {
        final String host = requestClient.getHost();
        final String path = requestClient.getPath();
        final String params = requestClient.getParams();
        final String method = requestClient.getMethod().getValue();
        final IAdapter adapter = requestClient.getAdapter();
        final ResponseCallback callback = requestClient.getCallback();
        final Map<String, Object> header = requestClient.getHeader();
        ThreadPoolManager.executeTask(
                new Runnable() {
                    @Override
                    public void run() {
                        request(host, path, header, params, method, adapter, callback);
                    }
                }

        );
    }

    public void request(String host, String path, Map<String, Object> header, String params, String method, IAdapter adapter, final ResponseCallback callback) {
        try {
            byte[] data = null;
            LogUtil.d("MAP", params);
            URL url = setRequestURL(host, path, params, method);
            final HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            //connection 参数设置
            setURLConnectionCommonPara(connection, method);
            //请求头
            setURLConnectionHeader(connection, header);
            if (method.equals(HttpConfig.METHOD_POST)) {
                data = params.getBytes();
            }
            if (data != null && data.length > 0) {
                connection.getOutputStream().write(data);
            }
            final int responseCode = connection.getResponseCode();
            if (responseCode != 200) {
                MainThread.run(new Runnable() {
                    @Override
                    public void run() {
                        callback.fail("Server error responseCode = " + responseCode);
                    }
                });
                return;
            }
            //https 问题
//            setURLConnectionHttps(connection);
            adapter.dealStream(connection, callback);
        } catch (SocketTimeoutException socketTimeoutException) {
            socketTimeoutException.printStackTrace();
            callback.fail("");
        } catch (Exception exception) {
            exception.printStackTrace();
            callback.fail("");
        } finally {
            if (callback != null) {
                MainThread.run(new Runnable() {
                    @Override
                    public void run() {
                        callback.complete();
                    }
                });
            }
        }
    }

    private URL setRequestURL(String host, String path, String params, String method) throws MalformedURLException {
        URL url;
        if (method.equals(HttpConfig.METHOD_GET)) {
            url = new URL(host + path + params);
        } else {
            url = new URL(host + path);
        }
        return url;
    }

    private void setURLConnectionCommonPara(HttpURLConnection connection, String method) throws ProtocolException {
        connection.setConnectTimeout(CONNECT_TIMEOUT);
        connection.setReadTimeout(DEFAULT_READ_TIMEOUT);
        connection.setUseCaches(false);
        connection.setRequestMethod(method);
        if (method.equals(HttpConfig.METHOD_POST)) {
            connection.setDoInput(true);
            connection.setDoOutput(true);
            connection.setRequestProperty("connection", "Keep-Alive");
        }
    }

    private void setURLConnectionHeader(HttpURLConnection connection, Map<String, Object> header) {
        connection.setRequestProperty(HTTP_REQ_PROPERTY_CHARSET, HTTP_REQ_VALUE_CHARSET);
        connection.setRequestProperty(HTTP_REQ_PROPERTY_CONTENT_TYPE, HTTP_REQ_VALUE_CONTENT_TYPE);
        if (header != null && !header.isEmpty()) {
            for (String key : header.keySet()) {
                connection.setRequestProperty(key, header.get(key).toString());
            }
        }
    }

//    private void setURLConnectionHttps(HttpURLConnection connection) throws NoSuchAlgorithmException, KeyManagementException {
//        if (connection instanceof HttpsURLConnection) {
//            SSLContext sslContext = SSLContext.getInstance("SSL");
//            sslContext.init((KeyManager[]) null, new TrustManager[]{new X509TrustManager() {
//                public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
//                }
//
//                public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
//                }
//
//                public X509Certificate[] getAcceptedIssuers() {
//                    return new X509Certificate[0];
//                }
//            }}, new SecureRandom());
//            ((HttpsURLConnection) connection).setSSLSocketFactory(sslContext.getSocketFactory());
//        }
//
//    }

}
