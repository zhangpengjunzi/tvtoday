package com.today.player.ad;

import android.app.Activity;
import android.text.TextUtils;

import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.ads.SplashAd;
import com.bt.jrsdk.config.AdType;
import com.bt.jrsdk.listener.SplashAdListener;
import com.bt.sig.SigMobAd;
import com.bt.txad.GdtNativeAdPreMovie;
import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;

import java.util.List;
import java.util.Random;

public class VideoSplashAd extends BaseVideoAd {

    private Activity activity;
    private String pid;
    private String ad_type;
    private SplashAdListener splashAdListener;

    public VideoSplashAd(Activity activity, String pid, String ad_type, SplashAdListener splashAdListener) {
        this.activity = activity;
        this.pid = pid;
        this.ad_type = ad_type;
        this.splashAdListener = splashAdListener;
        setAdType();
    }


    private String getGdtPid() {
        String gdtPid = "";
        PlayerModel.TxadDTO txadDTO = ApiConfig.get().getTxad();
        if (txadDTO != null) {
            Random random = new Random();
            int count = AdWeightManager.getInstance().getSplashImageCount();
            if (count == 0 || count % 3 != 0) {
                List<String> imageList = txadDTO.getTiepian_image();
                if (imageList != null && imageList.size() > 0) {
                    gdtPid = imageList.get(random.nextInt(imageList.size()));
                }
            } else {
                List<String> videoList = txadDTO.getTiepian_video();
                if (videoList != null && videoList.size() > 0) {
                    gdtPid = videoList.get(random.nextInt(videoList.size()));
                }
            }
        }
        return gdtPid;
    }

    @Override
    public GdtNativeAdPreMovie getGdtNativeAdPreMovie() {
        gdtNativeAdPreMovie = new GdtNativeAdPreMovie(activity, pid, this, getGdtPid(), 0);
        gdtNativeAdPreMovie.setSplashListener(splashAdListener);
        return gdtNativeAdPreMovie;
    }

    @Override
    public BaseAd getMyAd() {
        ad = new SplashAd(activity, pid, ad_type);
        ((SplashAd) ad).setSplashListener(splashAdListener);
        return ad;
    }

    @Override
    public SigMobAd getSigMobAd() {
        sigMobAd = new SigMobAd(activity, pid, this, 0);
        sigMobAd.setSplashListener(splashAdListener);
        return sigMobAd;
    }
}
