package com.bt.bdad;

import android.app.Activity;
import android.util.DisplayMetrics;

import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.ExpressInterstitialAd;
import com.baidu.mobads.sdk.api.ExpressInterstitialListener;
import com.baidu.mobads.sdk.api.FullScreenVideoAd;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.RewardVideoAd;
import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.activity.BdPauseVideoActivity;
import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.listener.VideoAdListener;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdObserver;
import com.today.player.ad.BaseVideoAd;
import com.today.player.ad.GdtAdListener;
import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;
import com.today.player.util.GetDevicesId;

import java.util.List;
import java.util.Random;

public class BdAd extends BaseAd {

    private RewardVideoAd mRewardVideoAd;
    private FullScreenVideoAd fullScreenVideoAd;
    private BaiduNativeManager mBaiduNativeManager;
    private String sigPid;
    private Activity activity;
    private String adKinds;
    private GdtAdListener mListener;
    private int adType;
    private SplashAdListener listener;
    private VideoAdListener videoAdListener;


    public BdAd(Activity activity, String pid, GdtAdListener listener, int type, String adKinds) {
        super(activity, pid);
        mListener = listener;
        this.adKinds = adKinds;
        this.activity = activity;
        adType = type;
        sigPid = getSigPid();
    }


    @Override
    protected void loadCurrentAd() {
        switch (adKinds) {
            case BaseVideoAd.AD_FULLVIDEO:
                loadFullVideo();
                break;
            case BaseVideoAd.AD_PAUSEVIDEO:
                //loadPauseVideo();
                loadNativeVideo();
                break;
            case BaseVideoAd.AD_REWARDVIDEO:
                loadReward();
                break;
        }
    }

    @Override
    public void showAd() {
        switch (adKinds) {
            case BaseVideoAd.AD_FULLVIDEO:
                if (fullScreenVideoAd != null) {
                    fullScreenVideoAd.show();
                }
                break;
            case BaseVideoAd.AD_PAUSEVIDEO:
                /*if (expressInterstitialAd != null) {
                    expressInterstitialAd.show(activity);
                }*/
                if(mBaiduNativeManager!=null){
                    go2AdActivity(BdPauseVideoActivity.class);
                }
                break;
            case BaseVideoAd.AD_REWARDVIDEO:
                if (mRewardVideoAd != null) {
                    mRewardVideoAd.show();
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
        if (mRewardVideoAd != null) {
            mRewardVideoAd = null;
        }
        if (fullScreenVideoAd != null) {
            fullScreenVideoAd = null;
        }
        if (mBaiduNativeManager != null) {
            mBaiduNativeManager = null;
        }
    }


    private String getSigPid() {
        String gdtPid = "";
        PlayerModel.BdadDTO txadDTO = ApiConfig.get().getBdadDTO();
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
        mRewardVideoAd = new RewardVideoAd(activity,
                sigPid, new RewardVideoAd.RewardVideoAdListener() {
            @Override
            public void onAdShow() {
                showListener();
            }

            @Override
            public void onAdClick() {

            }

            @Override
            public void onAdClose(float v) {
                closeListener();
            }

            @Override
            public void onAdFailed(String s) {
                failListener();
            }

            @Override
            public void onVideoDownloadSuccess() {

            }

            @Override
            public void onVideoDownloadFailed() {

            }

            @Override
            public void playCompletion() {

            }

            @Override
            public void onAdLoaded() {
                loadListener();
            }

            @Override
            public void onAdSkip(float v) {

            }

            @Override
            public void onRewardVerify(boolean b) {

            }
        },
                false);
        mRewardVideoAd.setUserId(GetDevicesId.getInstance().getDeviceId());
        // 请求广告
        mRewardVideoAd.load();
    }


    public void loadFullVideo() {
        fullScreenVideoAd = new FullScreenVideoAd(activity, sigPid, new FullScreenVideoAd.FullScreenVideoAdListener() {
            @Override
            public void onAdShow() {
                showListener();
            }

            @Override
            public void onAdClick() {

            }

            @Override
            public void onAdClose(float v) {
                closeListener();
            }

            @Override
            public void onAdFailed(String s) {
                failListener();
            }

            @Override
            public void onVideoDownloadSuccess() {

            }

            @Override
            public void onVideoDownloadFailed() {

            }

            @Override
            public void playCompletion() {

            }

            @Override
            public void onAdSkip(float v) {

            }

            @Override
            public void onAdLoaded() {
                loadListener();
            }
        }, false);
        fullScreenVideoAd.load();
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
    }


    private void loadNativeVideo() {
        mBaiduNativeManager = new BaiduNativeManager(activity, sigPid, true);
        DisplayMetrics metric = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(metric);
        float density = metric.density;
        final RequestParameters requestParameters = new RequestParameters.Builder()
                .setWidth((int) (640 * density))
                .setHeight((int) (360 * density))
                .downloadAppConfirmPolicy(
                        RequestParameters.DOWNLOAD_APP_CONFIRM_ONLY_MOBILE) // 用户点击下载类广告时，是否弹出提示框让用户选择下载与否
                .build();
        /**
         * 设置仅在Wi-Fi环境下缓存视频文件，默认在4G下也会缓存视频文件
         * 注意：需要提前打开缓存功能，此设置才有意义
         */
        mBaiduNativeManager.setCacheVideoOnlyWifi(true);
        // 请求广告
        final BaiduNativeManager.FeedAdListener feedAdListener = new BaiduNativeManager.FeedAdListener() {
            @Override
            public void onNativeFail(int errorCode, String message) {
                failListener();
            }

            @Override
            public void onVideoDownloadSuccess() {

            }

            @Override
            public void onVideoDownloadFailed() {

            }

            @Override
            public void onLpClosed() {

            }

            @Override
            public void onNativeLoad(List<NativeResponse> nativeResponses) {
                if (nativeResponses != null && nativeResponses.size() > 0) {
                    // 这里每次都取第一条广告来做展示,模拟多条广告;实际开发过程中需要开发者自己处理
                    AdWeightManager.getInstance().bdAds = nativeResponses;
                    loadListener();
                }
            }

            @Override
            public void onNoAd(int code, String msg) {
                failListener();
            }
        };
        mBaiduNativeManager.loadFeedAd(requestParameters, feedAdListener);
    }
}
