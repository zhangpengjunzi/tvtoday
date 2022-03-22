package com.bt.jrsdk.activity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;


import com.bt.jrsdk.bean.SplashAdInfo;
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

public class VideoFullActivity extends BaseActivity {
    private VideoView video;
    private ImageView cover;
    private SplashAdInfo adInfo;
    private TextView tv_jump;
    private int stopPosition = 0;
    private long allTime = 0;
    private ImageView close;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        setContentView(R.layout.activity_video);
        pid = getIntent().getStringExtra("pid");
        if (AdObserver.getInstance().getSplashAdInfo(pid) != null) {
            adInfo = AdObserver.getInstance().getSplashAdInfo(pid);
            reqId = adInfo.getReqId();
            webUrl = adInfo.getWebUrl();
            ads_id = adInfo.ads_id;
            pic = Utils.getInstance().bytes2Bitmap(adInfo.getPic());
        } else {
            if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                AdListenerManager.getInstance().getSplashListener(pid).onError(Config.AD_INFO_NULL, Config.CODE_AD_INFO_NULL);
                AdListenerManager.getInstance().getSplashListener(pid).onFinish();
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
                        allTime = video.getDuration();
                        break;
                    case 3:
                        //正在播放
                        cover.setVisibility(View.GONE);
                        if (video.getVisibility() == View.GONE) {
                            video.setVisibility(View.VISIBLE);
                        }
                        if (tv_jump.getVisibility() == View.GONE) {
                            tv_jump.setVisibility(View.VISIBLE);
                        }
                        timerRuning();
                        if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                            AdListenerManager.getInstance().getSplashListener(pid).onShow();
                        }
                        break;
                    case 5:
                        //播放完成
                        break;
                    case -1:
                        //播放错误
                        if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                            AdListenerManager.getInstance().getSplashListener(pid).onError(Config.VIDEO_ERROR, Config.CODE_VIDEO_ERROR);
                            AdListenerManager.getInstance().getSplashListener(pid).onFinish();
                        }
                        VideoFullActivity.this.finish();
                        break;
                }
                Log.i("_playState", playState + "");
            }
        });
    }

    private void initListener() {
        video.setOnTouchListener(onTouchListener);
        cover.setOnTouchListener(onTouchListener);
    }

    private View.OnTouchListener onTouchListener = new View.OnTouchListener() {
        @Override
        public boolean onTouch(View v, MotionEvent event) {
            if (event.getAction() == MotionEvent.ACTION_DOWN) {
                LogUtil.d("Video click");
                if (responseClick()) {
                    if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                        AdListenerManager.getInstance().getSplashListener(pid).onClick();
                    }
                    showTime = System.currentTimeMillis();
                    reportClick(event.getRawX(), event.getRawY(), event.getPressure());
                    //VideoTimeUtil.recycler();
                    go2WebActivity();
                }
            }
            return false;
        }
    };

    private void timerRuning() {
        VideoTimeUtil.countDown(video, new VideoTimeUtil.CountDownListener() {
            @Override
            public void currentTime(long time) {
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        long currentTime = (allTime - time) / 1000;
                        if (time < 700 || currentTime == 0) {
                            VideoTimeUtil.recycler();
                            if (Utils.getDeviceType().equals("1")) {
                                tv_jump.setText("按返回键关闭");
                            } else {
                                tv_jump.setVisibility(View.GONE);
                                close.setVisibility(View.VISIBLE);
                            }
                            cover.setVisibility(View.VISIBLE);
                            video.setVisibility(View.GONE);
                        } else {
                            tv_jump.setText(currentTime + "s");
                        }
                    }
                });
            }
        });
    }


    @Override
    protected void onResult() {
        if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
            AdListenerManager.getInstance().getSplashListener(pid).onFinish();
        }
    }

    private void initView() {
        video = findViewById(R.id.video_ad);
        cover = findViewById(R.id.img_video_cover);
        tv_jump = findViewById(R.id.tv_jump);
        cover.setImageBitmap(pic);
        close = findViewById(R.id.img_video_close);
        if (!Utils.getDeviceType().equals("1")) {
            close.setImageResource(R.drawable.close);
            close.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (responseClick()) {
                        if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                            AdListenerManager.getInstance().getSplashListener(pid).onClose();
                            AdListenerManager.getInstance().getSplashListener(pid).onFinish();
                        }
                        video.release();
                        VideoFullActivity.this.finish();
                    }
                }
            });
            initListener();
        }
    }

    @Override
    public void onBackPressed() {
        if (close.getVisibility() == View.VISIBLE || tv_jump.getText().toString().equals("按返回键关闭")) {
            if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                AdListenerManager.getInstance().getSplashListener(pid).onClose();
                AdListenerManager.getInstance().getSplashListener(pid).onFinish();
            }
            super.onBackPressed();
        }
    }

    @Override
    protected void onPause() {
        super.onPause();
        if (video != null) {
            VideoTimeUtil.recycler();
            video.pause();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (video != null && !video.isPlaying()) {
            cover.setVisibility(View.VISIBLE);
            video.start();
        }
        LogUtil.d("onResume = " + video.getCurrentPosition());
    }

    @Override
    protected void onStop() {
        super.onStop();
    }

    @Override
    protected void onDestroy() {
        if (video != null) {
            video.release();
        }
        getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        VideoTimeUtil.recycler();
        cover.setImageDrawable(null);
        super.onDestroy();
    }

}