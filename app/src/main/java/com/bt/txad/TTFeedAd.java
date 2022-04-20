package com.bt.txad;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;

import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.listener.VideoAdListener;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdObserver;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.today.player.ad.BaseVideoAd;
import com.today.player.ad.GdtAdListener;
import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;

import java.util.List;
import java.util.Random;

public class TTFeedAd extends BaseAd {

    private TTAdNative ttAdNative;
    private int mAdType;
    private SplashAdListener listener;
    private VideoAdListener videoAdListener;
    private GdtAdListener mGdtListener;
    private String ttPid;
    private String adKinds;
    private TTRewardVideoAd rewardVideoAd;
    private TTFullScreenVideoAd fullScreenVideoAd;
    private Activity activity;

    public TTFeedAd(Activity activity, String pid, int adType, GdtAdListener gdtAdListener, String adKinds) {
        super(activity, pid);
        this.adKinds = adKinds;
        ttPid = getSigPid();
        if (!TextUtils.isEmpty(ttPid)) {
            ttAdNative = TTAdSdk.getAdManager().createAdNative(activity);
        }
        this.activity = activity;
        mAdType = adType;
        mGdtListener = gdtAdListener;
    }

    @Override
    protected void loadCurrentAd() {
        if (ttAdNative != null) {
            switch (adKinds) {
                case BaseVideoAd.AD_PAUSEVIDEO:
                    loadFullVideo();
                    break;
                case BaseVideoAd.AD_REWARDVIDEO:
                    loadReWard();
                    break;
            }
        } else {
            mGdtListener.noAd();
        }
    }

    @Override
    public void showAd() {
        switch (adKinds) {
            case BaseVideoAd.AD_PAUSEVIDEO:
                if (fullScreenVideoAd != null) {
                    fullScreenVideoAd.showFullScreenVideoAd(activity);
                }
                break;
            case BaseVideoAd.AD_REWARDVIDEO:
                if (rewardVideoAd != null) {
                    rewardVideoAd.showRewardVideoAd(activity);
                }
                break;
        }
        /*if (ttAdNative != null && AdWeightManager.getInstance().canJump()) {
            AdWeightManager.getInstance().setGdtAdType(mAdType);
            go2AdActivity(TTAdFullActivity.class);
        }*/
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
        AdWeightManager.getInstance().ttAds.clear();
        if (rewardVideoAd != null) {
            rewardVideoAd = null;
        }
        if (fullScreenVideoAd != null) {
            fullScreenVideoAd = null;
        }
        if (ttAdNative != null) {
            ttAdNative = null;
        }
    }


    private void loadReWard() {
        AdSlot adSlot = new AdSlot.Builder()
                .setCodeId(ttPid)
                .build();
        ttAdNative.loadRewardVideoAd(adSlot, new TTAdNative.RewardVideoAdListener() {
            @Override
            public void onError(int code, String message) {
                failListener();
            }

            @Override
            public void onRewardVideoCached() {

            }

            @Override
            public void onRewardVideoCached(TTRewardVideoAd ttRewardVideoAd) {

            }

            @Override
            public void onRewardVideoAdLoad(TTRewardVideoAd ttRewardVideoAd) {
                rewardVideoAd = ttRewardVideoAd;
                ttRewardVideoAd.setRewardAdInteractionListener(new TTRewardVideoAd.RewardAdInteractionListener() {
                    @Override
                    public void onAdVideoBarClick() {

                    }

                    @Override
                    public void onAdClose() {
                        closeListener();
                    }

                    @Override
                    public void onVideoComplete() {

                    }

                    @Override
                    public void onVideoError() {
                        failListener();
                    }

                    @Override
                    public void onRewardVerify(boolean rewardVerify, int rewardAmount, String rewardName, int errorCode, String errorMsg) {

                    }

                    @Override
                    public void onRewardArrived(boolean b, int i, Bundle bundle) {

                    }

                    @Override
                    public void onSkippedVideo() {

                    }

                    @Override
                    public void onAdShow() {
                        showListener();
                    }
                });
                loadListener();
            }
        });
    }


    private void loadFullVideo() {
        AdSlot adSlot = new AdSlot.Builder()
                .setCodeId(ttPid)
                .build();
        ttAdNative.loadFullScreenVideoAd(adSlot, new TTAdNative.FullScreenVideoAdListener() {
            @Override
            public void onError(int code, String message) {
                failListener();
            }

            @Override
            public void onFullScreenVideoAdLoad(TTFullScreenVideoAd ttFullScreenVideoAd) {
                fullScreenVideoAd = ttFullScreenVideoAd;
                ttFullScreenVideoAd.setFullScreenVideoAdInteractionListener(new TTFullScreenVideoAd.FullScreenVideoAdInteractionListener() {
                    @Override
                    public void onAdShow() {
                        showListener();
                    }

                    @Override
                    public void onAdVideoBarClick() {

                    }

                    @Override
                    public void onAdClose() {
                        closeListener();
                    }

                    @Override
                    public void onVideoComplete() {

                    }

                    @Override
                    public void onSkippedVideo() {

                    }
                });
                loadListener();
            }

            @Override
            public void onFullScreenVideoCached() {

            }

            @Override
            public void onFullScreenVideoCached(TTFullScreenVideoAd ttFullScreenVideoAd) {

            }
        });
    }


    private String getSigPid() {
        String gdtPid = "";
        PlayerModel.TTadDTO txadDTO = ApiConfig.get().getTxad();
        if (txadDTO != null) {
            Random random = new Random();
            List<String> pauseList = null;
            switch (adKinds) {
                case BaseVideoAd.AD_PAUSEVIDEO:
                    pauseList = txadDTO.getPause_image();
                    break;
                case BaseVideoAd.AD_REWARDVIDEO:
                    pauseList = txadDTO.getTiepian_video();
                    break;
            }
            if (pauseList != null && pauseList.size() > 0) {
                gdtPid = pauseList.get(random.nextInt(pauseList.size()));
            }
        }
        return gdtPid;
    }


    private void loadListener() {
        if (listener != null) {
            listener.onLoaded();
        }
        if (videoAdListener != null) {
            videoAdListener.onLoaded();
        }
    }

    private void showListener() {
        if (listener != null) {
            listener.onShow();
        }
        if (videoAdListener != null) {
            videoAdListener.onShow();
        }
    }

    private void closeListener() {
        if (listener != null) {
            listener.onClose();
            listener.onFinish();
        }
        if (videoAdListener != null) {
            videoAdListener.onClose();
            videoAdListener.onFinish();
        }
    }

    private void failListener() {
        if (mGdtListener != null) {
            mGdtListener.noAd();
        }
    }

}

