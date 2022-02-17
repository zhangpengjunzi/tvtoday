package com.bt.jrsdk.httplib.adapter;

import com.bt.jrsdk.httplib.MainThread;
import com.bt.jrsdk.httplib.iml.IAdapter;
import com.bt.jrsdk.httplib.iml.ResponseCallback;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

public class ResponseJsonObjectAdapter implements IAdapter<JSONObject> {
    @Override
    public void dealStream(HttpURLConnection connection, final ResponseCallback<JSONObject> callback) {
        try {
            InputStream inputStream = connection.getInputStream();
            BufferedReader br = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            String line;
            StringBuffer sb = new StringBuffer();
            while ((line = br.readLine()) != null) {
                sb.append(line);
            }
            final JSONObject jsonObject = new JSONObject(sb.toString());
            if (callback != null) {
                MainThread.run(new Runnable() {
                    @Override
                    public void run() {
                        callback.success(jsonObject);
                    }
                });
            }
            inputStream.close();
            br.close();
        } catch (final JSONException e) {
            e.printStackTrace();
            if (callback != null) {
                MainThread.run(new Runnable() {
                    @Override
                    public void run() {
                        callback.fail(e.toString());

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
