package com.today.player.ad;

import android.app.Activity;

import com.bt.jrsdk.ads.SplashAd;
import com.bt.jrsdk.ads.VideoAd;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.jrsdk.listener.VideoAdListener;
import com.bt.txad.GdtNativeAdPreMovie;
import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;

import java.util.List;
import java.util.Random;

public class VideoPlayAd extends BaseVideoAd {

    public VideoPlayAd(Activity activity, String pid) {
        setAdType();
        ad = new VideoAd(activity, pid);
        gdtNativeAdPreMovie = new GdtNativeAdPreMovie(activity, pid, this, getGdtPid(), 1);
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


    public void setListener(VideoAdListener adListener) {
        if (ad != null) {
            ((VideoAd) ad).setVideoListener(adListener);
        }
        if (gdtNativeAdPreMovie != null) {
//            ad.setVideoListener(adListener);
            gdtNativeAdPreMovie.setVideoListener(adListener);
        }
    }


}
