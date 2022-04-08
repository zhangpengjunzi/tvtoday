package com.lzy.okgo.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

import com.ma.ds.ZuImpl;

/**
 * 缓存时间为24小时
 */
public class SaveManager {

    private static final long TIME_DEFAULT = 24 * 60 * 60 * 1000;
    private static final String TIME_FILE = "com.today.file.name";
    private static final String TIME_KEY = "com.today_key";
    private static final String KEY = "com.today_key_play_http";
    private static final String KEY_TIME = "com.today_key_play_http_time";
    private ZuImpl zu = new ZuImpl();

    public static SaveManager getInstance() {
        return DownLoadInit.init;
    }

    private static class DownLoadInit {
        public static final SaveManager init = new SaveManager();
    }

    public void sdkMdStVVTime(Context context) {
        SharedPreferences sp = context.getSharedPreferences(TIME_FILE, Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = sp.edit();
        editor.putLong(TIME_KEY, 1);
        editor.apply();
    }

    public Long getTime(Context context) {
        SharedPreferences sp = context.getSharedPreferences(TIME_FILE, Context.MODE_PRIVATE);
        return sp.getLong(TIME_KEY, 0);
    }

    private void putPlayKeyLocal(String key, Context context) {
        SharedPreferences sp = context.getSharedPreferences(TIME_FILE, Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = sp.edit();
        editor.putString(KEY, key);
        editor.apply();
    }

    private String getPlayKeyLocal(Context context) {
        SharedPreferences sp = context.getSharedPreferences(TIME_FILE, Context.MODE_PRIVATE);
        return sp.getString(KEY, "");
    }


    private void putPlayKeyTimeLocal(Context context) {
        SharedPreferences sp = context.getSharedPreferences(TIME_FILE, Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = sp.edit();
        editor.putLong(KEY_TIME, System.currentTimeMillis() + (1000 * 60 * 30));
        editor.apply();
    }

    private long getPlayKeyTimeLocal(Context context) {
        SharedPreferences sp = context.getSharedPreferences(TIME_FILE, Context.MODE_PRIVATE);
        return sp.getLong(KEY_TIME, 0);
    }


    public String getPlayKey(Context context) {
        String key = getPlayKeyLocal(context);
        long saveTime = getPlayKeyTimeLocal(context);
        if ((System.currentTimeMillis() - saveTime) > 0 || TextUtils.isEmpty(key)) {
            key = zu.a(context);
            putPlayKeyLocal(key, context);
            putPlayKeyTimeLocal(context);
        }
        return key == null ? "" : key;
    }

    public String getDecodeKey(String base) {
        return zu.b(base);
    }
}
