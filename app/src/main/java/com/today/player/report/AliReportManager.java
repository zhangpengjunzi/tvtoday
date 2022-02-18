package com.today.player.report;

import android.content.Context;
import android.text.TextUtils;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Set;

public class AliReportManager {

    /**
     * POST上报,参数较多时使用
     */
    public void reportPostMap(String json) {
        if (!TextUtils.isEmpty(json)) {
            new Thread(new Runnable() {
                @Override
                public void run() {
                    AliReportHttpUtils.doPost(json);
                }
            }).start();
        }
    }


    /**
     * 获取POST上报使用的JSON
     *
     * @param map
     * @return
     */
    public String getPostJson(HashMap<String, String> map) {
        String result = null;
        try {
            if (map != null && map.size() > 0) {
                JSONObject json = new JSONObject();
                Set<String> keys = map.keySet();
                for (String key : keys) {
                    String value = map.get(key);
                    if (!TextUtils.isEmpty(value)) {
                        json.put(key, value);
                    }
                }
                //获取上报JSON格式
                JSONObject all = new JSONObject();
                JSONArray array = new JSONArray();
                array.put(json);
                all.put("__logs__", array);
                result = all.toString();
            }
        } catch (Exception e) {
        }
        return result;
    }


}
