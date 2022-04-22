package com.bt.admanager;

import com.baidu.mobads.sdk.api.NativeResponse;
import com.bytedance.sdk.openadsdk.TTSplashAd;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.today.player.ad.BaseVideoAd;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AdWeightManager {
    private Map<String, Integer> weightMap = new HashMap<>();
    private List<String> adList = new ArrayList<>();
    public List<NativeUnifiedADData> gdtAds = new ArrayList();
    public List<TTSplashAd> ttAds = new ArrayList<>();
    public List<NativeResponse> bdAds = new ArrayList<>();
    private int splashImageCount;
    private int gdtAdType;
    private boolean isPlayAd = true;//是否播放广告
    private int currentRewardSize = 0;//激励视频按顺序轮询广告播放
    private int currentPauseSize = 0;//插屏广告按顺序轮询广告播放

    public boolean addRewardSize() {
        currentRewardSize++;
        if (adList != null && currentRewardSize >= adList.size()) {
            currentRewardSize = 0;
            return true;
        }
        return false;
    }

    public boolean addPauseSize() {
        currentPauseSize++;
        if (adList != null && currentPauseSize >= adList.size()) {
            currentPauseSize = 0;
            return true;
        }
        return false;
    }

    public boolean isPlayAd() {
        return isPlayAd;
    }

    public void setPlayAd(boolean playAd) {
        isPlayAd = playAd;
    }

    private AdWeightManager() {

    }

    public static AdWeightManager getInstance() {
        return AdWeightManager.SingletonHolder.sInstance;
    }

    private static class SingletonHolder {
        private static final AdWeightManager sInstance = new AdWeightManager();
    }

    public int getGdtAdType() {
        return gdtAdType;
    }

    public void setGdtAdType(int gdtAdType) {
        this.gdtAdType = gdtAdType;
    }

    public int getSplashImageCount() {
        return splashImageCount;
    }

    public void splashImageCountAdd() {
        splashImageCount++;
    }

    public void setSplashAd(TTSplashAd ad) {
        ttAds.clear();
        ttAds.add(ad);
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


    /*public String getCurrentAd() {
        if (adList.size() > 0) {
            Random random = new Random();
            int index = random.nextInt(adList.size());
            return adList.get(index);
        } else {
            return BaseVideoAd.MD_AD;
        }
    }*/


    public String getCurrentAd(String adType) {
        if (adList != null && adList.size() > 0) {
            if (adType.equals(BaseVideoAd.AD_REWARDVIDEO)) {
                return adList.get(currentRewardSize);
            } else {
                return adList.get(currentPauseSize);
            }
        } else {
            return BaseVideoAd.MD_AD;
        }
    }

    public boolean canJump() {
        return gdtAds.size() > 0;
    }
}
