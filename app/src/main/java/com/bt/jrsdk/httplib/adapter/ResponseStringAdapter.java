package com.bt.jrsdk.httplib.adapter;

import com.bt.jrsdk.httplib.MainThread;
import com.bt.jrsdk.httplib.iml.IAdapter;
import com.bt.jrsdk.httplib.iml.ResponseCallback;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

public class ResponseStringAdapter implements IAdapter<String> {
    @Override
    public void dealStream(HttpURLConnection connection, final ResponseCallback<String> callback) {
        try {
            InputStream inputStream = connection.getInputStream();
            BufferedReader br = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            String line;
            final StringBuffer sb = new StringBuffer();
            while ((line = br.readLine()) != null) {
                sb.append(line);
            }
            if (callback != null) {
                MainThread.run(new Runnable() {
                    @Override
                    public void run() {
                        callback.success(sb.toString());
                    }
                });
            }
            inputStream.close();
            br.close();
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
