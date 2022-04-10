package com.bt.jrsdk.activity;

import android.os.Bundle;

import android.util.Log;

import android.view.ViewGroup;


import androidx.appcompat.app.AppCompatActivity;


import com.bt.admanager.AdWeightManager;

import com.bt.jrsdk.util.NativeAdDemoRender;

import com.sigmob.windad.natives.NativeADData;
import com.sigmob.windad.natives.WindNativeAdContainer;

import com.today.player.R;


import java.util.List;


public class NativeAdUnifiedActivity extends AppCompatActivity {

    private ViewGroup adContainer;
    private List<NativeADData> unifiedADDataList;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_native_ad_unified);
        adContainer = findViewById(R.id.native_ad_container);
        showNativeAd();
    }

    private void showNativeAd() {
        unifiedADDataList = AdWeightManager.getInstance().sigAds;
        if (unifiedADDataList != null && unifiedADDataList.size() > 0) {
            NativeADData nativeADData = unifiedADDataList.get(0);
            //创建一个装整个自渲染广告的容器
            WindNativeAdContainer windContainer = new WindNativeAdContainer(this);
            //媒体自渲染的View
            NativeAdDemoRender adRender = new NativeAdDemoRender();
            //将容器和view链接起来
            nativeADData.connectAdToView(this, windContainer, adRender);
            //设置dislike弹窗
            nativeADData.setDislikeInteractionCallback(this, new NativeADData.DislikeInteractionCallback() {
                @Override
                public void onShow() {
                    Log.d("lance", "onShow: ");
                }

                @Override
                public void onSelected(int position, String value, boolean enforce) {
                    Log.d("lance", "onSelected: " + position + ":" + value + ":" + enforce);
                    if (adContainer != null) {
                        adContainer.removeAllViews();
                    }
                }

                @Override
                public void onCancel() {
                    Log.d("lance", "onADExposed: ");
                }
            });
            //媒体最终将要展示广告的容器
            if (adContainer != null) {
                adContainer.removeAllViews();
                adContainer.addView(windContainer);
            }
        } else {
            finish();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (unifiedADDataList != null && unifiedADDataList.size() > 0) {
            for (NativeADData ad : unifiedADDataList) {
                if (ad != null) {
                    ad.destroy();
                }
            }
        }
    }

}