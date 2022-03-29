package com.today.player.ad;

import android.app.Activity;

import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.ads.SplashAd;
import com.bt.jrsdk.ads.VideoAd;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.listener.VideoAdListener;
import com.bt.txad.TTFeedAd;
import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;

import java.util.List;
import java.util.Random;

public class VideoPlayAd extends BasePangleAd {

    public VideoPlayAd(Activity activity, String pid) {
        ad = new VideoAd(activity, pid);
        ttFeedAd = new TTFeedAd(activity, pid, 1,this);
        setAdType();
    }


    public void setListener(VideoAdListener adListener) {
        if (ad != null) {
            ((VideoAd) ad).setVideoListener(adListener);
        }
        if (ttFeedAd != null) {
//            ad.setVideoListener(adListener);
            ttFeedAd.setVideoListener(adListener);
        }
    }



}
