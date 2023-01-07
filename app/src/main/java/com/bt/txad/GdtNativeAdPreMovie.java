package com.bt.txad;

import android.app.Activity;

import com.bt.jrsdk.ads.AdConfig;
import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.listener.VideoAdListener;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdObserver;
/*import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.qq.e.ads.interstitial2.UnifiedInterstitialADListener;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
import com.qq.e.ads.rewardvideo.RewardVideoADListener;
import com.qq.e.comm.util.AdError;*/
import com.today.player.ad.BaseVideoAd;
import com.today.player.ad.GdtAdListener;
import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;

import java.util.List;
import java.util.Map;
import java.util.Random;

public class GdtNativeAdPreMovie /*extends BaseAd*/ {
  /*  private RewardVideoAD rewardVideoAD;
    private UnifiedInterstitialAD fullInterstitial;

    private SplashAdListener listener;
    private VideoAdListener videoAdListener;
    private GdtAdListener mListener;
    private int adType;
    private String gdtPid;
    private Activity activity;
    private String adKinds;

    public GdtNativeAdPreMovie(Activity activity, String pid, GdtAdListener listener, int type, String adKind) {
        super(activity, pid);
        //nativeUnifiedAD = new NativeUnifiedAD(activity, "4093818571292527", this);
        mListener = listener;
        this.activity = activity;
        this.adKinds = adKind;
        adType = type;
        this.gdtPid = getSigPid();
    }



    @Override
    protected void loadCurrentAd() {
        switch (adKinds) {
            case BaseVideoAd.AD_FULLVIDEO:
            case BaseVideoAd.AD_PAUSEVIDEO:
                loadFullVideo();
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
            case BaseVideoAd.AD_PAUSEVIDEO:
                if (fullInterstitial != null) {
                    if (listener != null) {
                        listener.onShow();
                    }
                    if (videoAdListener != null) {
                        videoAdListener.onShow();
                    }
                    if (adType == 0) {
                        fullInterstitial.showFullScreenAD(activity);
                    } else {
                        fullInterstitial.show(activity);
                    }
                }

                break;
            case BaseVideoAd.AD_REWARDVIDEO:
                if (rewardVideoAD != null) {
                    rewardVideoAD.showAD(activity);
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
        if (rewardVideoAD != null) {
            rewardVideoAD = null;
        }
        if (fullInterstitial != null) {
            fullInterstitial = null;
        }
    }


    private void loadReward() {
        rewardVideoAD = new RewardVideoAD(activity, gdtPid, new RewardVideoADListener() {
            @Override
            public void onADLoad() {
                if (listener != null) {
                    listener.onLoaded();
                }
                if (videoAdListener != null) {
                    videoAdListener.onLoaded();
                }
                reportAdLoad(gdtPid, AdConfig.GDT_AD_TYPE,AdConfig.AD_TYPE_VIDEO);
            }

            @Override
            public void onVideoCached() {

            }

            @Override
            public void onADShow() {
                if (listener != null) {
                    listener.onShow();
                }
                if (videoAdListener != null) {
                    videoAdListener.onShow();
                }
                reportAdShow(gdtPid, AdConfig.GDT_AD_TYPE,AdConfig.AD_TYPE_VIDEO);
            }

            @Override
            public void onADExpose() {

            }

            @Override
            public void onReward(Map<String, Object> map) {

            }

            @Override
            public void onADClick() {
                reportAdClick(gdtPid, AdConfig.GDT_AD_TYPE,AdConfig.AD_TYPE_VIDEO);
            }

            @Override
            public void onVideoComplete() {

            }

            @Override
            public void onADClose() {
                if (listener != null) {
                    listener.onClose();
                    listener.onFinish();
                }
                if (videoAdListener != null) {
                    videoAdListener.onClose();
                    videoAdListener.onFinish();
                }
            }

            @Override
            public void onError(AdError adError) {
                if (mListener != null) {
                    mListener.noAd();
                }
                reportAdLoadFail(gdtPid, AdConfig.GDT_AD_TYPE,AdConfig.AD_TYPE_VIDEO);
            }
        });
        rewardVideoAD.loadAD();
    }


    private String getSigPid() {
        String gdtPid = "";
        PlayerModel.TxadDTO txadDTO = ApiConfig.get().getTxad();
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


    private void loadFullVideo() {
        fullInterstitial = new UnifiedInterstitialAD(activity, gdtPid, new UnifiedInterstitialADListener() {
            @Override
            public void onADReceive() {
                if (listener != null) {
                    listener.onLoaded();
                }
                if (videoAdListener != null) {
                    videoAdListener.onLoaded();
                }
                reportAdLoad(gdtPid, AdConfig.GDT_AD_TYPE,AdConfig.AD_TYPE_FULL);
            }

            @Override
            public void onVideoCached() {

            }

            @Override
            public void onNoAD(AdError adError) {
                if (mListener != null) {
                    mListener.noAd();
                }
                reportAdLoadFail(gdtPid, AdConfig.GDT_AD_TYPE,AdConfig.AD_TYPE_FULL);
            }

            @Override
            public void onADOpened() {
                reportAdShow(gdtPid, AdConfig.GDT_AD_TYPE,AdConfig.AD_TYPE_FULL);
            }

            @Override
            public void onADExposure() {

            }

            @Override
            public void onADClicked() {
                reportAdClick(gdtPid, AdConfig.GDT_AD_TYPE,AdConfig.AD_TYPE_FULL);
            }

            @Override
            public void onADLeftApplication() {

            }

            @Override
            public void onADClosed() {
                if (listener != null) {
                    listener.onClose();
                    listener.onFinish();
                }
                if (videoAdListener != null) {
                    videoAdListener.onClose();
                    videoAdListener.onFinish();
                }
            }

            @Override
            public void onRenderSuccess() {

            }

            @Override
            public void onRenderFail() {

            }
        });
        setVideoOption();
        if (adType == 0) {
            fullInterstitial.loadFullScreenAD();
        } else {
            fullInterstitial.loadAD();
        }
    }


    private void setVideoOption() {
        VideoOption.Builder builder = new VideoOption.Builder();
        VideoOption option = builder.build();
        option = builder.setAutoPlayMuted(false)
                .build();
        fullInterstitial.setVideoOption(option);
    }*/
}
