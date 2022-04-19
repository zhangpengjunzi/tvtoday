package com.today.player.ad;

import android.app.Activity;

import com.bt.bdad.BdAd;
import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.ads.VideoAd;
import com.bt.jrsdk.listener.VideoAdListener;
import com.bt.ttad.TTAd;
import com.bt.txad.GdtNativeAdPreMovie;

public class VideoPlayAd extends BaseVideoAd {

    private Activity activity;
    private String pid;
    private VideoAdListener adListener;
    private final int pageType = 1;

    public VideoPlayAd(Activity activity, String pid, VideoAdListener adListener) {
        this.activity = activity;
        this.pid = pid;
        this.adListener = adListener;
        setAdType();
        setAdKinds(pageType);
    }

    @Override
    public BaseAd getMyAd() {
        ad = new VideoAd(activity, pid);
        ((VideoAd) ad).setVideoListener(adListener);
        return ad;
    }

    @Override
    public TTAd getTTAd() {
        ttAd = new TTAd(activity, pid, this, pageType, adKinds);
        ttAd.setVideoListener(adListener);
        return ttAd;
    }

    @Override
    public BdAd getBdAd() {
        bdAd = new BdAd(activity, pid, this, pageType, adKinds);
        bdAd.setVideoListener(adListener);
        return bdAd;
    }

    @Override
    public GdtNativeAdPreMovie getGdtNativeAdPreMovie() {
        gdtNativeAdPreMovie = new GdtNativeAdPreMovie(activity, pid, this, 1, adKinds);
        gdtNativeAdPreMovie.setVideoListener(adListener);
        return gdtNativeAdPreMovie;
    }
}
