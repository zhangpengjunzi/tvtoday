package com.today.player.ad;

import android.app.Activity;

import com.bt.jrsdk.ads.SplashAd;
import com.bt.jrsdk.ads.VideoAd;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.listener.VideoAdListener;

public class VideoPlayAd {
    private VideoAd ad;
    private boolean isReady;
    private String content;

    public VideoPlayAd(Activity activity,String pid) {
        ad = new VideoAd(activity, pid);
    }



    public void setListener(VideoAdListener adListener) {
        if (ad != null) {
            ad.setVideoListener(adListener);
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
