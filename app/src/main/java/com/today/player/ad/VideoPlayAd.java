package com.today.player.ad;

import android.app.Activity;

import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.ads.SplashAd;
import com.bt.jrsdk.ads.VideoAd;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.listener.VideoAdListener;
import com.bt.ttad.TTAd;
import com.bt.txad.GdtNativeAdPreMovie;
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

    private String getGdtPid() {
        String gdtPid = "";
        PlayerModel.TxadDTO txadDTO = ApiConfig.get().getTxad();
        if (txadDTO != null) {
            Random random = new Random();
            List<String> pauseList = txadDTO.getPause_image();
            if (pauseList != null && pauseList.size() > 0) {
                gdtPid = pauseList.get(random.nextInt(pauseList.size()));
            }
        }
        return gdtPid;
    }


    @Override
    public BaseAd getMyAd() {
        ad = new VideoAd(activity, pid);
        ((VideoAd) ad).setVideoListener(adListener);
        return ad;
    }

    @Override
    public TTAd getTTAd() {
        ttAd = new TTAd(activity, pid, this, 1);
        ttAd.setVideoListener(adListener);
        return ttAd;
    }

    @Override
    public GdtNativeAdPreMovie getGdtNativeAdPreMovie() {
        gdtNativeAdPreMovie = new GdtNativeAdPreMovie(activity, pid, this, getGdtPid(), 1);
        gdtNativeAdPreMovie.setVideoListener(adListener);
        return gdtNativeAdPreMovie;
    }
}
