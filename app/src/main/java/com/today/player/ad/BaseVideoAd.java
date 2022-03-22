package com.today.player.ad;

import android.text.TextUtils;

import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.ads.BaseAd;
import com.bt.txad.GdtNativeAdPreMovie;

public class BaseVideoAd implements GdtAdListener {
    protected GdtNativeAdPreMovie gdtNativeAdPreMovie;
    protected String adType;
    protected final String GDT_AD = "tx";
    protected final String MD_AD = "md";
    protected BaseAd ad;
    protected boolean isReady;
    protected String content;

    protected void setAdType() {
        if (AdWeightManager.getInstance().canGetAd()) {
            if (AdWeightManager.getInstance().canGdt() && AdWeightManager.getInstance().getSplashImageCount() != 0 && AdWeightManager.getInstance().getSplashImageCount() % 3 == 0) {
                adType = GDT_AD;
            } else {
                adType = AdWeightManager.getInstance().getCurrentAd();
            }
        }
    }

    public void loadAd(String content) {
        if (!TextUtils.isEmpty(adType)) {
            switch (adType) {
                case GDT_AD:
                    if (gdtNativeAdPreMovie != null) {
                        this.content = content;
                        gdtNativeAdPreMovie.loadAd(content);
                    }
                    break;
                case MD_AD:
                    if (ad != null) {
                        this.content = content;
                        ad.loadAd(content);
                    }
                    break;
            }
        } else {
            if (ad != null) {
                this.content = content;
                ad.loadAd(content);
            }
        }
    }

    public void showAd() {
        if (isReady) {
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
                }
            } else {
                if (ad != null) {
                    ad.showAd();
                }
            }
            setAdType();
        } else {
            loadAd(content);
        }
    }

    public void setReady(boolean ready) {
        this.isReady = ready;
    }


    public void recycler() {
        if (ad != null) {
            ad.recycle();
        }
        if (gdtNativeAdPreMovie != null) {
            gdtNativeAdPreMovie.recycle();
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
