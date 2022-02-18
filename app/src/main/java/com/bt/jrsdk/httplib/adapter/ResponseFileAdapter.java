package com.bt.jrsdk.httplib.adapter;
import com.bt.jrsdk.httplib.MainThread;
import com.bt.jrsdk.httplib.iml.IAdapter;
import com.bt.jrsdk.httplib.iml.ResponseCallback;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.net.HttpURLConnection;

public class ResponseFileAdapter implements IAdapter<File> {
    private String mPath;

    public ResponseFileAdapter(String path) {
        mPath = path;
    }

    @Override
    public void dealStream(HttpURLConnection connection, final ResponseCallback<File> callback) {
        try {
            //获取文件长度
            Double size = (double) connection.getContentLength();
            InputStream inputStream = connection.getInputStream();
            // 通过下载链接获取下载文件的文件名
            String filePathUrl = connection.getURL().getFile();
            String fileName = filePathUrl.substring(filePathUrl.lastIndexOf(File.separator) + 1);
            int count = 0;
            // 计算上传进度
            Long progress = 0L;
            byte[] bytes = new byte[2048];
            //文件保存位置
            File saveDir = new File(mPath);
            if (!saveDir.exists()) {
                saveDir.mkdir();
            }
            final File file = new File(saveDir + File.separator + fileName);
            OutputStream outputStream = new FileOutputStream(file);

            while ((count = inputStream.read(bytes)) != -1) {
                outputStream.write(bytes, 0, count);
                progress += count;
                //换算进度
                double d = (new BigDecimal(progress / size).setScale(2, BigDecimal.ROUND_HALF_UP)).doubleValue();
                double d1 = d * 100;
                //传入的值为1-100
//                Log.d("DOWNLOAD", (int) d1 + "");
            }
            if (callback != null) {
                MainThread.run(new Runnable() {
                    @Override
                    public void run() {
                        callback.success(file);
                    }
                });
            }
            inputStream.close();
            outputStream.close();
        } catch (final IOException e) {
            e.printStackTrace();
            if (callback != null) {
                MainThread.run(new Runnable() {
                    @Override
                    public void run() {
                        callback.fail(e.toString());
                    }
                });
            }
        } finally {
            if (connection != null) {
                connection.disconnect();
            }
        }

    }
}
