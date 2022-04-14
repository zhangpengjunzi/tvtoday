package com.today.player.ad;

import android.os.Build;
import android.text.TextUtils;

import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.ads.BaseAd;
import com.bt.txad.TTFeedAd;

abstract class BaseVideoAd implements GdtAdListener {
    protected TTFeedAd ttAd;
    protected String adType;
    public static final String GDT_AD = "tx";
    public static final String MD_AD = "md";
    public static final String TT_AD = "tt";
    protected BaseAd ad;
    protected boolean isReady;
    protected String content;


    public abstract BaseAd getMyAd();

    public abstract TTFeedAd getTTAd();

    protected void setAdType() {
        if (AdWeightManager.getInstance().canGetAd()) {
            if (AdWeightManager.getInstance().canGdt() && AdWeightManager.getInstance().getSplashImageCount() != 0 && AdWeightManager.getInstance().getSplashImageCount() % 3 == 0) {
                adType = GDT_AD;
            } else {
                adType = AdWeightManager.getInstance().getCurrentAd();
            }
        } else {
            adType = MD_AD;
        }
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) {
            adType = MD_AD;
        }
    }


    public void loadAd(String content) {
        if (!TextUtils.isEmpty(adType)) {
            switch (adType) {
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
            }
        } else {
            if (ad != null) {
                ad.showAd();
            }
        }
        setAdType();
    }

    public void setReady(boolean ready) {
        this.isReady = ready;
    }


    public void recycler() {
        if (ad != null) {
            ad.recycle();
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
            adType = MD_AD;
            loadAd(content);
        }
    }
}
