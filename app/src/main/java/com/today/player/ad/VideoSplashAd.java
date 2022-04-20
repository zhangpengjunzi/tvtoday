package com.today.player.ad;

import android.app.Activity;

import com.bt.bdad.BdAd;
import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.ads.SplashAd;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.ttad.TTAd;
import com.bt.txad.GdtNativeAdPreMovie;
import com.bt.txad.TTFeedAd;

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
        setAdType();
        setAdKinds(pageType);
    }


    @Override
    public BaseAd getMyAd() {
        ad = new SplashAd(activity, pid, ad_type);
        ((SplashAd) ad).setSplashListener(splashAdListener);
        return ad;
    }

    @Override
    public TTFeedAd getTTAd() {
        ttAd = new TTFeedAd(activity, pid, pageType,this,  adKinds);
        ttAd.setSplashListener(splashAdListener);
        return ttAd;
    }


}
