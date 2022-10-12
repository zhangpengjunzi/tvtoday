package com.today.player.ui.activity;

import android.app.Dialog;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.Toast;

import com.aliyun.player.IPlayer;
import com.aliyun.player.alivcplayerexpand.theme.Theme;
import com.aliyun.player.alivcplayerexpand.widget.AliyunVodPlayerView;
import com.aliyun.player.aliyunplayerbase.util.AliyunScreenMode;
import com.aliyun.player.bean.ErrorInfo;
import com.aliyun.player.source.UrlSource;
import com.today.player.R;
import com.today.player.base.BaseActivity;
import com.today.player.dkplayer.VideoAnalysis;

import java.util.Map;



public class ProjectionPlayActivity extends BaseActivity {
    public AliyunVodPlayerView c;
    public VideoAnalysis e = null;

    @Override
    protected int getLayoutResID() {
        return R.layout.activity_projection_play;
    }


    public void init() {
        this.c = findViewById(R.id.mVideoView);
        this.c.setOnErrorListener(new IPlayer.OnErrorListener() {
            @Override
            public void onError(ErrorInfo errorInfo) {
                e();
                ProjectionPlayActivity.this.finish();
                Toast.makeText(ProjectionPlayActivity.this, "播放错误", Toast.LENGTH_LONG).show();
            }
        });
        this.c.setOnCompletionListener(new IPlayer.OnCompletionListener() {
            @Override
            public void onCompletion() {
                ProjectionPlayActivity.this.finish();
            }
        });
        this.c.setKeepScreenOn(true);
        this.c.setTheme(Theme.Blue);
        this.c.setAutoPlay(false);
        this.c.changeScreenMode(AliyunScreenMode.Full, false);
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
            if (c != null) {
                c.onDestroy();
                UrlSource urlSource = new UrlSource();
                urlSource.setUri(str);
                c.setLocalSource(urlSource);
                c.start();
            }
            e();
        }

        public void a() {
            e();
            ProjectionPlayActivity.this.finish();
        }
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
        if (this.c != null) {
            this.c.onDestroy();
            this.c = null;
        }
        e();
    }

    public void onPause() {
        super.onPause();
        if (this.c != null) {
            this.c.pause();
        }
    }

    public void onResume() {
        super.onResume();
        if (this.c != null) {
            this.c.onResume();
        }
    }
}