package com.today.player.ad;

import android.app.Activity;

import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.ads.SplashAd;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.txad.TTFeedAd;
import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;

import java.util.List;
import java.util.Random;

public class VideoSplashAd extends BasePangleAd {

    public VideoSplashAd(Activity activity, String pid, String ad_type) {
        ad = new SplashAd(activity, pid, ad_type);
        ttFeedAd = new TTFeedAd(activity, pid, 0,this);
        setAdType();
    }


    public void setListener(SplashAdListener splashAdListener) {
        if (ad != null) {
            ((SplashAd) ad).setSplashListener(splashAdListener);
        }
        if (ttFeedAd != null) {
//            ad.setVideoListener(adListener);
            ttFeedAd.setSplashListener(splashAdListener);
        }

    }



}
