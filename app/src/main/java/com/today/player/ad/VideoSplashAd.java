package com.today.player.ad;

import android.app.Activity;

import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.ads.SplashAd;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.txad.TTFeedAd;
import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;

import java.util.List;
import java.util.Random;

public class VideoSplashAd extends BaseVideoAd {

    private Activity activity;
    private String pid;
    private String ad_type;
    private SplashAdListener splashAdListener;

    public VideoSplashAd(Activity activity, String pid, String ad_type, SplashAdListener splashAdListener) {
        this.activity = activity;
        this.pid = pid;
        this.ad_type = ad_type;
        this.splashAdListener = splashAdListener;
        setAdType();
    }

    @Override
    public BaseAd getMyAd() {
        ad = new SplashAd(activity, pid, ad_type);
        ((SplashAd) ad).setSplashListener(splashAdListener);
        return ad;
    }

    @Override
    public TTFeedAd getTTAd() {
        ttAd = new TTFeedAd(activity, pid, 0, this);
        ttAd.setSplashListener(splashAdListener);
        return ttAd;
    }
}
