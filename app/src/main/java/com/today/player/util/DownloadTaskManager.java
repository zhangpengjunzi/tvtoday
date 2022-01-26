package com.today.player.util;

import com.today.player.base.App;
import com.today.player.http.HttpLoggingInterceptor;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;

import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class DownloadTaskManager {
    private OkHttpClient okHttpClient;
    private int downloadLimit = 2;
    private int nowDownloadTasks = 0;

    public static DownloadTaskManager getInstance() {
        return DownloadTaskManager.SingletonHolder.sInstance;
    }

    private boolean canDownload() {
        return nowDownloadTasks <= downloadLimit;
    }

    private static class SingletonHolder {
        private static final DownloadTaskManager sInstance = new DownloadTaskManager();
    }

    private DownloadTaskManager() {
        HttpLoggingInterceptor logging = new HttpLoggingInterceptor();
//        if (InitConfig.getInstance().isDebug()) {
//        logging.setLevel(HttpLoggingInterceptor.Level.BODY);
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

    public void downLoad(String url, int position, downLoadTaskCallback callback) {
        nowDownloadTasks++;
        if (!canDownload()) {
            callback.onTooManyTasks(url, position);
            nowDownloadTasks --;
            return;
        }
        Request request = new Request.Builder().method("GET", null).url(url).build();
        Call call = okHttpClient.newCall(request);
        call.enqueue(new Callback() {
            @Override
            public void onFailure(Call call, IOException e) {
                LogUtil.d("fail " + e.toString());
                callback.onFail(url, position);
                nowDownloadTasks --;
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                LogUtil.d("success ");
                File directory = App.getInstance().getCacheDir();
                File downloadDir = new File(directory, "down");
                if (!downloadDir.exists()) {
                    downloadDir.mkdir();
                }
                long contentLength = response.body().contentLength();
                long downloadLength = 0;
                LogUtil.d("downloadDir = " + downloadDir.getAbsolutePath());
                String fileName = MD5.string2MD5(url) +System.currentTimeMillis()+".apk";
                File file = new File(downloadDir, fileName);
                if (file.exists()) {
                    file.delete();
                }
                InputStream is = null;
                FileOutputStream fileOutputStream = null;
                try {
                    is = response.body().byteStream();
                    fileOutputStream = new FileOutputStream(file, true);
                    byte[] buffer = new byte[2048];//缓冲数组2kB
                    int len;
                    while ((len = is.read(buffer)) != -1) {
                        fileOutputStream.write(buffer, 0, len);
                        downloadLength += len;
                        int progress = (int) (downloadLength * 1.0f / contentLength * 100);
                        callback.onProgress(url, position, progress);
                    }
                    fileOutputStream.flush();
                    callback.onSuccess(url, fileName, file.getAbsolutePath(), position);
                }catch (Exception e){
                    e.printStackTrace();
                } finally {
                    //关闭IO流
                    LogUtil.d("finally "+position);
                    is.close();
                    fileOutputStream.close();
                    nowDownloadTasks--;
                }

            }
        });
    }

    public interface downLoadTaskCallback {
        void onSuccess(String url, String fileName, String filePath, int position);

        void onFail(String url, int position);

        void onProgress(String url, int position, int progress);

        void onTooManyTasks(String url, int position);
    }

}
