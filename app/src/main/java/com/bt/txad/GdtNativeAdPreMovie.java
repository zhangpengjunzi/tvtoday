package com.bt.txad;

import android.app.Activity;

import com.bt.jrsdk.ads.BaseAd;
import com.bt.jrsdk.listener.VideoAdListener;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdObserver;
import com.qq.e.ads.nativ.NativeADEventListener;
import com.qq.e.ads.nativ.NativeADUnifiedListener;
import com.qq.e.ads.nativ.NativeUnifiedAD;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.comm.util.AdError;
import com.today.player.util.LogUtil;

import java.util.List;

public class GdtNativeAdPreMovie extends BaseAd implements NativeADUnifiedListener {
    private NativeUnifiedAD nativeUnifiedAD;
    private VideoAdListener listener;
    private NativeUnifiedADData adData;


    public GdtNativeAdPreMovie(Activity activity, String pid) {
        super(activity, pid);
        nativeUnifiedAD = new NativeUnifiedAD(activity, "4093818571292527", this);
    }

    @Override
    protected void loadCurrentAd() {
        nativeUnifiedAD.loadData(1);

    }

    @Override
    public void showAd() {

    }

    public void setVideoListener(VideoAdListener listener) {
        this.listener = listener;
        AdListenerManager.getInstance().registerVideoListener(pid, this.listener);
    }

    @Override
    protected void recycleAdAndListener() {
        AdListenerManager.getInstance().recycleVideoListener(pid);
        AdObserver.getInstance().recycleVideo(pid);
    }

    @Override
    public void onADLoaded(List<NativeUnifiedADData> list) {
        LogUtil.d("onADLoaded");
//listener.onLoaded();
        if (list != null && list.size() > 0) {
            adData = list.get(0);
            setAdData(adData);
        }
    }

    private void setAdData(NativeUnifiedADData adData) {
        adData.setNativeAdEventListener(new NativeADEventListener() {
            @Override
            public void onADExposed() {
                LogUtil.d("onADExposed");
            }

            @Override
            public void onADClicked() {
                LogUtil.d("onADClicked");
            }

            @Override
            public void onADError(AdError adError) {
                LogUtil.d("onADError");
            }

            @Override
            public void onADStatusChanged() {
                LogUtil.d("onADStatusChanged");
            }
        });
    }

    @Override
    public void onNoAD(AdError adError) {
        LogUtil.d("onNoAD");
    }
}
