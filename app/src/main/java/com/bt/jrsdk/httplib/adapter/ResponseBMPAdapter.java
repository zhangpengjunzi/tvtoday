package com.bt.jrsdk.httplib.adapter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

import com.bt.jrsdk.httplib.MainThread;
import com.bt.jrsdk.httplib.iml.IAdapter;
import com.bt.jrsdk.httplib.iml.ResponseCallback;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

public class ResponseBMPAdapter implements IAdapter<Bitmap> {
    Bitmap map = null;

    @Override
    public void dealStream(HttpURLConnection connection, final ResponseCallback<Bitmap> callback) {
        try {
            InputStream inputStream = connection.getInputStream();
            map = BitmapFactory.decodeStream(inputStream);
            inputStream.close();
            // 响应的数据
            if (callback != null) {
                MainThread.run(new Runnable() {
                    @Override
                    public void run() {
                        callback.success(map);
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
