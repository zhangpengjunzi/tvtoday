package com.bt.jrsdk.util;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;


import com.sigmob.windad.WindAdError;
import com.sigmob.windad.natives.NativeADData;
import com.sigmob.windad.natives.NativeADEventListener;
import com.sigmob.windad.natives.NativeAdPatternType;
import com.sigmob.windad.natives.WindNativeAdRender;
import com.today.player.R;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NativeAdDemoRender implements WindNativeAdRender<NativeADData> {

    private static final String TAG = NativeAdDemoRender.class.getSimpleName();

    private Context context;
    /**
     * 多布局根据adPatternType复用不同的根视图
     */
    private Map<Integer, View> developViewMap = new HashMap<>();
    private View mButtonsContainer;
    private FrameLayout mMediaViewLayout;
    private ImageView mImagePoster;
    private LinearLayout native_3img_ad_container;
    private ImageView img_1;
    private ImageView img_2;
    private ImageView img_3;

    /**
     * NativeAdPatternType 取值范围
     *
     * @param context
     * @param adPatternType 这里可以根据 adPatternType创建不用的根视图容器
     * @return
     */
    @Override
    public View createView(Context context, int adPatternType) {
        Log.d("lance", "---------createView----------" + adPatternType);
        this.context = context;
        View developView = developViewMap.get(adPatternType);
        if (developView == null) {
            switch (adPatternType) {
                case NativeAdPatternType.NATIVE_SMALL_IMAGE_AD:
                    developView = LayoutInflater.from(context).inflate(R.layout.activity_native_unified_sigmob_ad_premovie, null);
                    break;
                default:
                    developView = LayoutInflater.from(context).inflate(R.layout.activity_native_unified_sigmob_ad_premovie, null);
                    break;
            }
            developViewMap.put(adPatternType, developView);
        }
        if (developView.getParent() != null) {
            ((ViewGroup) developView.getParent()).removeView(developView);
        }

        return developView;
    }

    @Override
    public void renderAdView(View view, final NativeADData adData) {
        Log.d("lance", "renderAdView:" + adData.getTitle());
        mMediaViewLayout = view.findViewById(R.id.media_layout);
        mImagePoster = view.findViewById(R.id.img_poster);

        native_3img_ad_container = view.findViewById(R.id.native_3img_ad_container);
        img_1 = view.findViewById(R.id.img_1);
        img_2 = view.findViewById(R.id.img_2);
        img_3 = view.findViewById(R.id.img_3);

        //clickViews数量必须大于等于1
        List<View> clickableViews = new ArrayList<>();
        //可以被点击的view, 也可以把convertView放进来意味item可被点击
        clickableViews.add(view);
        ////触发创意广告的view（点击下载或拨打电话）
        List<View> creativeViewList = new ArrayList<>();
        // 所有广告类型，注册mDownloadButton的点击事件
        //  creativeViewList.add(mCTAButton);
//        clickableViews.add(mDownloadButton);

        List<ImageView> imageViews = new ArrayList<>();
        int patternType = adData.getAdPatternType();
        Log.d("lance", "patternType:" + patternType);
        //ITEM_VIEW_TYPE_LARGE_PIC_AD
        if (patternType == NativeAdPatternType.NATIVE_SMALL_IMAGE_AD || patternType == NativeAdPatternType.NATIVE_BIG_IMAGE_AD) {
            // 双图双文、单图双文：注册mImagePoster的点击事件
            mImagePoster.setVisibility(View.VISIBLE);
            mButtonsContainer.setVisibility(View.GONE);
            native_3img_ad_container.setVisibility(View.GONE);
            mMediaViewLayout.setVisibility(View.GONE);
            clickableViews.add(mImagePoster);
            imageViews.add(mImagePoster);
        } else if (patternType == NativeAdPatternType.NATIVE_GROUP_IMAGE_AD) {//IMAGE_MODE_GROUP_IMG
            // 三小图广告：注册native_3img_ad_container的点击事件
            native_3img_ad_container.setVisibility(View.VISIBLE);
            mImagePoster.setVisibility(View.GONE);
            mButtonsContainer.setVisibility(View.GONE);
            mMediaViewLayout.setVisibility(View.GONE);
            clickableViews.add(native_3img_ad_container);
            imageViews.add(img_1);
            imageViews.add(img_2);
            imageViews.add(img_3);
        }

        //重要! 这个涉及到广告计费，必须正确调用。convertView必须使用ViewGroup。
        //作为creativeViewList传入，点击不进入详情页，直接下载或进入落地页，视频和图文广告均生效
        adData.bindViewForInteraction(context, view, clickableViews, creativeViewList, null, new NativeADEventListener() {
            @Override
            public void onADExposed() {
                Log.d(TAG, "onADExposed: ");
            }

            @Override
            public void onADClicked() {
                Log.d(TAG, "onADClicked: ");
            }

            @Override
            public void onADError(WindAdError error) {
                Log.d(TAG, "onADError error code :" + error.toString());
            }

            @Override
            public void onADStatusChanged(String ctaText) {
                Log.d(TAG, "onADStatusChanged: " + ctaText);
            }
        });

        //需要等到bindViewForInteraction后再去添加media
        if (!imageViews.isEmpty()) {
            adData.bindImageViews(context, imageViews, 0);
        } else if (patternType == NativeAdPatternType.NATIVE_VIDEO_AD) {
            // 视频广告，注册mMediaView的点击事件
            mImagePoster.setVisibility(View.GONE);
            native_3img_ad_container.setVisibility(View.GONE);
            mMediaViewLayout.setVisibility(View.VISIBLE);
            adData.bindMediaView(context, mMediaViewLayout, new NativeADData.NativeADMediaListener() {

                @Override
                public void onVideoStart() {
                    Log.d(TAG, "onVideoStart: ");
                }

                @Override
                public void onVideoPause() {
                    Log.d(TAG, "onVideoPause: ");
                }

                @Override
                public void onVideoResume() {
                    Log.d(TAG, "onVideoResume: ");
                }

                @Override
                public void onVideoCompleted() {
                    Log.d(TAG, "onVideoCompleted: ");
                }

                @Override
                public void onVideoError(WindAdError windAdError) {
                    Log.d(TAG, "onVideoError: " + windAdError.toString());
                }

                @Override
                public void onVideoLoad() {
                    Log.d(TAG, "onVideoLoad: ");
                }
            });
            mButtonsContainer.setVisibility(View.VISIBLE);
        }
    }


}