package com.bt.jrsdk.activity;

import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;


import com.aliyun.player.IPlayer;
import com.aliyun.player.alivcplayerexpand.theme.Theme;
import com.aliyun.player.alivcplayerexpand.widget.AliyunVodPlayerView;
import com.aliyun.player.aliyunplayerbase.util.AliyunScreenMode;
import com.aliyun.player.bean.ErrorInfo;
import com.aliyun.player.nativeclass.MediaInfo;
import com.aliyun.player.source.UrlSource;
import com.bt.jrsdk.bean.VideoAdInfo;
import com.bt.jrsdk.config.Config;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdObserver;
import com.bt.jrsdk.util.LogUtil;
import com.bt.jrsdk.util.Utils;
import com.today.player.R;


public class VideoActivity extends BaseActivity {
    private AliyunVodPlayerView mVideoView;
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
        mVideoView.requestFocus();
        mVideoView.setLivePlay(true);
        mVideoView.setKeepScreenOn(true);
        mVideoView.setTheme(Theme.Blue);
        mVideoView.setAutoPlay(false);
        mVideoView.changeScreenMode(AliyunScreenMode.Full, false);
        mVideoView.setScaleMode(IPlayer.ScaleMode.SCALE_ASPECT_FILL);
        UrlSource urlSource = new UrlSource();
        urlSource.setUri(adInfo.getVideoUrl());
        mVideoView.setLocalSource(urlSource);
        mVideoView.start();
        mVideoView.setOnPreparedListener(new IPlayer.OnPreparedListener() {
            @Override
            public void onPrepared() {
                cover.setVisibility(View.GONE);
                if (mVideoView.getVisibility() == View.GONE) {
                    mVideoView.setVisibility(View.VISIBLE);
                }
                if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                    AdListenerManager.getInstance().getVideoListener(pid).onShow();
                }
            }
        });
        mVideoView.setOnTrackReadyListener(new IPlayer.OnTrackReadyListener() {
            @Override
            public void onTrackReady(MediaInfo mediaInfo) {
                cover.setVisibility(View.VISIBLE);
                mVideoView.setVisibility(View.GONE);
            }
        });

        mVideoView.setOnCompletionListener(new IPlayer.OnCompletionListener() {
            @Override
            public void onCompletion() {
                if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                    AdListenerManager.getInstance().getVideoListener(pid).onFinish();
                    isFinish = true;
                }
                mVideoView.setVisibility(View.GONE);
                cover.setVisibility(View.VISIBLE);
            }
        });
        mVideoView.setOnErrorListener(new IPlayer.OnErrorListener() {
            @Override
            public void onError(ErrorInfo errorInfo) {
                //播放错误
                if (AdListenerManager.getInstance().getVideoListener(pid) != null) {
                    AdListenerManager.getInstance().getVideoListener(pid).onError(Config.VIDEO_ERROR, Config.CODE_VIDEO_ERROR);
                    AdListenerManager.getInstance().getVideoListener(pid).onFinish();
                }
                VideoActivity.this.finish();
            }
        });
    }

    private void initListener() {
        cover.setOnTouchListener(onTouchListener);
        mVideoView.setOnTouchListener(onTouchListener);
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
        mVideoView = findViewById(R.id.video_ad);
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
                        mVideoView.onDestroy();
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
        if (mVideoView != null) {
            mVideoView.pause();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (mVideoView != null && !mVideoView.isPlaying() && !isFinish) {
            mVideoView.start();
        }
    }

    @Override
    protected void onStop() {
        super.onStop();
    }

    @Override
    protected void onDestroy() {
        mVideoView.onDestroy();
        getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        super.onDestroy();
    }
}