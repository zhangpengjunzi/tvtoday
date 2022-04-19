package com.bt.jrsdk.activity;

import android.app.Activity;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.Nullable;

import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.XNativeView;
import com.bt.admanager.AdWeightManager;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.util.Utils;
import com.squareup.picasso.Picasso;
import com.today.player.R;

import java.util.List;

/**
 * 百度插屏
 */
public class BdPauseVideoActivity extends Activity {

    private NativeResponse ad;
    private XNativeView mVideoView;
    private ImageView adLogo, imageClose;
    private String pid;
    private TextView tv_jump;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        if (Build.VERSION.SDK_INT == Build.VERSION_CODES.O || Build.VERSION.SDK_INT == Build.VERSION_CODES.O_MR1) {
            setTheme(R.style.Theme_MyTransparent1);
        }
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_bdad_pause);
        initView();
        initData();
    }


    private void initView() {
        mVideoView = findViewById(R.id.videoview);
        adLogo = findViewById(R.id.native_adlogo);
        tv_jump = findViewById(R.id.tv_jump);
        imageClose = findViewById(R.id.img_video_close);
        imageClose.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
    }


    private void initData() {
        pid = getIntent().getStringExtra("pid");
        List<NativeResponse> responses = AdWeightManager.getInstance().bdAds;
        if (responses != null && responses.size() > 0) {
            ad = responses.get(0);
            mVideoView.setNativeItem(ad);
            mVideoView.setShowProgress(true);
            mVideoView.setProgressBarColor(Color.GRAY);
            mVideoView.setProgressBackgroundColor(Color.BLACK);
            mVideoView.setProgressHeightInDp(1);
            mVideoView.setVideoMute(false);
            mVideoView.render();
            Picasso.get().load(ad.getAdLogoUrl()).into(adLogo);
            adFinish();
        } else {
            finish();
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
        if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
            AdListenerManager.getInstance().getVideoListener(pid).onShow();
        }
    }


    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
            AdListenerManager.getInstance().getVideoListener(pid).onClose();
            AdListenerManager.getInstance().getVideoListener(pid).onFinish();
        }
        if (ad != null) {
            ad = null;
        }
    }
}
