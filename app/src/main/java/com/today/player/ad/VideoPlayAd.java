package com.today.player.ad;

import android.app.Activity;

import com.bt.jrsdk.ads.SplashAd;
import com.bt.jrsdk.ads.VideoAd;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.listener.VideoAdListener;
import com.bt.txad.GdtNativeAdPreMovie;
import com.today.player.util.LogUtil;

public class VideoPlayAd {
    private VideoAd ad;
    private boolean isReady;
    private String content;
    private GdtNativeAdPreMovie gdtNativeAdPreMovie;

    //todo 暂时测广点通所以注掉了 VideoAd， 正常情况下需要权重分配
    public VideoPlayAd(Activity activity,String pid) {
//        ad = new VideoAd(activity, pid);
        LogUtil.d("load video play ad");
        gdtNativeAdPreMovie = new GdtNativeAdPreMovie(activity,pid);
    }



    public void setListener(VideoAdListener adListener) {
//        if (ad != null) {
//            ad.setVideoListener(adListener);
//        }
        if (gdtNativeAdPreMovie != null) {
//            ad.setVideoListener(adListener);
            gdtNativeAdPreMovie.setVideoListener(adListener);
        }
    }


    public void loadAd(String content) {
//        if (ad != null) {
//            this.content = content;
//            ad.loadAd(content);
//        }
        if (gdtNativeAdPreMovie != null) {
            this.content = content;
//            ad.loadAd(content);
            gdtNativeAdPreMovie.loadAd(content);
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
