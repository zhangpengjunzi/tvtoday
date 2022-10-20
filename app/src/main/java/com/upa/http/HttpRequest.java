package com.upa.http;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;


import com.today.player.base.App;
import com.today.player.event.TopStateEvent;
import com.today.player.util.ChannelUtil;
import com.upa.UpdateModel;
import com.upa.im.ActivationHttpListener;
import com.upa.im.IDownloadListener;
import com.upa.im.YsRequestListener;
import com.upa.tool.Tools;


import org.greenrobot.eventbus.EventBus;
import org.json.JSONObject;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;


public class HttpRequest {

    private static HttpRequest ourInstance = null;

    private Handler mainHandler = new Handler(Looper.getMainLooper());

    private HttpRequest() {
    }

    public static HttpRequest getInstance() {
        // 加入双重校验锁
        // 校验锁1：第1个if
        if (ourInstance == null) {
            synchronized (HttpRequest.class) {
                // 校验锁2：第2个 if
                if (ourInstance == null) {
                    ourInstance = new HttpRequest();
                }
            }
        }
        return ourInstance;
    }

    //线程池
    public ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 8, 1, TimeUnit.SECONDS,
            new LinkedBlockingQueue<Runnable>(100));
    //重试次数为3
    private static final int RETRY_COUNT = 3;

    public synchronized void httpByteAsyn(final Context context, final String requestUrl, final int type, final YsRequestListener listener) {
        threadPoolExecutor.execute(new Runnable() {
            @Override
            public void run() {
                HttpURLConnection conn = null;
                int count = 0;
                boolean flag = false;
                while (count < RETRY_COUNT) {
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
                            UpdateModel updateModel = null;
                            if (data != null) {
                                updateModel = new UpdateModel(data);
                                if (type == 1) {
                                    updateModel.setType(type);
                                }
                                UpdateModel finalUpdateModel = updateModel;
                                mainHandler.post(new Runnable() {
                                    @Override
                                    public void run() {
                                        if (Integer.parseInt(finalUpdateModel.getVersion()) > Tools.getVersionCode(context) || type == 1) {
                                            if (!finalUpdateModel.getDisplay().equals("0") || type == 1 || ChannelUtil.isMyUpdate()) {
                                                listener.success(finalUpdateModel);
                                            } else {
                                                EventBus.getDefault().post(new TopStateEvent(TopStateEvent.REFRESH_UPDATE));
                                            }
                                        } else {
                                            EventBus.getDefault().post(new TopStateEvent(TopStateEvent.REFRESH_UPDATE));
                                            listener.keep();
                                        }
                                    }
                                });
                            }
                            is.close();
                        }
                    } catch (Exception e) {
                        flag = true;
                        if (count == RETRY_COUNT - 1) {
                            mainHandler.post(new Runnable() {
                                @Override
                                public void run() {
                                    listener.error(e.getMessage());
                                }
                            });
                        }
                    } finally {
                        if (conn != null) {
                            conn.disconnect();
                        }
                    }
                    if (flag) {
                        count++;
                        SystemClock.sleep(3000);
                    } else {
                        break;
                    }
                }
            }
        });
    }


   /* public void httpByteAsyn(final Context context, final String requestUrl, final BgHttpListener listener) {
        threadPoolExecutor.execute(new Runnable() {
            @Override
            public void run() {
                HttpURLConnection conn = null;
                int count = 0;
                boolean flag = false;
                while (count < RETRY_COUNT) {
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
                            if (data != null) {
                                mainHandler.post(new Runnable() {
                                    @Override
                                    public void run() {
                                        listener.success(new String(data, StandardCharsets.UTF_8));
                                    }
                                });
                            }
                            is.close();
                        }
                    } catch (Exception e) {
                        flag = true;
                        if (count == RETRY_COUNT - 1) {
                            mainHandler.post(new Runnable() {
                                @Override
                                public void run() {
                                    listener.error(e.getMessage());
                                }
                            });
                        }
                    } finally {
                        if (conn != null) {
                            conn.disconnect();
                        }
                    }
                    if (flag) {
                        count++;
                        SystemClock.sleep(3000);
                    } else {
                        break;
                    }
                }
            }
        });
    }*/

    public void httpPost(final String requestUrl, final ActivationHttpListener listener, final String param) {
        threadPoolExecutor.execute(new Runnable() {
            @Override
            public void run() {
                HttpURLConnection conn = null;
                int count = 0;
                boolean flag = false;
                while (count < RETRY_COUNT) {
                    try {
                        flag = false;
                        URL url = new URL(requestUrl);
                        conn = (HttpURLConnection) url.openConnection();
                        conn.setRequestMethod("POST");
                        conn.setConnectTimeout(20000);
                        conn.setReadTimeout(15000);
                        conn.setDoInput(true);
                        conn.setDoOutput(true);
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
                        BufferedOutputStream out = new BufferedOutputStream(conn.getOutputStream());
                        out.write(param.getBytes());
                        out.flush();
                        out.close();
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
                            JSONObject jsonObject = new JSONObject(new String(data));
                            int responseCode = jsonObject.optInt("code");
                            is.close();
                            mainHandler.post(new Runnable() {
                                @Override
                                public void run() {
                                    listener.active(responseCode);
                                }
                            });
                        }
                    } catch (Exception e) {
                        flag = true;
                        if (count == RETRY_COUNT - 1) {
                            mainHandler.post(new Runnable() {
                                @Override
                                public void run() {
                                    listener.error(e.getMessage());
                                }
                            });
                        }
                    } finally {
                        if (conn != null) {
                            conn.disconnect();
                        }
                    }
                    if (flag) {
                        count++;
                        SystemClock.sleep(3000);
                    } else {
                        break;
                    }
                }
            }
        });
    }


    private File mDownDir;

    /**
     * https 不支持断点续传
     *
     * @param mDownloadUrl
     * @param listener
     */
    public void saveApkFromHttps(Context context, final String mDownloadUrl, final IDownloadListener<java.io.Serializable> listener) {
       /* if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            mDownDir = new File(context.getFilesDir() + "/ys/download");
        } else {
            String storepath = context.getExternalFilesDir(null).getPath() + "/ys/download";
            mDownDir = new File(storepath);
        }*/
        String storepath = context.getExternalFilesDir(null).getPath();
        mDownDir = new File(storepath);
        if (!mDownDir.exists()) {
            mDownDir.mkdirs();
        }
        final String pkgname = getByteMD5(mDownloadUrl.getBytes());
        // 因为网络请求是耗时操作，所以需要另外开启一个线程来执行该任务。
        threadPoolExecutor.execute(new Runnable() {
            @Override
            public void run() {
                URL url = null;
                HttpURLConnection connection = null;
                try {
                    InputStream is = null;
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            listener.onStart();
                        }
                    });
                    RandomAccessFile raf = null;
                    File saveFile = new File(mDownDir, pkgname + ".apk");/* 保存文件 */
                    if (saveFile.exists()) {
                        saveFile.delete();
                    }
                    int start = (int) saveFile.length();
                    url = new URL(mDownloadUrl);
                    connection = (HttpURLConnection) url
                            .openConnection();
//                    connection.setRequestProperty("User-Agent", wua);
                    if (connection instanceof HttpsURLConnection) {
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
                            ((HttpsURLConnection) connection).setSSLSocketFactory(new SSLSocketFactoryCompat(r3));
                        } else {
                            SSLContext instance = SSLContext.getInstance("SSL");
                            instance.init((KeyManager[]) null, new TrustManager[]{r3}, new SecureRandom());
                            ((HttpsURLConnection) connection).setSSLSocketFactory(instance.getSocketFactory());
                        }
                    }
                    setHttpHeader(url, connection, start, -1);
                    // 响应码为200表示成功，否则失败。
                    if (connection.getResponseCode() != 200) {
                        mainHandler.post(new Runnable() {
                            @Override
                            public void run() {
                                listener.onError("网络连接失败");
                            }
                        });
                    } else {
                        is = connection.getInputStream();
                        int mFileSize = connection.getContentLength();
                        raf = new RandomAccessFile(saveFile, "rwd");
                        raf.seek(start);
                        byte[] buffer = new byte[4096];
                        int readlen = 0;
                        int mDownloadSize = start;
                        double currentProgress = 0;
                        while ((readlen = is.read(buffer)) != -1) {
                            raf.write(buffer, 0, readlen);
                            mDownloadSize += readlen;
                            double percent = (double) mFileSize / mDownloadSize;
                            percent = 100 / percent;
                            int percents = (int) (percent * 100);
                            //  Log.i("___log",currentProgress+" "+percent+" "+mDownloadSize+" "+mFileSize);
                            if (percents > currentProgress) {
                                currentProgress = percent;
                                double finalCurrentProgress1 = currentProgress;
                                mainHandler.post(new Runnable() {
                                    @Override
                                    public void run() {
                                        listener.onLoadProgress(mFileSize, finalCurrentProgress1);
                                    }
                                });
                            }
                        }
                        if (is != null) {
                            is.close();
                            is = null;
                        }
                        mainHandler.post(new Runnable() {
                            @Override
                            public void run() {
                                listener.onSuccess(saveFile, mDownloadUrl);
                            }
                        });
                    }
                } catch (Exception e) {
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            listener.onFail(e.toString());
                        }
                    });
                    // TODO: handle exception
                } finally {
                    if (connection != null) {
                        // 释放资源
                        connection.disconnect();
                    }
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            listener.onComplete();
                        }
                    });
                }
            }
        });
    }

    private void setHttpHeader(URL url, HttpURLConnection conn, int start, int end) {

        try {
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Accept", "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*");
            conn.setRequestProperty("Accept-Language", "zh-CN");
            conn.setRequestProperty("Charset", "UTF-8");
            conn.setRequestProperty("Connection", "Keep-Alive");
            conn.setRequestProperty("Accept-Encoding", "identity");
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    public static String getByteMD5(byte[] data) {
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
