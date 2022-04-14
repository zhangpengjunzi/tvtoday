package com.bt.ttad;

import android.app.Activity;
import android.text.TextUtils;

import com.bt.admanager.AdWeightManager;
import com.bt.admanager.TTAdManagerHolder;
import com.bt.jrsdk.activity.TTAdPreMovieActivity;
import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.listener.VideoAdListener;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdObserver;
import com.bt.jrsdk.util.UIUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTSplashAd;
import com.today.player.ad.GdtAdListener;
import com.today.player.api.ApiConfig;
import com.today.player.base.App;
import com.today.player.bean.PlayerModel;

import java.util.List;
import java.util.Random;

import me.jessyan.autosize.utils.AutoSizeUtils;

public class TTAd extends BaseAd implements TTAdNative.SplashAdListener {

    private SplashAdListener listener;
    private VideoAdListener videoAdListener;
    private GdtAdListener mListener;
    private int adType;
    private TTAdNative mTTAdNative;
    private String sigPid;
    private Activity activity;

    public TTAd(Activity activity, String pid, GdtAdListener listener, int type) {
        super(activity, pid);
        mListener = listener;
        this.activity = activity;
        sigPid = getSigPid();
        if (!TextUtils.isEmpty(sigPid)) {
            mTTAdNative = TTAdManagerHolder.get().createAdNative(activity);
        }
        adType = type;
    }

    @Override
    protected void loadCurrentAd() {
        if (mTTAdNative != null) {
            float splashWidthDp = 0;
            float splashHeightDp = 0;
            if (adType != 0) {
                int splashWidthPx = AutoSizeUtils.pt2px(App.getInstance(), 800);
                int splashHeightPx = AutoSizeUtils.pt2px(App.getInstance(), 400);
                splashWidthDp = UIUtils.px2dip(App.getInstance(), splashWidthPx);
                splashHeightDp = UIUtils.px2dip(App.getInstance(), splashHeightPx);
            } else {
                splashWidthDp = UIUtils.getScreenWidthDp(App.getInstance());
                int screenHeightPx = UIUtils.getScreenHeight(App.getInstance());
                splashHeightDp = UIUtils.px2dip(App.getInstance(), screenHeightPx);
                if (splashWidthDp < splashHeightDp) {
                    float index = splashWidthDp;
                    splashWidthDp = splashHeightDp;
                    splashHeightDp = index;
                }
            }
            AdSlot adSlot = new AdSlot.Builder()
                    .setCodeId(sigPid)
                    .setSupportDeepLink(true)
                    .setExpressViewAcceptedSize(splashWidthDp, splashHeightDp) // 单位是dp
                    .build();
            mTTAdNative.loadSplashAd(adSlot, this);
        } else {
            mListener.noAd();
        }
    }

    @Override
    public void showAd() {
        if (mTTAdNative != null && AdWeightManager.getInstance().ttAds.size() > 0) {
            AdWeightManager.getInstance().setGdtAdType(adType);
            go2AdActivity(TTAdPreMovieActivity.class);
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
        if (mTTAdNative != null) {
            mTTAdNative = null;
        }
        AdWeightManager.getInstance().ttAds.clear();
        AdListenerManager.getInstance().recycleSplashListener(pid);
        AdListenerManager.getInstance().recycleVideoListener(pid);
        AdObserver.getInstance().recycleVideo(pid);
    }


    @Override
    public void onError(int i, String s) {
        if (mListener != null) {
            mListener.noAd();
        }
    }

    @Override
    public void onTimeout() {
        if (mListener != null) {
            mListener.noAd();
        }
    }

    @Override
    public void onSplashAdLoad(TTSplashAd ttSplashAd) {
        if (ttSplashAd != null) {
            AdWeightManager.getInstance().setSplashAd(ttSplashAd);
            if (listener != null) {
                listener.onLoaded();
            }
            if (videoAdListener != null) {
                videoAdListener.onLoaded();
            }
        }
    }


    private String getSigPid() {
        String gdtPid = "";
        PlayerModel.TTadDTO txadDTO = ApiConfig.get().getTtadDTO();
        if (txadDTO != null) {
            Random random = new Random();
            List<String> pauseList = txadDTO.getTiepian_image();
            if (pauseList != null && pauseList.size() > 0) {
                gdtPid = pauseList.get(random.nextInt(pauseList.size()));
            }
        }
        return gdtPid;
    }

}
