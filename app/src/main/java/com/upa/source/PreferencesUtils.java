package com.upa.source;

import android.content.Context;
import android.content.SharedPreferences;

public class PreferencesUtils {

    /**
     * 写入string 数据
     *
     * @param con
     * @param fileName
     * @param dataName
     * @param data
     */
    public static void writeString(Context con, String fileName, String dataName, String data) {
        SharedPreferences sp = con.getSharedPreferences(fileName, Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = sp.edit();
        editor.putString(dataName, data);
        editor.commit();
    }


    /**
     * 得到String数据
     *
     * @param con
     * @param fileName
     * @param dataName
     * @param defaultData
     * @return
     */
    public static String getString(Context con, String fileName, String dataName, String defaultData) {
        String data = defaultData;
        SharedPreferences sp = con.getSharedPreferences(fileName, Context.MODE_PRIVATE);
        data = sp.getString(dataName, defaultData);
        return data;
    }

    /**
     * 写入long数据
     *
     * @param con
     * @param fileName
     * @param dataName
     * @param data
     */
    public static void writeLong(Context con, String fileName, String dataName, long data) {
        SharedPreferences sp = con.getSharedPreferences(fileName, Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = sp.edit();
        editor.putLong(dataName, data);
        editor.commit();
    }

    /**
     * 得到long数据
     *
     * @param con
     * @param fileName
     * @param dataName
     * @param defaultData
     * @return
     */
    public static long getLong(Context con, String fileName, String dataName, long defaultData) {
        long data = defaultData;
        SharedPreferences sp = con.getSharedPreferences(fileName, Context.MODE_PRIVATE);
        data = sp.getLong(dataName, defaultData);
        return data;
    }

}
