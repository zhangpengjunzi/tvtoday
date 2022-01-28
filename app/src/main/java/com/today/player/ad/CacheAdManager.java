package com.today.player.ad;

import android.app.Activity;

public class CacheAdManager {
    private VideoPlayAd videoPlayAd;
    private VideoSplashAd pauseAd;

    public static CacheAdManager getInstance() {
        return CacheAdInit.manager;
    }

    private static class CacheAdInit {
        public static final CacheAdManager manager = new CacheAdManager();
    }

    public VideoPlayAd getVideoPlayAd(Activity activity,String pid) {
        if (videoPlayAd == null) {
            videoPlayAd = new VideoPlayAd(activity,pid);
        }
        return videoPlayAd;
    }

    public VideoSplashAd getPauseAd(Activity activity,String pid) {
        if (pauseAd == null) {
            pauseAd = new VideoSplashAd(activity,pid);
        }
        return pauseAd;
    }
}
