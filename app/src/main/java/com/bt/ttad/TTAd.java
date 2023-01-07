package com.bt.ttad;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;

import com.bt.admanager.AdWeightManager;
import com.bt.admanager.TTAdManagerHolder;
import com.bt.jrsdk.ads.AdConfig;
import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.listener.VideoAdListener;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdObserver;
/*import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;*/
import com.today.player.ad.BaseVideoAd;
import com.today.player.ad.GdtAdListener;
import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;

import java.util.List;
import java.util.Random;

public class TTAd/* extends BaseAd*/ {

   /* private SplashAdListener listener;
    private VideoAdListener videoAdListener;
    private GdtAdListener mListener;
    private int adType;
    private TTAdNative mTTAdNative;
    private String sigPid;
    private Activity activity;
    private String adKinds;
    private TTRewardVideoAd mRewardVideoAd;
    private TTFullScreenVideoAd mttFullVideoAd;

    public TTAd(Activity activity, String pid, GdtAdListener listener, int type, String adKinds) {
        super(activity, pid);
        mListener = listener;
        this.adKinds = adKinds;
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
            switch (adKinds) {
                case BaseVideoAd.AD_REWARDVIDEO:
                    loadReward();
                    break;
                case BaseVideoAd.AD_FULLVIDEO:
                case BaseVideoAd.AD_PAUSEVIDEO:
                    loadFullVideo();
                    break;
            }
        } else {
            mListener.noAd();
        }
    }

    @Override
    public void showAd() {
        if (mTTAdNative != null) {
            switch (adKinds) {
                case BaseVideoAd.AD_FULLVIDEO:
                case BaseVideoAd.AD_PAUSEVIDEO:
                    if (mttFullVideoAd != null) {
                        mttFullVideoAd.showFullScreenVideoAd(activity);
                    }
                    break;
                case BaseVideoAd.AD_REWARDVIDEO:
                    if (mRewardVideoAd != null) {
                        mRewardVideoAd.showRewardVideoAd(activity);
                    }
                    break;
            }
           *//* AdWeightManager.getInstance().setGdtAdType(adType);
            go2AdActivity(TTAdPreMovieActivity.class);*//*
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
        if (mRewardVideoAd != null) {
            mRewardVideoAd = null;
        }
        if (mttFullVideoAd != null) {
            mttFullVideoAd = null;
        }
        if (mTTAdNative != null) {
            mTTAdNative = null;
        }
        AdWeightManager.getInstance().ttAds.clear();
        AdListenerManager.getInstance().recycleSplashListener(pid);
        AdListenerManager.getInstance().recycleVideoListener(pid);
        AdObserver.getInstance().recycleVideo(pid);
    }



 *//*switch (adKinds) {
        case BaseVideoAd.AD_FULLVIDEO:
            break;
        case BaseVideoAd.AD_PAUSEVIDEO:
            break;
        case BaseVideoAd.AD_REWARDVIDEO:
            break;
    }*//*

    private String getSigPid() {
        String gdtPid = "";
        PlayerModel.TTadDTO txadDTO = ApiConfig.get().getTtadDTO();
        if (txadDTO != null) {
            Random random = new Random();
            List<String> pauseList = null;
            switch (adKinds) {
                case BaseVideoAd.AD_FULLVIDEO:
                    pauseList = txadDTO.getTiepian_image();
                    break;
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


    private void loadReward() {
     *//*   float splashWidthDp = 0;
        float splashHeightDp = 0;
        splashWidthDp = UIUtils.getScreenWidthDp(App.getInstance());
        int screenHeightPx = UIUtils.getScreenHeight(App.getInstance());
        splashHeightDp = UIUtils.px2dip(App.getInstance(), screenHeightPx);
        if (splashWidthDp < splashHeightDp) {
            float index = splashWidthDp;
            splashWidthDp = splashHeightDp;
            splashHeightDp = index;
        }*//*
        AdSlot adSlot = new AdSlot.Builder()
                .setCodeId(sigPid)
                //模板广告需要设置期望个性化模板广告的大小,单位dp,激励视频场景，只要设置的值大于0即可
                //.setExpressViewAcceptedSize(splashWidthDp, splashHeightDp)
                .build();
        mTTAdNative.loadRewardVideoAd(adSlot, new TTAdNative.RewardVideoAdListener() {
            @Override
            public void onError(int i, String s) {
                failListener();
                reportAdLoadFail(sigPid, AdConfig.TT_AD_TYPE, AdConfig.AD_TYPE_VIDEO);
            }

            @Override
            public void onRewardVideoAdLoad(TTRewardVideoAd ttRewardVideoAd) {
                mRewardVideoAd = ttRewardVideoAd;
                ttRewardVideoAd.setRewardAdInteractionListener(new TTRewardVideoAd.RewardAdInteractionListener() {
                    @Override
                    public void onAdShow() {
                        showListener();
                        reportAdShow(sigPid, AdConfig.TT_AD_TYPE, AdConfig.AD_TYPE_VIDEO);
                    }

                    @Override
                    public void onAdVideoBarClick() {
                        reportAdClick(sigPid, AdConfig.TT_AD_TYPE, AdConfig.AD_TYPE_VIDEO);
                    }

                    @Override
                    public void onAdClose() {
                        closeListener();
                    }

                    //视频播放完成回调
                    @Override
                    public void onVideoComplete() {

                    }

                    @Override
                    public void onVideoError() {

                    }

                    //视频播放完成后，奖励验证回调，rewardVerify：是否有效，rewardAmount：奖励梳理，rewardName：奖励名称
                    @Override

                    public void onRewardVerify(boolean rewardVerify, int rewardAmount, String rewardName, int errorCode, String errorMsg) {

                    }

                    @Override
                    public void onRewardArrived(boolean isRewardValid, int rewardType, Bundle extraInfo) {

                    }

                    @Override
                    public void onSkippedVideo() {

                    }
                });

                ttRewardVideoAd.setRewardPlayAgainInteractionListener(new TTRewardVideoAd.RewardAdInteractionListener() {
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

                    //视频播放完成回调
                    @Override
                    public void onVideoComplete() {

                    }

                    @Override
                    public void onVideoError() {
                        failListener();
                    }

                    //视频播放完成后，奖励验证回调，rewardVerify：是否有效，rewardAmount：奖励梳理，rewardName：奖励名称
                    @Override

                    public void onRewardVerify(boolean rewardVerify, int rewardAmount, String rewardName, int errorCode, String errorMsg) {

                    }

                    @Override
                    public void onRewardArrived(boolean isRewardValid, int rewardType, Bundle extraInfo) {

                    }

                    @Override
                    public void onSkippedVideo() {

                    }
                });
                loadListener();
                reportAdLoad(sigPid, AdConfig.TT_AD_TYPE, AdConfig.AD_TYPE_VIDEO);
            }

            @Override
            public void onRewardVideoCached() {

            }

            @Override
            public void onRewardVideoCached(TTRewardVideoAd ttRewardVideoAd) {

            }
        });
    }


    private void loadFullVideo() {
       *//* float splashWidthDp;
        float splashHeightDp;
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
        }*//*
        AdSlot adSlot = new AdSlot.Builder()
                .setCodeId(sigPid)
                //模板广告需要设置期望个性化模板广告的大小,单位dp,全屏视频场景，只要设置的值大于0即可
                //.setExpressViewAcceptedSize(splashWidthDp, splashHeightDp)
                .build();
        mTTAdNative.loadFullScreenVideoAd(adSlot, new TTAdNative.FullScreenVideoAdListener() {
            @Override
            public void onError(int code, String message) {
                failListener();
                reportAdLoadFail(sigPid, AdConfig.TT_AD_TYPE, AdConfig.AD_TYPE_FULL);
            }

            @Override
            public void onFullScreenVideoAdLoad(TTFullScreenVideoAd ad) {

                mttFullVideoAd = ad;

                mttFullVideoAd.setFullScreenVideoAdInteractionListener(new TTFullScreenVideoAd.FullScreenVideoAdInteractionListener() {

                    @Override
                    public void onAdShow() {
                        showListener();
                        reportAdShow(sigPid, AdConfig.TT_AD_TYPE, AdConfig.AD_TYPE_FULL);
                    }

                    @Override
                    public void onAdVideoBarClick() {
                        reportAdClick(sigPid, AdConfig.TT_AD_TYPE, AdConfig.AD_TYPE_FULL);
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
                reportAdLoad(sigPid, AdConfig.TT_AD_TYPE, AdConfig.AD_TYPE_FULL);
            }

            @Override
            public void onFullScreenVideoCached() {

            }

            @Override
            public void onFullScreenVideoCached(TTFullScreenVideoAd ad) {

            }
        });
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
        if (mListener != null) {
            mListener.noAd();
        }
    }*/

}
