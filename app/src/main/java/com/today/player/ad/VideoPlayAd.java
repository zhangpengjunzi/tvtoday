package com.today.player.ad;

import android.app.Activity;

import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.ads.VideoAd;
import com.bt.jrsdk.listener.VideoAdListener;
import com.bt.txad.TTFeedAd;
import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;

import java.util.List;
import java.util.Random;

public class VideoPlayAd extends BaseVideoAd {

    private Activity activity;
    private String pid;
    private VideoAdListener adListener;

    public VideoPlayAd(Activity activity, String pid, VideoAdListener adListener) {
        this.activity = activity;
        this.pid = pid;
        this.adListener = adListener;
        setAdType();
    }

    @Override
    public BaseAd getMyAd() {
        ad = new VideoAd(activity, pid);
        ((VideoAd) ad).setVideoListener(adListener);
        return ad;
    }

    @Override
    public TTFeedAd getTTAd() {
        ttAd = new TTFeedAd(activity, pid, 1, this);
        ttAd.setVideoListener(adListener);
        return ttAd;
    }

}
