package com.bt.jrsdk.activity;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.Nullable;

import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.util.Utils;
import com.bytedance.sdk.openadsdk.TTSplashAd;
import com.today.player.R;

public class TTAdPreMovieActivity extends Activity {

    private TTSplashAd mSplashAd;

    private FrameLayout mSplashContainer;
    private final int MSG_IMAGE_START = 100;
    private final int IMAGE_COUNT = 5;
    private ImageView imageClose;
    private TextView tv_jump;
    private String pid;
    private H mHandler = new H();
    private int gdtAdType;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        gdtAdType = AdWeightManager.getInstance().getGdtAdType();
        if (gdtAdType == 0) {
            setTheme(android.R.style.Theme_NoTitleBar_Fullscreen);
        } else {
            if (Build.VERSION.SDK_INT == Build.VERSION_CODES.O || Build.VERSION.SDK_INT == Build.VERSION_CODES.O_MR1) {
                setTheme(R.style.Theme_MyTransparent1);
            }
        }
        super.onCreate(savedInstanceState);
        if (gdtAdType == 0) {
            setContentView(R.layout.activity_ttad_premovie);
        } else {
            setContentView(R.layout.activity_ttad_pause);
        }
        if (AdWeightManager.getInstance().ttAds.size() > 0) {
            mSplashAd = AdWeightManager.getInstance().ttAds.get(0);
            initView();
            initData();
        } else {
            finish();
        }
    }


    private void initView() {
        mSplashContainer = findViewById(R.id.splash_container);
        imageClose = findViewById(R.id.img_video_close);
        tv_jump = findViewById(R.id.tv_jump);
        imageClose.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
    }

    private void initData() {
        pid = getIntent().getStringExtra("pid");
        View view = mSplashAd.getSplashView();
        if (view != null && mSplashContainer != null && !com.bt.jrsdk.activity.TTAdPreMovieActivity.this.isFinishing()) {
            mSplashContainer.setVisibility(View.VISIBLE);
            mSplashContainer.removeAllViews();
            //把SplashView 添加到ViewGroup中,注意开屏广告view：width >=70%屏幕宽；height >=50%屏幕高
            mSplashContainer.addView(view);
            //关闭自带得倒计时
            mSplashAd.setNotAllowSdkCountdown();
            if (gdtAdType == 0) {
                tv_jump.setVisibility(View.VISIBLE);
                imageClose.setVisibility(View.GONE);
                mHandler.sendMessage(mHandler.obtainMessage(MSG_IMAGE_START, 0));
            } else {
                adFinish();
            }
            mSplashAd.setSplashInteractionListener(new TTSplashAd.AdInteractionListener() {
                @Override
                public void onAdClicked(View view, int i) {
                    Log.i("_tt","click");
                }

                @Override
                public void onAdShow(View view, int i) {
                    Log.i("_tt","show");
                    if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                        AdListenerManager.getInstance().getSplashListener(pid).onShow();
                    }
                    if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                        AdListenerManager.getInstance().getVideoListener(pid).onShow();
                    }
                }

                @Override
                public void onAdSkip() {

                }

                @Override
                public void onAdTimeOver() {

                }
            });
        }
    }


    private void adFinish() {
        if (Utils.getDeviceType().equals("1")) {
            tv_jump.setText("按返回键关闭");
            tv_jump.setVisibility(View.VISIBLE);
        } else {
            tv_jump.setVisibility(View.GONE);
            imageClose.setVisibility(View.VISIBLE);
        }
    }


    @Override
    public void onBackPressed() {
        if (imageClose.getVisibility() == View.VISIBLE || tv_jump.getText().toString().equals("按返回键关闭")) {
            super.onBackPressed();
        }
    }


    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
            AdListenerManager.getInstance().getSplashListener(pid).onClose();
            AdListenerManager.getInstance().getSplashListener(pid).onFinish();
        }
        if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
            AdListenerManager.getInstance().getVideoListener(pid).onClose();
            AdListenerManager.getInstance().getVideoListener(pid).onFinish();
        }
    }


    private class H extends Handler {
        public H() {
            super();
        }

        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
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
}

