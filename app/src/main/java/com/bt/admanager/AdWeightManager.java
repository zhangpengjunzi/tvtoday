package com.bt.admanager;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class AdWeightManager {
    private Map<String, Integer> weightMap = new HashMap<>();
    private List<String> adList = new ArrayList<>();

    private AdWeightManager() {

    }

    public static AdWeightManager getInstance() {
        return AdWeightManager.SingletonHolder.sInstance;
    }

    private static class SingletonHolder {
        private static final AdWeightManager sInstance = new AdWeightManager();
    }

    public void setAdInfoArray(JSONArray jsonArray) {
        weightMap.clear();
        if (jsonArray != null && jsonArray.length() != 0) {
            //有权重配置
            for (int i = 0; i < jsonArray.length(); i++) {
                JSONObject adInfo = jsonArray.optJSONObject(i);
                String ad = adInfo.optString("ad");
                int weight = adInfo.optInt("weight");
                weightMap.put(ad, weight);
            }
            initAdList();
//            int tx = 0;
//            int md = 0;
//            for (int j = 0; j < 320; j++) {
//                if (canGetAd()) {
//                    String ad = getCurrentAd();
//                    if (ad.equals("tx")) {
//                        tx++;
//                    } else {
//                        md++;
//                    }
//                }
//            }
//            LogUtil.d("tx = " + tx + " ,md = " + md);

        }

    }

    private void initAdList() {
        for (Map.Entry<String, Integer> entry : weightMap.entrySet()) {
            String ad = entry.getKey();
            int weight = entry.getValue();
            if (weight != 0) {
                for (int i = 0; i < weight; i++) {
                    adList.add(ad);
                }
            }

        }
    }

    public boolean canGetAd() {
        return adList.size() > 0;
    }

    public String getCurrentAd() {
        Random random = new Random();
        int index = random.nextInt(adList.size());
        return adList.get(index);
    }
}
