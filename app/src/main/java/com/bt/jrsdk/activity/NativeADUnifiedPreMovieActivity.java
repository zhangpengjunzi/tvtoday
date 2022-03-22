package com.bt.jrsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.androidquery.AQuery;
import com.androidquery.callback.AjaxStatus;
import com.androidquery.callback.BitmapAjaxCallback;
import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.config.Config;
import com.bt.jrsdk.httplib.config.HttpMethod;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdStartManager;
import com.bt.jrsdk.util.NetUtil;
import com.bt.jrsdk.util.Utils;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.MediaView;
import com.qq.e.ads.nativ.NativeADEventListener;
import com.qq.e.ads.nativ.NativeADMediaListener;
import com.qq.e.ads.nativ.NativeADUnifiedListener;
import com.qq.e.ads.nativ.NativeUnifiedAD;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.ads.nativ.widget.NativeAdContainer;
import com.qq.e.comm.constants.AdPatternType;
import com.qq.e.comm.util.AdError;
import com.tencent.bugly.proguard.H;
import com.today.player.R;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class NativeADUnifiedPreMovieActivity extends Activity {

    private AQuery mAQuery;
    private NativeUnifiedADData mAdData;
    private H mHandler = new H();
    private static final int MSG_INIT_AD = 0;
    private static final int MSG_VIDEO_START = 1;
    private static final int MSG_IMAGE_START = 2;
    private static final String TAG = NativeADUnifiedPreMovieActivity.class.getSimpleName();

    // 与广告有关的变量，用来显示广告素材的UI
    private MediaView mMediaView;
    private ImageView mImagePoster;
    private NativeAdContainer mContainer;
    private LinearLayout native3imgContainer;

    private ImageView mCloseButton;
    private String pid;
    private TextView tv_jump;
    private final int IMAGE_COUNT = 5;
    private boolean mBindToCustomView;
    private int gdtAdType;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        gdtAdType = AdWeightManager.getInstance().getGdtAdType();
        if (gdtAdType == 0) {
            setTheme(android.R.style.Theme_NoTitleBar_Fullscreen);
        }
        super.onCreate(savedInstanceState);
        if (gdtAdType == 0) {
            setContentView(R.layout.activity_native_unified_ad_premovie);
        } else {
            setContentView(R.layout.activity_native_unified_ad_premovie_pause);
        }
        initView();
        mBindToCustomView = getIntent().getBooleanExtra("button_bind_to_custom_view", false);
        mContainer.setVisibility(View.VISIBLE);
        initAd(AdWeightManager.getInstance().gdtAds.get(0));
    }

    private void initView() {
        mMediaView = findViewById(R.id.gdt_media_view);
        mImagePoster = findViewById(R.id.img_poster);
        tv_jump = findViewById(R.id.tv_jump);
        mContainer = findViewById(R.id.native_ad_container);
        mAQuery = new AQuery(findViewById(R.id.native_ad_container));
        native3imgContainer = findViewById(R.id.native_3img_ad_container);
        mCloseButton = findViewById(R.id.close_button);
        mCloseButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                    AdListenerManager.getInstance().getSplashListener(pid).onClose();
                    AdListenerManager.getInstance().getSplashListener(pid).onFinish();
                }
                if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                    AdListenerManager.getInstance().getVideoListener(pid).onClose();
                    AdListenerManager.getInstance().getVideoListener(pid).onFinish();
                }
                if (mAdData != null) {
                    mAdData.destroy();
                }
                finish();
            }
        });
    }


    private void initAd(final NativeUnifiedADData ad) {
        if (ad == null) {
            finish();
            return;
        }
        mAdData = ad;
        pid = getIntent().getStringExtra("pid");
        renderAdUi(ad);
        //点击直接下载（App广告）或进入落地页
        List<View> clickableViews = new ArrayList<>();
        List<View> customClickableViews = new ArrayList<>();

        ArrayList<ImageView> imageViews = new ArrayList<>();
        if (ad.getAdPatternType() == AdPatternType.NATIVE_2IMAGE_2TEXT ||
                ad.getAdPatternType() == AdPatternType.NATIVE_1IMAGE_2TEXT) {
            // 双图双文、单图双文：注册mImagePoster的点击事件
            clickableViews.add(mImagePoster);
            imageViews.add(mImagePoster);
            if (gdtAdType == 0) {
                mHandler.sendMessage(mHandler.obtainMessage(MSG_IMAGE_START, 0));
                tv_jump.setVisibility(View.VISIBLE);
                mCloseButton.setVisibility(View.GONE);
            } else {
                adFinish();
            }
            if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                AdListenerManager.getInstance().getSplashListener(pid).onShow();
            }
            if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                AdListenerManager.getInstance().getVideoListener(pid).onShow();
            }
        } else if (ad.getAdPatternType() == AdPatternType.NATIVE_3IMAGE) {
            // 三小图广告：注册native_3img_ad_container的点击事件
            clickableViews.add(native3imgContainer);
            imageViews.add(native3imgContainer.findViewById(R.id.img_1));
            imageViews.add(native3imgContainer.findViewById(R.id.img_2));
            imageViews.add(native3imgContainer.findViewById(R.id.img_3));
        }
        //作为customClickableViews传入，点击不进入详情页，直接下载或进入落地页，图文、视频广告均生效，
        ad.bindAdToView(this, mContainer, null, clickableViews, customClickableViews);
        //如果需要获得点击view的信息使用NativeADEventListenerWithClickInfo代替NativeADEventListener
        if (!imageViews.isEmpty()) {
            ad.bindImageViews(imageViews, 0);
        } else if (ad.getAdPatternType() == AdPatternType.NATIVE_VIDEO) {
            mHandler.sendEmptyMessage(MSG_VIDEO_START);

            VideoOption videoOption = getVideoOption(getIntent());

            ad.bindMediaView(mMediaView, videoOption, new NativeADMediaListener() {
                @Override
                public void onVideoInit() {
                    Log.d(TAG, "onVideoInit: ");
                }

                @Override
                public void onVideoLoading() {
                    Log.d(TAG, "onVideoLoading: ");
                }

                @Override
                public void onVideoReady() {
                    Log.d(TAG, "onVideoReady");
                }

                @Override
                public void onVideoLoaded(int videoDuration) {
                    Log.d(TAG, "onVideoLoaded: ");
                }

                @Override
                public void onVideoStart() {
                    Log.d(TAG, "onVideoStart");
                    if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                        AdListenerManager.getInstance().getSplashListener(pid).onShow();
                    }
                    tv_jump.setVisibility(View.VISIBLE);
                    mCloseButton.setVisibility(View.GONE);
                    mHandler.sendEmptyMessageDelayed(MSG_INIT_AD, 0);
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
                    adFinish();
                }

                @Override
                public void onVideoError(AdError error) {
                    Log.d(TAG, "onVideoError: ");
                    if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                        AdListenerManager.getInstance().getSplashListener(pid).onError(Config.VIDEO_ERROR, Config.CODE_ACTIVITY_NULL);
                        AdListenerManager.getInstance().getSplashListener(pid).onFinish();
                    }
                    finish();
                }

                @Override
                public void onVideoStop() {
                    Log.d(TAG, "onVideoStop");
                }

                @Override
                public void onVideoClicked() {
                    Log.d(TAG, "onVideoClicked");
                }
            });
        }
    }


    public VideoOption getVideoOption(Intent intent) {
        if (intent == null) {
            return null;
        }
        VideoOption videoOption = null;
        boolean noneOption = intent.getBooleanExtra("none_option", false);
        if (!noneOption) {
            VideoOption.Builder builder = new VideoOption.Builder();
            builder.setAutoPlayPolicy(intent.getIntExtra("network", VideoOption.AutoPlayPolicy.ALWAYS));
            builder.setAutoPlayMuted(intent.getBooleanExtra("mute", false));
            builder.setDetailPageMuted(intent.getBooleanExtra("detail_page_muted", false));
            builder.setNeedCoverImage(intent.getBooleanExtra("need_cover", true));
            builder.setNeedProgressBar(intent.getBooleanExtra("need_progress", true));
            builder.setEnableDetailPage(intent.getBooleanExtra("enable_detail_page", true));
            builder.setEnableUserControl(intent.getBooleanExtra("enable_user_control", false));

            videoOption = builder.build();
        }
        return videoOption;
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (mAdData != null) {
            // 必须要在Actiivty.onResume()时通知到广告数据，以便重置广告恢复状态
            mAdData.resume();
        }
    }

    private void renderAdUi(NativeUnifiedADData ad) {
        int patternType = ad.getAdPatternType();
        if (patternType == AdPatternType.NATIVE_2IMAGE_2TEXT
                || patternType == AdPatternType.NATIVE_VIDEO) {
            setVisibilityFor3Img(false);
            mMediaView.setVisibility((patternType == AdPatternType.NATIVE_VIDEO) ? View.VISIBLE : View.GONE);
            mImagePoster.setVisibility(View.VISIBLE);

        } else if (patternType == AdPatternType.NATIVE_3IMAGE) {

            setVisibilityFor3Img(true);
            mImagePoster.setVisibility(View.GONE);
            mMediaView.setVisibility(View.GONE);
        } else if (patternType == AdPatternType.NATIVE_1IMAGE_2TEXT) {
            mAQuery.id(R.id.img_poster).clear();

            mImagePoster.setVisibility(View.GONE);
            setVisibilityFor3Img(false);
            mMediaView.setVisibility(View.GONE);
        }
    }

    private void setVisibilityFor3Img(boolean is3img) {
        findViewById(R.id.native_3img_ad_container).setVisibility(is3img ? View.VISIBLE : View.GONE);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (mAdData != null) {
            // 必须要在Actiivty.destroy()时通知到广告数据，以便释放内存
            mAdData.destroy();
        }
    }


    @Override
    public void onBackPressed() {
        if (mCloseButton.getVisibility() == View.VISIBLE || tv_jump.getText().toString().equals("按返回键关闭")) {
            if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                AdListenerManager.getInstance().getSplashListener(pid).onClose();
                AdListenerManager.getInstance().getSplashListener(pid).onFinish();
            }
            if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                AdListenerManager.getInstance().getVideoListener(pid).onClose();
                AdListenerManager.getInstance().getVideoListener(pid).onFinish();
            }
            super.onBackPressed();
        }
    }


    private class H extends Handler {
        public H() {
            super();
        }

        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case MSG_INIT_AD:
                    if (mAdData != null) {
                        int currentPosition = mAdData.getVideoCurrentPosition();
                        int total = mAdData.getVideoDuration();
                        int display = (total - currentPosition) / 1000;
                        Log.i("_position", currentPosition + "  " + total + "  " + display);
                        tv_jump.setText(display + "s");
                        if (display > 0) {
                            mHandler.sendEmptyMessageDelayed(MSG_INIT_AD, 1000);
                        }
                    }
                    break;
                case MSG_VIDEO_START:
                    mImagePoster.setVisibility(View.GONE);
                    mMediaView.setVisibility(View.VISIBLE);
                    break;
                case MSG_IMAGE_START:
                    int currentCount = (int) msg.obj;
                    int imageDisplay = IMAGE_COUNT - currentCount;
                    if (imageDisplay > 0) {
                        tv_jump.setText(imageDisplay + "s");
                        mHandler.sendMessageDelayed(obtainMessage(MSG_IMAGE_START, currentCount + 1), 1000);
                    } else {
                        adFinish();
                    }
                    break;
            }
        }
    }

    private void adFinish() {
        if (Utils.getDeviceType().equals("1")) {
            tv_jump.setVisibility(View.VISIBLE);
            tv_jump.setText("按返回键关闭");
            mCloseButton.setVisibility(View.GONE);
        } else {
            tv_jump.setVisibility(View.GONE);
            mCloseButton.setVisibility(View.VISIBLE);
        }
    }
}
