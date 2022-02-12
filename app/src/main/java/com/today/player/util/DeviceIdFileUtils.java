package com.today.player.util;

import android.os.Environment;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

public class DeviceIdFileUtils {

    private String fileName = ".todayplayer_id.txt";
    private String sdPath = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath();

    private String getSdPath() {
        if (Environment.getExternalStorageState().equals(Environment.MEDIA_MOUNTED)) {
            return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath();
        } else {
            return Environment.getRootDirectory().getPath();
        }
    }

    public String read() {
        try {
            //如果手机插入了SD卡，而且应用程序具有访问SD的权限
            if (Environment.getExternalStorageState().equals(Environment.MEDIA_MOUNTED)) {
                //获取指定文件对应的输入流
                FileInputStream fis = new FileInputStream(getSdPath() + File.separator + fileName);
                //将指定输入流包装成BufferedReader
                BufferedReader br = new BufferedReader(new
                        InputStreamReader(fis));
                StringBuilder sb = new StringBuilder("");
                String line = null;
                while ((line = br.readLine()) != null) {
                    sb.append(line);
                }
                return sb.toString();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public void write(String content) {
        try {
            //如果手机插入了SD卡，而且应用程序具有访问SD的权限
            if (Environment.getExternalStorageState().equals(Environment.MEDIA_MOUNTED)) {
                FileOutputStream fos = new FileOutputStream(new File(getSdPath(), fileName));
                OutputStreamWriter osw = new OutputStreamWriter(fos);
                BufferedWriter bw = new BufferedWriter(osw);
                bw.write(content); // content为你需要写入的字符串
                bw.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
