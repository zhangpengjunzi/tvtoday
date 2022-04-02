package com.bt.jrsdk.activity;

import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;


import com.bt.jrsdk.bean.VideoAdInfo;
import com.bt.jrsdk.config.Config;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdObserver;
import com.bt.jrsdk.util.CustomVideoView;
import com.bt.jrsdk.util.LogUtil;
import com.bt.jrsdk.util.Utils;
import com.bt.jrsdk.util.VideoTimeUtil;
import com.today.player.R;
import com.today.player.util.PlayUtils;

import xyz.doikki.videoplayer.player.VideoView;

public class VideoActivity extends BaseActivity {
    private VideoView video;
    private ImageView cover, imgClose;
    private VideoAdInfo adInfo;
    private boolean isFinish = false;
    private TextView back_video;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        if (Build.VERSION.SDK_INT == Build.VERSION_CODES.O || Build.VERSION.SDK_INT == Build.VERSION_CODES.O_MR1) {
            setTheme(R.style.Theme_MyTransparent1);
        }
        super.onCreate(savedInstanceState);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        setContentView(R.layout.activity_video_interaction);
        pid = getIntent().getStringExtra("pid");
        if (AdObserver.getInstance().getVideoAdInfo(pid) != null) {
            adInfo = AdObserver.getInstance().getVideoAdInfo(pid);
            reqId = adInfo.getReqId();
            webUrl = adInfo.getWebUrl();
            ads_id = adInfo.ads_id;
            pic = Utils.getInstance().bytes2Bitmap(adInfo.getPic());
        } else {
            if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                AdListenerManager.getInstance().getVideoListener(pid).onError(Config.AD_INFO_NULL, Config.CODE_AD_INFO_NULL);
            }
            this.finish();
        }
        initView();
        initVideo();
    }

    private void initVideo() {
        video.setScreenScaleType(VideoView.SCREEN_SCALE_MATCH_PARENT);
        video.setUrl(adInfo.getVideoUrl());
        PlayUtils.a(video);
        video.release();
        if (!video.isPlaying()) {
            video.start();
        }
        video.setOnStateChangeListener(new VideoView.OnStateChangeListener() {
            @Override
            public void onPlayerStateChanged(int playerState) {

            }

            @Override
            public void onPlayStateChanged(int playState) {
                switch (playState) {
                    case 2:
                        //准备缓冲阶段
                        cover.setVisibility(View.VISIBLE);
                        video.setVisibility(View.GONE);
                        break;
                    case 3:
                        //正在播放
                        cover.setVisibility(View.GONE);
                        if (video.getVisibility() == View.GONE) {
                            video.setVisibility(View.VISIBLE);
                        }
//                    video.setBackgroundColor(Color.TRANSPARENT);
                        if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                            AdListenerManager.getInstance().getVideoListener(pid).onShow();
                        }
                        break;
                    case 5:
                        //播放完成
                        if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                            AdListenerManager.getInstance().getVideoListener(pid).onFinish();
                            isFinish = true;
                        }
                        video.setVisibility(View.GONE);
                        cover.setVisibility(View.VISIBLE);
                        break;
                    case -1:
                        //播放错误
                        if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                            AdListenerManager.getInstance().getVideoListener(pid).onError(Config.VIDEO_ERROR, Config.CODE_VIDEO_ERROR);
                            AdListenerManager.getInstance().getVideoListener(pid).onFinish();
                        }
                        VideoActivity.this.finish();
                        break;
                }
                Log.i("_playState", playState + "");
            }
        });
    }

    private void initListener() {
        cover.setOnTouchListener(onTouchListener);
        video.setOnTouchListener(onTouchListener);
    }

    private View.OnTouchListener onTouchListener = new View.OnTouchListener() {
        @Override
        public boolean onTouch(View v, MotionEvent event) {
            if (event.getAction() == MotionEvent.ACTION_DOWN) {
                LogUtil.d("Video click");
                if (responseClick()) {
                    if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                        AdListenerManager.getInstance().getVideoListener(pid).onClick();
                    }
                    showTime = System.currentTimeMillis();
                    reportClick(event.getRawX(), event.getRawY(), event.getPressure());
                    go2WebActivity();
                }
            }
            return false;
        }
    };


    @Override
    protected void onResult() {
        if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
            AdListenerManager.getInstance().getVideoListener(pid).onFinish();
        }
    }

    private void initView() {
        video = findViewById(R.id.video_ad);
        cover = findViewById(R.id.img_video_cover);
        cover.setImageBitmap(pic);
        if (!Utils.getDeviceType().equals("1")) {
            imgClose = findViewById(R.id.img_video_close);
            imgClose.setVisibility(View.VISIBLE);
            imgClose.setImageResource(R.drawable.close);
            imgClose.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (responseClick()) {
                        if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                            AdListenerManager.getInstance().getVideoListener(pid).onClose();
                            if (isFinish) {
                                AdListenerManager.getInstance().getVideoListener(pid).onFinish();
                            }
                        }
                        video.release();
                        VideoActivity.this.finish();
                    }
                }
            });
            initListener();
        } else {
            back_video = findViewById(R.id.back_video);
            back_video.setVisibility(View.VISIBLE);
        }
    }

    @Override
    public void onBackPressed() {
        if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
            AdListenerManager.getInstance().getVideoListener(pid).onClose();
            if (isFinish) {
                AdListenerManager.getInstance().getVideoListener(pid).onFinish();
            }
        }
        super.onBackPressed();
    }

    @Override
    protected void onPause() {
        super.onPause();
        if (video != null) {
            video.pause();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (video != null && !video.isPlaying() && !isFinish) {
            video.start();
        }
    }

    @Override
    protected void onStop() {
        super.onStop();
    }

    @Override
    protected void onDestroy() {
        video.release();
        getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        super.onDestroy();
    }
}