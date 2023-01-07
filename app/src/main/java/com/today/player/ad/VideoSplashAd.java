package com.today.player.ad;

import android.app.Activity;

import com.bt.admanager.AdWeightManager;
import com.bt.bdad.BdAd;
import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.ads.SplashAd;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.ttad.TTAd;
import com.bt.txad.GdtNativeAdPreMovie;
import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;

import java.util.List;
import java.util.Random;

public class VideoSplashAd extends BaseVideoAd {

    private Activity activity;
    private String pid;
    private String ad_type;
    private SplashAdListener splashAdListener;
    private final int pageType = 0;

    public VideoSplashAd(Activity activity, String pid, String ad_type, SplashAdListener splashAdListener) {
        this.activity = activity;
        this.pid = pid;
        this.ad_type = ad_type;
        this.splashAdListener = splashAdListener;
        setAdKinds(pageType);
    }


 /*   @Override
    public GdtNativeAdPreMovie getGdtNativeAdPreMovie() {
        gdtNativeAdPreMovie = new GdtNativeAdPreMovie(activity, pid, this, 0, adKinds);
        gdtNativeAdPreMovie.setSplashListener(splashAdListener);
        return gdtNativeAdPreMovie;
    }*/

    @Override
    public BaseAd getMyAd() {
        ad = new SplashAd(activity, pid, ad_type);
        ((SplashAd) ad).setSplashListener(splashAdListener);
        return ad;
    }

  /*  @Override
    public TTAd getTTAd() {
        ttAd = new TTAd(activity, pid, this, pageType, adKinds);
        ttAd.setSplashListener(splashAdListener);
        return ttAd;
    }

    @Override
    public BdAd getBdAd() {
        bdAd = new BdAd(activity, pid, this, pageType, adKinds);
        bdAd.setSplashListener(splashAdListener);
        return bdAd;
    }*/
}
