package com.bt.sig;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;

import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.activity.NativeADUnifiedPreMovieActivity;
import com.bt.jrsdk.activity.NativeAdUnifiedActivity;
import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.listener.VideoAdListener;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdObserver;
import com.qq.e.ads.nativ.NativeUnifiedAD;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.natives.NativeADData;
import com.sigmob.windad.natives.WindNativeAdRequest;
import com.sigmob.windad.natives.WindNativeUnifiedAd;
import com.today.player.ad.GdtAdListener;
import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;
import com.today.player.util.GetDevicesId;

import java.util.List;
import java.util.Random;

public class SigMobAd extends BaseAd implements WindNativeUnifiedAd.NativeAdLoadListener {

    private ViewGroup adContainer;
    private WindNativeAdRequest windNativeAdRequest;
    private WindNativeUnifiedAd windNativeUnifiedAd;

    private SplashAdListener listener;
    private VideoAdListener videoAdListener;
    private GdtAdListener mListener;
    private int adType;

    public SigMobAd(Activity activity, String pid, GdtAdListener listener, int type) {
        super(activity, pid);
        mListener = listener;
        String sigPid = getSigPid();
        if (!TextUtils.isEmpty(sigPid)) {
            windNativeAdRequest = new WindNativeAdRequest(sigPid, GetDevicesId.getInstance().getDeviceId(), 1, null);
            windNativeUnifiedAd = new WindNativeUnifiedAd(activity, windNativeAdRequest);
        }
        adType = type;
    }

    @Override
    protected void loadCurrentAd() {
        if (windNativeUnifiedAd != null) {
            windNativeUnifiedAd.loadAd(this);
        } else {
            mListener.noAd();
        }
    }

    @Override
    public void showAd() {
        if (windNativeUnifiedAd != null && AdWeightManager.getInstance().canSigJump()) {
            AdWeightManager.getInstance().setGdtAdType(adType);
            go2AdActivity(NativeAdUnifiedActivity.class);
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
        if (windNativeUnifiedAd != null) {
            windNativeUnifiedAd.destroy();
        }
        AdListenerManager.getInstance().recycleSplashListener(pid);
        AdListenerManager.getInstance().recycleVideoListener(pid);
        AdObserver.getInstance().recycleVideo(pid);
    }


    @Override
    public void onError(WindAdError windAdError, String s) {
        if (mListener != null) {
            mListener.noAd();
        }
    }

    @Override
    public void onFeedAdLoad(String s) {
        List<NativeADData> unifiedADData = windNativeUnifiedAd.getNativeADDataList();
        if (unifiedADData != null && unifiedADData.size() > 0) {
            Log.d("lance", "onFeedAdLoad:" + unifiedADData.size());
            AdWeightManager.getInstance().sigAds = unifiedADData;
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
        PlayerModel.SigadDTO txadDTO = ApiConfig.get().getSigad();
        if (txadDTO != null) {
            Random random = new Random();
            List<String> pauseList = txadDTO.getTiepian_video();
            if (pauseList != null && pauseList.size() > 0) {
                gdtPid = pauseList.get(random.nextInt(pauseList.size()));
            }
        }
        return gdtPid;
    }
}
