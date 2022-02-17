package com.bt.jrsdk.util;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class JsonUtil {
//    public static Map<String, Object> json2Map(String json) {
//        Map<String, Object> map = new HashMap();
//        try {
//            JSONObject jsonObject = new JSONObject(json);
//            Iterator<String> iterator = jsonObject.keys();
//            while (iterator.hasNext()) {
//                String key = iterator.next();
//                Object value = jsonObject.get(key);
//                map.put(key, value);
//            }
//        } catch (JSONException e) {
//            e.printStackTrace();
//        }
//        return map;
//    }

    public static JSONObject Map2Json(Map<String, Object> map) {
        JSONObject jsonObject = new JSONObject();
        if (map != null && !map.isEmpty()) {
            for (String key : map.keySet()) {
                try {
                    jsonObject.put(key, map.get(key));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return jsonObject;
    }
}
