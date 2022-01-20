package com.today.player.ui.activity;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.today.player.R;
import com.today.player.base.BaseActivity;
import com.today.player.bean.VodInfo;
import com.today.player.dkplayer.SimonVideoController;
import com.today.player.dkplayer.SimonVodControlView;
import com.today.player.dkplayer.VideoAnalysis;
import com.today.player.event.RefreshEvent;
import com.today.player.ui.weight.GestureView;
import com.today.player.util.PlayUtils;
import com.today.player.widget.VodPlayView;
import com.today.player.widget.VodSeekLayout;

import org.greenrobot.eventbus.EventBus;

import java.util.List;
import java.util.Map;

import tv.danmaku.ijk.media.player.IjkMediaPlayer;
import xyz.doikki.videoplayer.exo.ExoMediaPlayerFactory;
import xyz.doikki.videoplayer.ijk.IjkPlayerFactory;
import xyz.doikki.videoplayer.player.AndroidMediaPlayerFactory;
import xyz.doikki.videoplayer.player.PlayerFactory;
import xyz.doikki.videoplayer.player.VideoView;
import xyz.doikki.videoplayer.render.RenderViewFactory;
import xyz.doikki.videoplayer.render.TextureRenderViewFactory;

/**
 * @author pj567
 * @date :2020/12/22
 * @description:
 */
public class PlayActivity extends BaseActivity {
    private xyz.doikki.videoplayer.player.VideoView mVideoView;
    //private VodPlayView mVideoView;
    private SimonVideoController mController;
    private String playUrl;
    private VodInfo mVodInfo;
    private String sourceKey;
    private boolean isPause = false;
    private VideoAnalysis videoAnalysis;


    @Override
    protected int getLayoutResID() {
        return R.layout.activity_play;
    }

    @Override
    protected void init() {
        initView();
        initData();
    }

    private void initView() {
        mVideoView = findViewById(R.id.mVideoView);
        PlayUtils.a(mVideoView);
        mController = new SimonVideoController(this);
        mController.addControlComponent(new GestureView(this));
        SimonVodControlView simonVodControlView = new SimonVodControlView(this);
        mController.addControlComponent(simonVodControlView);
        mController.setCanChangePosition(true);
        mController.setEnableInNormal(true);
        mController.setGestureEnabled(true);
        mVideoView.setOnStateChangeListener(new VideoView.OnStateChangeListener() {
            @Override
            public void onPlayerStateChanged(int playerState) {
            }

            @Override
            public void onPlayStateChanged(int playState) {
            }
        });
        mVideoView.startFullScreen();
        mVideoView.setVideoController(mController);
        mVideoView.setScreenScaleType(xyz.doikki.videoplayer.player.VideoView.SCREEN_SCALE_16_9);
        mVideoView.addOnStateChangeListener(new VideoView.SimpleOnStateChangeListener() {
            @Override
            public void onPlayerStateChanged(int playerState) {
                mController.onPlayStateChanged(playerState);
                Log.i("_url","aa"+playerState);
                switch (playerState) {
                    case VideoView.STATE_ERROR:
                        Toast.makeText(mContext, "播放错误", Toast.LENGTH_SHORT).show();
                        break;
                }
            }
        });
    }

    private void initData() {
        Intent intent = getIntent();
        if (intent != null && intent.getExtras() != null) {
            Bundle bundle = intent.getExtras();
            mVodInfo = (VodInfo) bundle.getSerializable("VodInfo");
            sourceKey = bundle.getString("sourceKey");
            if (mVodInfo != null && mVodInfo.seriesMap != null) {
                playUrl = mVodInfo.seriesMap.get(mVodInfo.fromList.get(mVodInfo.playFlag).name).get(mVodInfo.playIndex).url;
                playSet();
            }
        }
    }

    private void playSet() {
        StringBuilder sb = new StringBuilder();
        sb.append(mVodInfo.name);
        sb.append(" ");
        sb.append(mVodInfo.seriesMap.get(mVodInfo.fromList.get(mVodInfo.playFlag).name).get(mVodInfo.playIndex).name);
        mController.a(sb.toString());
        f();
        videoAnalysis = new VideoAnalysis();
        videoAnalysis.a(this, new a());
        Dialog dialog = videoAnalysis.b;
        if (dialog != null && !dialog.isShowing()) {
            dialog.show();
        }
        videoAnalysis.a(sourceKey, "", playUrl, new PlayStart());
    }

    public void f() {
        if (videoAnalysis != null) {
            try {
                Dialog dialog = videoAnalysis.b;
                if (dialog != null && dialog.isShowing()) {
                    videoAnalysis.b.dismiss();
                }
            } catch (Throwable th) {
            }
        }
    }


    public class a implements VideoAnalysis.j {
        public a() {
        }

        @Override
        public void finish() {
            PlayActivity.this.finish();
            PlayActivity.this.f();
        }
    }


    public class PlayStart implements VideoAnalysis.play {
        public PlayStart() {
        }

        public void a(String str, Map<String, String> map) {
            if (mVideoView != null) {
                mVideoView.release();
                Log.i("_url",str);
                if (map != null) {
                    mVideoView.setUrl(str, map);
                } else {
                    mVideoView.setUrl(str);
                }
                mVideoView.start();
            }
            f();
        }

        public void a() {
            PlayActivity.this.finish();

        }
    }


    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {

        return super.onKeyDown(keyCode, event);

    }

    @Override
    protected void onResume() {
        super.onResume();
        if (mVideoView != null) {
            mVideoView.resume();
        }
    }


    @Override
    protected void onPause() {
        super.onPause();
        if (mVideoView != null) {
            mVideoView.pause();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (mVideoView != null) {
            mVideoView.release();
        }
    }


    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        int action = keyEvent.getAction();
        if (mController.a()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int i = 1;
        if (action == 0) {
            if (keyCode == 22 || keyCode == 21) {
                if (keyCode != 22) {
                    i = -1;
                }
                mController.a(i);
            } else if (keyCode == 23 || keyCode == 85 || keyCode == 7) {
                mController.d();
            } else if (keyCode == 19) {
                mController.b();
            } else if (keyCode == 20) {
                mController.b();
            }
        } else if (action == 1 && (keyCode == 22 || keyCode == 21)) {
            mController.c();
        }
        return super.dispatchKeyEvent(keyEvent);
    }


}