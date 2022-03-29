package com.bt.txad;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;

import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.activity.TTAdFullActivity;
import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.config.AdType;
import com.bt.jrsdk.config.Config;
import com.bt.jrsdk.httplib.config.HttpMethod;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.listener.VideoAdListener;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdObserver;
import com.bt.jrsdk.manager.AdStartManager;
import com.bt.jrsdk.util.NetUtil;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.today.player.ad.GdtAdListener;
import com.today.player.api.ApiConfig;
import com.today.player.base.App;
import com.today.player.bean.PlayerModel;
import com.today.player.ui.activity.SplashActivity;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class TTFeedAd extends BaseAd {

    private TTAdNative ttAdNative;
    private String mPid;
    private int mAdType;
    private SplashAdListener listener;
    private VideoAdListener videoAdListener;
    private GdtAdListener mGdtListener;

    public TTFeedAd(Activity activity, String pid, int adType, GdtAdListener gdtAdListener) {
        super(activity, pid);
        ttAdNative = TTAdSdk.getAdManager().createAdNative(App.getInstance());
        mAdType = adType;
        mGdtListener = gdtAdListener;
    }

    @Override
    protected void loadCurrentAd() {
        if (ttAdNative != null) {
            loadTT();
        }
    }

    @Override
    public void showAd() {
        if (ttAdNative != null && AdWeightManager.getInstance().canJump()) {
            AdWeightManager.getInstance().setGdtAdType(mAdType);
            go2AdActivity(TTAdFullActivity.class);
            reportGdtShow();
        }
    }

    public void setSplashListener(SplashAdListener listener) {
        this.listener = listener;
        AdListenerManager.getInstance().registerSplashListener(pid, this.listener);
    }

    public void setVideoListener(VideoAdListener listener) {
        this.videoAdListener = listener;
        AdListenerManager.getInstance().registerVideoListener(pid, this.videoAdListener);
    }

    @Override
    protected void recycleAdAndListener() {
        AdListenerManager.getInstance().recycleSplashListener(pid);
        AdListenerManager.getInstance().recycleVideoListener(pid);
        AdObserver.getInstance().recycleVideo(pid);
    }


    private void loadTT() {
        AdSlot adSlot = new AdSlot.Builder()
                .setCodeId(getGdtPid())
                .setAdCount(1)
                .build();
        ttAdNative.loadFeedAd(adSlot, new TTAdNative.FeedAdListener() {
            @Override
            public void onError(int code, String message) {
                if (mGdtListener != null) {
                    mGdtListener.noAd();
                } else {
                    if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                        AdListenerManager.getInstance().getSplashListener(pid).onError(Config.ACTIVITY_NULL, Config.CODE_ACTIVITY_NULL);
                        AdListenerManager.getInstance().getSplashListener(pid).onNoAd();
                        AdListenerManager.getInstance().getSplashListener(pid).onFinish();
                    }
                    if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                        AdListenerManager.getInstance().getVideoListener(pid).onError(Config.ACTIVITY_NULL, Config.CODE_ACTIVITY_NULL);
                        AdListenerManager.getInstance().getVideoListener(pid).onNoAd();
                        AdListenerManager.getInstance().getVideoListener(pid).onFinish();
                    }
                }
            }

            @Override
            public void onFeedAdLoad(List<com.bytedance.sdk.openadsdk.TTFeedAd> ttFeedAd) {
                if (ttFeedAd != null && ttFeedAd.size() > 0) {
                    //跳转
                    AdWeightManager.getInstance().gdtAds = ttFeedAd;
                    if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                        AdListenerManager.getInstance().getSplashListener(pid).onLoaded();
                    }
                    if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                        AdListenerManager.getInstance().getVideoListener(pid).onLoaded();
                    }
                    reportGdtLoad();
                }
            }
        });
    }


    private void reportGdtLoad() {
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("reqId", requestId);
        reportParams.put("uid", AdStartManager.uid);
        reportParams.put("adType", mAdType);
        reportParams.put("pid", pid);
        reportParams.put("adContent", content);
        reportParams.put("ts", System.currentTimeMillis());
        reportParams.put("state", "req");
        reportParams.put("ad_model", "pangle");
        reportParams.put("gdt_pid", mPid);

        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }


    private void reportGdtShow() {
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("reqId", requestId);
        reportParams.put("adType", mAdType);
        reportParams.put("uid", AdStartManager.uid);
        reportParams.put("ts", System.currentTimeMillis());
        reportParams.put("state", "show");
        reportParams.put("ad_model", "pangle");
        reportParams.put("gdt_pid", mPid);
        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }


    public String getGdtPid() {
        String gdtPid = "";
        PlayerModel.TxadDTO txadDTO = ApiConfig.get().getTxad();
        if (txadDTO != null) {
            Random random = new Random();
            boolean ad = true;
            if (mAdType == 0) {
                int count = AdWeightManager.getInstance().getSplashImageCount();
                ad = count == 0 || count % 3 != 0;
            } else {
                ad = random.nextInt(3) != 0;
            }
            if (ad) {
                List<String> imageList = txadDTO.getTiepian_image();
                if (imageList != null && imageList.size() > 0) {
                    gdtPid = imageList.get(random.nextInt(imageList.size()));
                }
            } else {
                List<String> videoList = txadDTO.getTiepian_video();
                if (videoList != null && videoList.size() > 0) {
                    gdtPid = videoList.get(random.nextInt(videoList.size()));
                }
            }
        }
        return gdtPid;
    }
}

