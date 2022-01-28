package com.today.player.ad;

import android.app.Activity;

import com.bt.jrsdk.ads.SplashAd;
import com.bt.jrsdk.listener.SplashAdListener;

public class VideoSplashAd {
    private SplashAd ad;
    private boolean isReady;
    private String content;

    public VideoSplashAd(Activity activity,String pid) {
        ad = new SplashAd(activity, pid);
    }



    public void setListener(SplashAdListener splashAdListener) {
        if (ad != null) {
            ad.setSplashListener(splashAdListener);
        }
    }


    public void loadAd(String content) {
        if (ad != null) {
            this.content = content;
            ad.loadAd(content);
        }
    }

    public void showAd() {
        if (ad != null) {
            if (isReady) {
                ad.showAd();
            } else {
                loadAd(content);
            }
        }
    }

    public void setReady(boolean ready) {
        this.isReady = ready;
    }


    public void recycler() {
        if (ad != null) {
            ad.recycle();
        }
    }
}
