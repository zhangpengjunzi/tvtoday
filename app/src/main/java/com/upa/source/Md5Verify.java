package com.upa.source;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;


import java.math.BigInteger;
import java.security.MessageDigest;

public class Md5Verify {

    private static Md5Verify ourInstance = null;

    private Md5Verify() {
    }

    public static Md5Verify getInstance() {
        // 加入双重校验锁
        // 校验锁1：第1个if
        if (ourInstance == null) {
            synchronized (Md5Verify.class) {
                // 校验锁2：第2个 if
                if (ourInstance == null) {
                    ourInstance = new Md5Verify();
                }
            }
        }
        return ourInstance;
    }

    public static final String SOURCE_FILE = "sourcefile";
    public static final String SOURCE_MD5 = "sourcemd5";
    public static final String SOURCE_TIME = "sourcetime";

    public String getData(Context context) {
        return PreferencesUtils.getString(context, SOURCE_FILE, SOURCE_MD5, "");
    }

    public void setData(Context context, String data) {
        PreferencesUtils.writeString(context, SOURCE_FILE, SOURCE_MD5, data);
    }

    public Long getTime(Context context){
        return PreferencesUtils.getLong(context, SOURCE_FILE, SOURCE_TIME, 0);
    }

    public void setTime(Context context,long time){
        PreferencesUtils.writeLong(context, SOURCE_FILE, SOURCE_TIME, time);
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

    public void setContent(String data, Context context) {
        if (!TextUtils.isEmpty(data) && context != null) {
            setData(context,data);
            setTime(context,System.currentTimeMillis()+24*60*1000*60);
        }
    }
}
