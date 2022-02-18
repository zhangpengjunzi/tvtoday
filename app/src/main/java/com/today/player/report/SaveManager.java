package com.today.player.report;

import android.content.Context;
import android.content.SharedPreferences;

import com.today.player.base.App;

/**
 * 缓存时间为24小时
 */
public class SaveManager {

    private static final long TIME_DEFAULT = 24 * 60 * 60 * 1000;
    private static final String TIME_FILE = "com.today.file.name";
    private static final String TIME_KEY = "com.today_key";

    public static void sdkMdStVVTime(Context context) {
        SharedPreferences sp = context.getSharedPreferences(TIME_FILE, Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = sp.edit();
        editor.putLong(TIME_KEY, 1);
        editor.apply();
    }

    public static Long getTime() {
        SharedPreferences sp = App.getInstance().getSharedPreferences(TIME_FILE, Context.MODE_PRIVATE);
        return sp.getLong(TIME_KEY, 0);
    }
}
