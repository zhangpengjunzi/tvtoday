package com.today.player.ui.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.Toast;

import com.today.player.R;
import com.today.player.base.BaseActivity;
import com.today.player.dkplayer.SimonVideoController;
import com.today.player.dkplayer.SimonVodControlView;
import com.today.player.dkplayer.VideoAnalysis;
import com.today.player.ui.weight.GestureView;
import com.today.player.util.PlayUtils;

import java.util.Map;

import xyz.doikki.videoplayer.player.VideoView;


public class ProjectionPlayActivity extends BaseActivity {
    public VideoView c;
    public SimonVideoController d;
    public VideoAnalysis e = null;

    @Override
    protected int getLayoutResID() {
        return R.layout.activity_projection_play;
    }


    public void init() {
        this.c = findViewById(R.id.mVideoView);
        PlayUtils.a(this.c, null);
        SimonVideoController simonVideoController = new SimonVideoController(this);
        simonVideoController.setListener(new SimonVideoController.OnPlayStateChangeListener() {
            @Override
            public void playStateChanged(int state) {
                if (state == -1) {
                    e();
                    ProjectionPlayActivity.this.finish();
                    Toast.makeText(ProjectionPlayActivity.this, "播放错误", Toast.LENGTH_LONG).show();
                } else if (state == 5) {
                    ProjectionPlayActivity.this.finish();
                }
            }
        });
        this.d = simonVideoController;
        simonVideoController.addControlComponent(new GestureView(this));
        SimonVodControlView simonVodControlView = new SimonVodControlView(this);
        simonVodControlView.i.setVisibility(View.GONE);
        simonVodControlView.f160j.setVisibility(View.GONE);
        simonVodControlView.r.setVisibility(View.GONE);
        simonVodControlView.x.setVisibility(View.GONE);
        simonVodControlView.y.setVisibility(View.GONE);
        ViewGroup.LayoutParams layoutParams2 = simonVodControlView.q.getLayoutParams();
        if (layoutParams2 instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams2).gravity = 17;
        }
        this.d.addControlComponent(simonVodControlView);
        this.d.setCanChangePosition(true);
        this.d.setEnableInNormal(true);
        this.d.setGestureEnabled(true);
        this.c.setVideoController(this.d);
        Intent intent = getIntent();
        if (intent != null && intent.getExtras() != null) {
            String string = intent.getExtras().getString("html");
            e();
            this.e = new VideoAnalysis();
            this.e.a(this, new VideoAnalysis.j() {
                @Override
                public void finish() {
                    e();
                    ProjectionPlayActivity.this.finish();
                }
            });
            Dialog dialog = this.e.b;
            if (dialog != null && !dialog.isShowing()) {
                this.e.b.show();
            }
            e.a("", "", string, new PlayStart());
        }
    }

    public class PlayStart implements VideoAnalysis.play {
        public PlayStart() {
        }

        public void a(String str, Map<String, String> map) {
            d.a(str);
            if (c != null) {
                c.release();
                c.setUrl(str);
                c.start();
            }
            e();
        }

        public void a() {
            e();
            ProjectionPlayActivity.this.finish();
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        int action = keyEvent.getAction();
        int i = 1;
        if (action == 0) {
            if (keyCode == 22 || keyCode == 21) {
                SimonVideoController simonVideoController = this.d;
                if (keyCode != 22) {
                    i = -1;
                }
                simonVideoController.a(i);
            } else if (keyCode == 23 || keyCode == 85 || keyCode == 7) {
                this.d.d();
            }
        } else if (action == 1 && (keyCode == 22 || keyCode == 21)) {
            this.d.c();
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public void e() {
        if (e != null) {
            try {
                Dialog dialog = e.b;
                if (dialog != null && dialog.isShowing()) {
                    e.b.dismiss();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public void onDestroy() {
        super.onDestroy();
        VideoView videoView = this.c;
        if (videoView != null) {
            videoView.release();
            this.c = null;
        }
        e();
    }

    public void onPause() {
        super.onPause();
        VideoView videoView = this.c;
        if (videoView != null) {
            videoView.pause();
        }
    }

    public void onResume() {
        super.onResume();
        VideoView videoView = this.c;
        if (videoView != null) {
            videoView.resume();
        }
    }
}