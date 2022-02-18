package com.bt.jrsdk.httplib.adapter;
import com.bt.jrsdk.httplib.MainThread;
import com.bt.jrsdk.httplib.iml.IAdapter;
import com.bt.jrsdk.httplib.iml.ResponseCallback;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

public class ResponseByteAdapter implements IAdapter<byte[]> {
    @Override
    public void dealStream(HttpURLConnection connection, final ResponseCallback<byte[]> callback) {
        try {
            InputStream inputStream = connection.getInputStream();
            BufferedInputStream bis = new BufferedInputStream(inputStream);
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            byte[] bytes = new byte[1024];
            int len = -1;
            while ((len = bis.read(bytes)) != -1) {
                baos.write(bytes, 0, len);
            }
            inputStream.close();
            bis.close();
            // 响应的数据
            final byte[] response = baos.toByteArray();
            if (callback != null) {
                MainThread.run(new Runnable() {
                    @Override
                    public void run() {
                        callback.success(response);
                    }
                });
            }
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
