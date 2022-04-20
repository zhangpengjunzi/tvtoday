package com.today.player.ad;

import android.app.Activity;

import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.ads.VideoAd;
import com.bt.jrsdk.listener.VideoAdListener;
import com.bt.mobad.MobAd;
import com.bt.txad.TTFeedAd;

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
    public TTFeedAd getTTAd() {
        ttAd = new TTFeedAd(activity, pid, pageType, this, adKinds);
        ttAd.setVideoListener(adListener);
        return ttAd;
    }

    @Override
    public MobAd getMobAd() {
        mobAd = new MobAd(activity, pid, pageType, this, adKinds);
        mobAd.setVideoListener(adListener);
        return mobAd;
    }
}
