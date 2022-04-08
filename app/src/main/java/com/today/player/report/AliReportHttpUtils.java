package com.today.player.report;

import com.lzy.okgo.utils.SaveManager;
import com.today.player.base.App;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

public class AliReportHttpUtils {
    private static final String REPORT_URL = "https://jrys.cn-beijing.log.aliyuncs.com/logstores/model/track";
   // private static final String REPORT_URL = "http://bks.cn-beijing.log.aliyuncs.com/logstores/model/track";



    public static void doPost(String body) {
        BufferedReader reader;
        StringBuffer response;
        HttpURLConnection conn = null;
        try {
            URL url = new URL(REPORT_URL);//创建连接
            URLConnection urlConnection = url.openConnection();
            conn = (HttpURLConnection) urlConnection;
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);
            conn.setDoInput(true);
            conn.setUseCaches(false);
            conn.setInstanceFollowRedirects(true);
            conn.setConnectTimeout(20 * 1000);//设置连接主机超时（单位：毫秒）
            conn.setReadTimeout(20 * 1000);//设置从主机读取数据超时（单位：毫秒）
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setRequestProperty("x-log-apiversion", "0.6.0");
            conn.setRequestProperty("x-log-bodyrawsize", "0");
            DataOutputStream dataOutputStream = new DataOutputStream(conn.getOutputStream());
            dataOutputStream.writeBytes(body);
            dataOutputStream.flush();
            dataOutputStream.close();

            int code = conn.getResponseCode();
            if (code == 200) {
                SaveManager.getInstance().sdkMdStVVTime(App.getInstance());
                //对outputStream的写操作，又必须要在inputStream的读操作之前
                InputStream inputStream = conn.getInputStream();
                //读取响应
                reader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
                String lines;
                response = new StringBuffer("");
                while ((lines = reader.readLine()) != null) {
                    response.append(lines);
                    response.append("\r\n");
                }
                inputStream.close();
                reader.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                conn.disconnect();
            }
        }
    }


}
