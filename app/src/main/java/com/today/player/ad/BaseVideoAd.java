package com.today.player.ad;

import android.os.Build;
import android.text.TextUtils;

import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.util.Utils;
import com.bt.txad.TTFeedAd;

public abstract class BaseVideoAd implements GdtAdListener {
    protected TTFeedAd ttAd;
    protected String adType;
    protected String adKinds;


    public static final String MD_AD = "md";
    public static final String TT_AD = "tt";
    public static final String Mob_AD = "mob";

    public static final String AD_PAUSEVIDEO = "pausevideo";
    public static final String AD_REWARDVIDEO = "rewardvideo";

    protected BaseAd ad;
    protected boolean isReady;
    protected String content;


    public abstract BaseAd getMyAd();

    public abstract TTFeedAd getTTAd();


    protected void setAdType() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O
                || Utils.getDeviceType().equals("1")
                || !AdWeightManager.getInstance().canGetAd()) {
            adType = MD_AD;
            return;
        }
        adType = AdWeightManager.getInstance().getCurrentAd();
    }

    protected void setAdKinds(int type) {
        if (type == 0) {
            adKinds = AD_REWARDVIDEO;
        } else {
            adKinds = AD_PAUSEVIDEO;
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
