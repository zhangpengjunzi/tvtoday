package com.bt.mobad;


import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;

import androidx.annotation.NonNull;

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
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.today.player.ad.BaseVideoAd;
import com.today.player.ad.GdtAdListener;
import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;

import java.util.List;
import java.util.Random;

public class MobAd extends BaseAd {

    private int mAdType;
    private SplashAdListener listener;
    private VideoAdListener videoAdListener;
    private GdtAdListener mGdtListener;
    private String mobPid;
    private String adKinds;
    private RewardedAd rewardedAd;
    private InterstitialAd mInterstitialAd;
    private Activity activity;

    public MobAd(Activity activity, String pid, int adType, GdtAdListener gdtAdListener, String adKinds) {
        super(activity, pid);
        this.adKinds = adKinds;
        mobPid = getSigPid();
        this.activity = activity;
        mAdType = adType;
        mGdtListener = gdtAdListener;
    }


    @Override
    protected void loadCurrentAd() {
        if (!TextUtils.isEmpty(mobPid)) {
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
                if (mInterstitialAd != null && mInterstitialAd.isLoaded()) {
                    mInterstitialAd.show();
                }
                break;
            case BaseVideoAd.AD_REWARDVIDEO:
                if (rewardedAd != null && rewardedAd.isLoaded()) {
                    rewardedAd.show(activity, new RewardedAdCallback() {
                        @Override
                        public void onRewardedAdOpened() {
                            // Ad opened.
                            showListener();
                        }

                        @Override
                        public void onRewardedAdClosed() {
                            // Ad closed.
                            closeListener();
                        }

                        @Override
                        public void onUserEarnedReward(@NonNull RewardItem reward) {
                            // User earned reward.
                        }

                        @Override
                        public void onRewardedAdFailedToShow(AdError adError) {
                            // Ad failed to display.
                        }
                    });
                }
                break;
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
        AdWeightManager.getInstance().ttAds.clear();
        if (rewardedAd != null) {
            rewardedAd = null;
        }
        if (mInterstitialAd != null) {
            mInterstitialAd = null;
        }
    }


    private void loadReWard() {
        rewardedAd = new RewardedAd(activity,
                mobPid);

        RewardedAdLoadCallback adLoadCallback = new RewardedAdLoadCallback() {
            @Override
            public void onRewardedAdLoaded() {
                // Ad successfully loaded.
                loadListener();
            }

            @Override
            public void onRewardedAdFailedToLoad(LoadAdError adError) {
                // Ad failed to load.
                failListener();
            }
        };
        rewardedAd.loadAd(new AdRequest.Builder().build(), adLoadCallback);
    }


    private void loadFullVideo() {
        mInterstitialAd = new InterstitialAd(activity);
        mInterstitialAd.setAdUnitId(mobPid);
        mInterstitialAd.setAdListener(new AdListener() {
            @Override
            public void onAdClosed() {
                super.onAdClosed();
                closeListener();
            }

            @Override
            public void onAdImpression() {
                super.onAdImpression();
            }

            @Override
            public void onAdLoaded() {
                super.onAdLoaded();
                loadListener();
            }

            @Override
            public void onAdFailedToLoad(LoadAdError loadAdError) {
                super.onAdFailedToLoad(loadAdError);
                failListener();
            }

            @Override
            public void onAdOpened() {
                super.onAdOpened();
                showListener();
            }
        });
        AdRequest adRequest = new AdRequest.Builder().build();
        mInterstitialAd.loadAd(adRequest);
    }


    private String getSigPid() {
        String gdtPid = "";
        PlayerModel.MobadDTO txadDTO = ApiConfig.get().getMobadDTO();
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

