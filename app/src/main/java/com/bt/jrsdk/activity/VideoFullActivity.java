package com.bt.jrsdk.activity;

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
import com.bt.jrsdk.bean.SplashAdInfo;
import com.bt.jrsdk.config.Config;
import com.bt.jrsdk.manager.AdListenerManager;
import com.bt.jrsdk.manager.AdObserver;
import com.bt.jrsdk.util.LogUtil;
import com.bt.jrsdk.util.Utils;
import com.bt.jrsdk.util.VideoTimeUtil;
import com.today.player.R;


public class VideoFullActivity extends BaseActivity {
    private AliyunVodPlayerView mVideoView;
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
        if (adInfo == null) {
            if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                AdListenerManager.getInstance().getSplashListener(pid).onError(Config.AD_INFO_NULL, Config.CODE_AD_INFO_NULL);
                AdListenerManager.getInstance().getSplashListener(pid).onFinish();
            }
            this.finish();
            return;
        }
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
                //准备缓冲阶段
                allTime = mVideoView.getDuration();
                cover.setVisibility(View.GONE);
                if (mVideoView.getVisibility() == View.GONE) {
                    mVideoView.setVisibility(View.VISIBLE);
                }
                if (tv_jump.getVisibility() == View.GONE) {
                    tv_jump.setVisibility(View.VISIBLE);
                }
                timerRuning();
                if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                    AdListenerManager.getInstance().getSplashListener(pid).onShow();
                }
            }
        });
        mVideoView.setOnTrackReadyListener(new IPlayer.OnTrackReadyListener() {
            @Override
            public void onTrackReady(MediaInfo mediaInfo) {

            }
        });
        mVideoView.setOnErrorListener(new IPlayer.OnErrorListener() {
            @Override
            public void onError(ErrorInfo errorInfo) {
                //播放错误
                if (AdListenerManager.getInstance().getSplashListener(pid) != null) {
                    AdListenerManager.getInstance().getSplashListener(pid).onError(Config.VIDEO_ERROR, Config.CODE_VIDEO_ERROR);
                    AdListenerManager.getInstance().getSplashListener(pid).onFinish();
                }
                VideoFullActivity.this.finish();
            }
        });
    }

    private void initListener() {
        mVideoView.setOnTouchListener(onTouchListener);
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
        VideoTimeUtil.countDown(mVideoView, new VideoTimeUtil.CountDownListener() {
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
                            mVideoView.setVisibility(View.GONE);
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
        mVideoView = findViewById(R.id.video_ad);
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
                        mVideoView.onDestroy();
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
        if (mVideoView != null) {
            VideoTimeUtil.recycler();
            mVideoView.pause();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (mVideoView != null && !mVideoView.isPlaying()) {
            cover.setVisibility(View.VISIBLE);
            mVideoView.start();
        }
    }

    @Override
    protected void onStop() {
        super.onStop();
    }

    @Override
    protected void onDestroy() {
        if (mVideoView != null) {
            mVideoView.onDestroy();
        }
        getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        VideoTimeUtil.recycler();
        cover.setImageDrawable(null);
        super.onDestroy();
    }

}