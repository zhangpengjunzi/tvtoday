package com.bt.txad;

import android.app.Activity;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.activity.NativeADUnifiedPreMovieActivity;
import com.bt.jrsdk.activity.SplashAdActivity;
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
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.NativeADEventListener;
import com.qq.e.ads.nativ.NativeADMediaListener;
import com.qq.e.ads.nativ.NativeADUnifiedListener;
import com.qq.e.ads.nativ.NativeUnifiedAD;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.comm.constants.AdPatternType;
import com.qq.e.comm.util.AdError;
import com.today.player.ad.BaseVideoAd;
import com.today.player.ad.GdtAdListener;
import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;
import com.today.player.util.LogUtil;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class GdtNativeAdPreMovie extends BaseAd implements NativeADUnifiedListener {
    private NativeUnifiedAD nativeUnifiedAD;
    private SplashAdListener listener;
    private VideoAdListener videoAdListener;
    private NativeUnifiedADData adData;
    private GdtAdListener mListener;
    private int adType;
    private String gdtPid;

    public GdtNativeAdPreMovie(Activity activity, String pid, GdtAdListener listener, String gdtPid, int type) {
        super(activity, pid);
        //nativeUnifiedAD = new NativeUnifiedAD(activity, "4093818571292527", this);
        mListener = listener;
        if (!TextUtils.isEmpty(gdtPid)) {
            nativeUnifiedAD = new NativeUnifiedAD(activity, gdtPid, this);
            nativeUnifiedAD.setMinVideoDuration(5000);
            nativeUnifiedAD.setMaxVideoDuration(10000);
        }
        adType = type;
        this.gdtPid = gdtPid;
    }



    @Override
    protected void loadCurrentAd() {
        if (nativeUnifiedAD != null) {
            nativeUnifiedAD.loadData(1);
        } else {
            if (mListener != null) {
                mListener.noAd();
            }
        }
    }

    @Override
    public void showAd() {
        if (adData != null && AdWeightManager.getInstance().canJump()) {
            AdWeightManager.getInstance().setGdtAdType(adType);
            go2AdActivity(NativeADUnifiedPreMovieActivity.class);
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

    @Override
    public void onADLoaded(List<NativeUnifiedADData> list) {
        LogUtil.d("onADLoaded");
        if (list != null && list.size() > 0) {
            adData = list.get(0);
            AdWeightManager.getInstance().gdtAds = list;
            setAdData(adData);
            if (listener != null) {
                listener.onLoaded();
            }
            if (videoAdListener != null) {
                videoAdListener.onLoaded();
            }
            reportGdtLoad();
        }
    }

    private void setAdData(NativeUnifiedADData adData) {
        adData.setNativeAdEventListener(new NativeADEventListener() {
            @Override
            public void onADExposed() {
                LogUtil.d("onADExposed");
            }

            @Override
            public void onADClicked() {
                LogUtil.d("onADClicked");
                if (listener != null) {
                    listener.onClick();
                }
                if (videoAdListener != null) {
                    videoAdListener.onClick();
                }
                reportGdtClick();
            }

            @Override
            public void onADError(AdError adError) {
                LogUtil.d("onADError");
            }

            @Override
            public void onADStatusChanged() {
                LogUtil.d("onADStatusChanged");
            }
        });
    }

    @Override
    public void onNoAD(AdError adError) {
        if (mListener != null) {
            mListener.noAd();
        }
    }


    private void reportGdtLoad() {
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("reqId", requestId);
        reportParams.put("uid", AdStartManager.uid);
        reportParams.put("adType", AdType.AD_PASTER);
        reportParams.put("pid", pid);
        reportParams.put("adContent", content);
        reportParams.put("ts", System.currentTimeMillis());
        reportParams.put("state", "req");
        reportParams.put("ad_model", "gdt");
        reportParams.put("gdt_pid", gdtPid);

        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }


    private void reportGdtShow() {
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("reqId", requestId);
        reportParams.put("uid", AdStartManager.uid);
        reportParams.put("ts", System.currentTimeMillis());
        reportParams.put("state", "show");
        reportParams.put("ad_model", "gdt");
        reportParams.put("gdt_pid", gdtPid);
        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }


    private void reportGdtClick() {
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("reqId", requestId);
        reportParams.put("uid", AdStartManager.uid);
        reportParams.put("ts", System.currentTimeMillis());
        reportParams.put("state", "click");
        reportParams.put("ad_model", "gdt");
        reportParams.put("gdt_pid", gdtPid);
        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }
}
