package com.upa.source;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;


import com.today.player.base.App;
import com.upa.http.HttpRequest;
import com.upa.http.SSLSocketFactoryCompat;
import com.upa.tool.ApkUtils;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;


public class VideoSource {
    // public static final String url = "https://lfqdy.oss-cn-hongkong.aliyuncs.com/lfqdyapp/gp/tvsgp2";
    //  public static final String url = "https://lfqdy.oss-cn-hongkong.aliyuncs.com/lfqdyapp/gp/tvsgp4";
    public static final String url = "https://dkplayer.oss-ap-southeast-1.aliyuncs.com/longwgp/tvsgp3";
    // public static final String url = "https://lfqdy.oss-cn-hongkong.aliyuncs.com/lfqdyapp/cn/tvs";

    public static final String NET_MD5_FILE_NAME = "tv_source_file_name";
    public static final String NET_MD5 = "tv_source_net_md5";
    public static final String LOCAL_MD5 = "tv_source_local_md5";

    public static final String LOCAL_SOURCE = "tv_source_local_data";

    private byte[] sourceData;


    public static VideoSource getInstance() {
        return SourceInit.source;
    }

    private static class SourceInit {
        public static final VideoSource source = new VideoSource();
    }

    public void getSource(ISourceListener listener) {
        if (sourceData != null) {
            listener.getSourceSuccess(sourceData);
        } else {
            httpByte(url, listener);
        }
    }


    /**
     * 阻塞请求
     *
     * @param requestUrl
     */
    public void httpByte(final String requestUrl, final ISourceListener listener) {
        ScheduledThreadPoolExecutor executor = new ScheduledThreadPoolExecutor(1);
        executor.schedule(new Runnable() {
            @Override
            public void run() {
                //获取本地数据
                String data = PreferencesUtils.getString(App.getInstance(), NET_MD5_FILE_NAME, LOCAL_SOURCE, "");
                if (TextUtils.isEmpty(data)) {
                    request(url, listener);
                } else {
                    //判断MD5
                    String net = PreferencesUtils.getString(App.getInstance(), NET_MD5_FILE_NAME, NET_MD5, "");
                    String local = PreferencesUtils.getString(App.getInstance(), NET_MD5_FILE_NAME, LOCAL_MD5, "");
                    if (net.equals(local)) {
                        //使用以前的数据
                        sourceData = Base64.decode(data, Base64.DEFAULT);
                        listener.getSourceSuccess(sourceData);
                    } else {
                        request(url, listener);
                    }
                }
            }
        }, 1000, TimeUnit.MILLISECONDS);
    }


    public void request(final String requestUrl, final ISourceListener listener) {
        HttpURLConnection conn = null;
        int count = 0;
        boolean flag = false;
        while (count < 3) {
            try {
                flag = false;
                URL url = new URL(requestUrl);
                conn = (HttpURLConnection) url.openConnection();
                conn.setRequestMethod("GET");
                conn.setConnectTimeout(20000);
                conn.setReadTimeout(15000);
                if (conn instanceof HttpsURLConnection) {
                    X509TrustManager r3 = new X509TrustManager() {
                        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                        }

                        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                        }

                        public X509Certificate[] getAcceptedIssuers() {
                            return new X509Certificate[0];
                        }
                    };
                    if (Build.VERSION.SDK_INT < 21) {
                        ((HttpsURLConnection) conn).setSSLSocketFactory(new SSLSocketFactoryCompat(r3));
                    } else {
                        SSLContext instance = SSLContext.getInstance("SSL");
                        instance.init((KeyManager[]) null, new TrustManager[]{r3}, new SecureRandom());
                        ((HttpsURLConnection) conn).setSSLSocketFactory(instance.getSocketFactory());
                    }
                }
                conn.connect();
                int code = conn.getResponseCode();
                if (code == 200) {
                    InputStream is = conn.getInputStream();
                    byte[] buffer = new byte[1024];
                    ByteArrayOutputStream bao = new ByteArrayOutputStream();
                    int len = 0;
                    while ((len = is.read(buffer)) != -1) {
                        bao.write(buffer, 0, len);
                    }
                    byte[] data = bao.toByteArray();
                    is.close();
                    listener.getSourceSuccess(data);

                    if (data != null) {
                        sourceData = data;
                        String baseEncrypt = Base64.encodeToString(sourceData, Base64.DEFAULT);
                        PreferencesUtils.writeString(App.getInstance(), NET_MD5_FILE_NAME, LOCAL_SOURCE, baseEncrypt);
                        String md5 = getByteMD5(Encrypts.decrypt(sourceData));
                        if (!TextUtils.isEmpty(md5)) {
                            //保存md5
                            PreferencesUtils.writeString(App.getInstance(), NET_MD5_FILE_NAME, LOCAL_MD5, md5);
                        }
                    }

                }
            } catch (Exception e) {
                flag = true;
            } finally {
                if (conn != null) {
                    conn.disconnect();
                }
            }
            if (flag) {
                count++;
                if (count >= 3) {
                    listener.fail();
                } else {
                    SystemClock.sleep(3000);
                }
            } else {
                break;
            }
        }
    }


    public String getByteMD5(byte[] data) {
        MessageDigest digest = null;
        try {
            digest = MessageDigest.getInstance("MD5");
            int len = data.length;
            digest.update(data, 0, len);
        } catch (Exception e) {
            //e.printStackTrace();
            return null;
        }
        BigInteger bigInt = new BigInteger(1, digest.digest());
        return bigInt.toString(16);
    }


}
