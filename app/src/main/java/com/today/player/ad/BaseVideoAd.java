package com.today.player.ad;

import android.os.Build;
import android.text.TextUtils;

import com.bt.admanager.AdWeightManager;
import com.bt.admanager.TTAdManagerHolder;
import com.bt.bdad.BdAd;
import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.util.Utils;
import com.bt.ttad.TTAd;
import com.bt.txad.GdtNativeAdPreMovie;

public abstract class BaseVideoAd implements GdtAdListener {
    protected GdtNativeAdPreMovie gdtNativeAdPreMovie;
    protected TTAd ttAd;
    protected BdAd bdAd;
    protected String adType;
    protected String adKinds;
    public boolean isEnd = false;

    public static final String GDT_AD = "tx";
    public static final String MD_AD = "md";
    public static final String TT_AD = "tt";
    public static final String BD_AD = "bd";

    public static final String AD_FULLVIDEO = "fullvideo";
    public static final String AD_PAUSEVIDEO = "pausevideo";
    public static final String AD_REWARDVIDEO = "rewardvideo";

    protected BaseAd ad;
    protected boolean isReady;
    protected String content;

    public abstract GdtNativeAdPreMovie getGdtNativeAdPreMovie();

    public abstract BaseAd getMyAd();

    public abstract TTAd getTTAd();

    public abstract BdAd getBdAd();

    protected void setAdType() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O
                || Utils.getDeviceType().equals("1")
                || !AdWeightManager.getInstance().canGetAd()
                || isEnd) {
            adType = MD_AD;
            return;
        }
        adType = AdWeightManager.getInstance().getCurrentAd(adKinds);
        if ((adType.equals(TT_AD) && !TTAdManagerHolder.isSuccess)) {
            adType = MD_AD;
        }
    }

    protected void setAdKinds(int type) {
        if (type == 0) {
           /* if (AdWeightManager.getInstance().getSplashImageCount() % 4 == 0) {
                adKinds = AD_REWARDVIDEO;
            } else {
                adKinds = AD_FULLVIDEO;
            }*/
            adKinds = AD_REWARDVIDEO;
        } else {
            adKinds = AD_PAUSEVIDEO;
        }
    }


    public void loadAd(String content) {
        setAdType();
        if (!TextUtils.isEmpty(adType)) {
            switch (adType) {
                case GDT_AD:
                    gdtNativeAdPreMovie = getGdtNativeAdPreMovie();
                    if (gdtNativeAdPreMovie != null) {
                        this.content = content;
                        gdtNativeAdPreMovie.loadAd(content);
                    }
                    break;
                case MD_AD:
                    ad = getMyAd();
                    if (ad != null) {
                        this.content = content;
                        ad.loadAd(content);
                    }
                    break;
                case TT_AD:
                    ttAd = getTTAd();
                    if (ttAd != null) {
                        this.content = content;
                        ttAd.loadAd(content);
                    }
                    break;
                case BD_AD:
                    bdAd = getBdAd();
                    if (bdAd != null) {
                        this.content = content;
                        bdAd.loadAd(content);
                    }
                    break;
            }
        } else {
            ad = getMyAd();
            if (ad != null) {
                this.content = content;
                ad.loadAd(content);
            }
        }
    }

    public void showAd() {
        if (!TextUtils.isEmpty(adType)) {
            switch (adType) {
                case GDT_AD:
                    if (gdtNativeAdPreMovie != null) {
                        gdtNativeAdPreMovie.showAd();
                    }
                    break;
                case MD_AD:
                    if (ad != null) {
                        ad.showAd();
                    }
                    break;
                case TT_AD:
                    if (ttAd != null) {
                        ttAd.showAd();
                    }
                    break;
                case BD_AD:
                    if (bdAd != null) {
                        bdAd.showAd();
                    }
                    break;
            }
        } else {
            if (ad != null) {
                ad.showAd();
            }
        }
    }

    public void setReady(boolean ready) {
        this.isReady = ready;
    }


    public void recycler() {
        if (ad != null) {
            ad.recycle();
            ad = null;
        }
        if (gdtNativeAdPreMovie != null) {
            gdtNativeAdPreMovie.recycle();
            ad = null;
        }
        if (ttAd != null) {
            ttAd.recycle();
            ttAd = null;
        }
    }

    @Override
    public void noAd() {
        if (!TextUtils.isEmpty(adType) && !adType.equals(MD_AD)) {
            if (adKinds.equals(AD_REWARDVIDEO)) {
                isEnd = AdWeightManager.getInstance().addRewardSize();
            } else {
                isEnd = AdWeightManager.getInstance().addPauseSize();
            }
            loadAd(content);
        }
    }
}
