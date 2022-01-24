package com.today.player.ui.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.IntEvaluator;
import android.animation.ObjectAnimator;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.orhanobut.hawk.Hawk;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.today.player.R;
import com.today.player.api.ApiConfig;
import com.today.player.base.BaseActivity;
import com.today.player.bean.PlayerModel;
import com.today.player.dkplayer.SimonVideoController;
import com.today.player.ui.adapter.LiveChannelAdapter;
import com.today.player.ui.weight.GestureView;
import com.today.player.util.FastClickCheckUtil;
import com.today.player.util.HawkConfig;
import com.today.player.util.PlayUtils;
import com.tv.widget.ViewObj;

import java.util.ArrayList;
import java.util.List;

import xyz.doikki.videoplayer.player.ProgressManager;
import xyz.doikki.videoplayer.player.VideoView;

public class LivePlayActivity extends BaseActivity {
    public VideoView c;
    public TextView d;
    public TextView e;
    public TextView f;
    public TvRecyclerView g;
    public LiveChannelAdapter h;
    public Handler i = new Handler();

    /* renamed from: j  reason: collision with root package name */
    public List<PlayerModel.LiveDTO> f166j = new ArrayList();
    public PlayerModel.LiveDTO k = null;
    public Runnable l = new b();
    public Runnable m = new c();
    public Runnable n = new d();
    public Runnable o = new e();

    /* renamed from: p  reason: collision with root package name */
    public String f167p = "";

    public class a implements SimonVideoController.a {
        public a() {
        }
    }

    public class b implements Runnable {

        public class a extends AnimatorListenerAdapter {
            public a() {
            }

            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                LivePlayActivity.this.g.setVisibility(View.INVISIBLE);
                LivePlayActivity.this.d.setVisibility(View.INVISIBLE);
            }
        }

        public b() {
        }

        public void run() {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) LivePlayActivity.this.g.getLayoutParams();
            if (LivePlayActivity.this.g.getVisibility() == View.VISIBLE) {
                ObjectAnimator ofObject = ObjectAnimator.ofObject(new ViewObj(LivePlayActivity.this.g, marginLayoutParams), "marginLeft", new IntEvaluator(), new Object[]{0, Integer.valueOf(-LivePlayActivity.this.g.getLayoutParams().width)});
                ofObject.setDuration(200);
                ofObject.addListener(new a());
                ofObject.start();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        public void run() {
            PlayerModel.LiveDTO qgVar;
            if (!TextUtils.isEmpty(LivePlayActivity.this.f167p)) {
                LivePlayActivity livePlayActivity = LivePlayActivity.this;
                int parseInt = Integer.parseInt(livePlayActivity.f167p);
                int i = 0;
                while (true) {
                    if (i >= livePlayActivity.f166j.size()) {
                        qgVar = null;
                        break;
                    }
                    qgVar = livePlayActivity.f166j.get(i);
                    if (qgVar.getChannelNum() == parseInt) {
                        break;
                    }
                    i++;
                }
                if (qgVar != null) {
                    livePlayActivity.a(qgVar, false);
                }
                LivePlayActivity.this.f167p = "";
            }
            LivePlayActivity livePlayActivity2 = LivePlayActivity.this;
            livePlayActivity2.i.postDelayed(livePlayActivity2.n, 4000);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        public void run() {
            LivePlayActivity.this.f.setVisibility(View.INVISIBLE);
            LivePlayActivity.this.e();
        }
    }

    public class e implements Runnable {

        public class a extends AnimatorListenerAdapter {
            public a(e eVar) {
            }

            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
            }
        }

        public e() {
        }

        public void run() {
            if (LivePlayActivity.this.g.getScrollState() != 0) {
                LivePlayActivity.this.i.postDelayed(this, 100);
                return;
            }
            TvRecyclerView tvRecyclerView = LivePlayActivity.this.g;
            ObjectAnimator ofObject = ObjectAnimator.ofObject(new ViewObj(tvRecyclerView, (ViewGroup.MarginLayoutParams) tvRecyclerView.getLayoutParams()), "marginLeft", new IntEvaluator(), new Object[]{Integer.valueOf(-LivePlayActivity.this.g.getLayoutParams().width), 0});
            ofObject.setDuration(200);
            ofObject.start();
            ofObject.addListener(new a(this));
            LivePlayActivity livePlayActivity = LivePlayActivity.this;
            livePlayActivity.i.removeCallbacks(livePlayActivity.l);
            LivePlayActivity livePlayActivity2 = LivePlayActivity.this;
            livePlayActivity2.i.postDelayed(livePlayActivity2.l, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        }
    }


    @Override
    public boolean dispatchTouchEvent(MotionEvent ev) {
        f();
        return super.dispatchTouchEvent(ev);
    }

    @Override
    protected int getLayoutResID() {
        return R.layout.activity_live_play;
    }

    @Override
    public void init() {
        this.c = findViewById(R.id.mVideoView);
        PlayUtils.a(this.c,null);
        this.g = findViewById(R.id.mGridView);
        this.f = findViewById(R.id.tvChannel);
        this.d = findViewById(R.id.tvHint);
        this.e = findViewById(R.id.tvUrl);
        this.g.setHasFixedSize(true);
        this.g.setLayoutManager(new V7LinearLayoutManager(mContext, 1, false));
        SimonVideoController simonVideoController = new SimonVideoController(this);
        simonVideoController.setScreenTapListener(new a());
        simonVideoController.addControlComponent(new GestureView(this));
        simonVideoController.setCanChangePosition(false);
        simonVideoController.setEnableInNormal(true);
        simonVideoController.setGestureEnabled(true);
        this.c.setVideoController(simonVideoController);
        PlayerModel.LiveDTO qgVar = null;
        this.c.setProgressManager((ProgressManager) null);
        this.h = new LiveChannelAdapter();
        this.g.setAdapter(this.h);
        this.g.addOnScrollListener(new RecyclerView.OnScrollListener() {
            @Override
            public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
                super.onScrollStateChanged(recyclerView, newState);
                LivePlayActivity livePlayActivity = LivePlayActivity.this;
                livePlayActivity.i.removeCallbacks(livePlayActivity.l);
                livePlayActivity.i.postDelayed(livePlayActivity.l, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);

            }
        });
        this.h.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
                FastClickCheckUtil.check(view);
                LivePlayActivity livePlayActivity = LivePlayActivity.this;
                if (livePlayActivity.a(livePlayActivity.f166j.get(position), false)) {
                    livePlayActivity.i.post(livePlayActivity.l);
                }

            }
        });
        String str = Hawk.get(HawkConfig.LAST_LIVE_CHANNEL_NAME, "");
        this.f166j.clear();
        this.f166j.addAll(ApiConfig.get().getChannelList());
        int i2 = 500;
        for (PlayerModel.LiveDTO next : this.f166j) {
            if (next.getChannelName().equals(str)) {
                qgVar = next;
            }
            if (!next.isInternal() && !next.isForAdd()) {
                next.setChannelNum(i2);
                i2++;
            }
        }
        if (qgVar == null) {
            qgVar = this.f166j.get(0);
        }
        this.g.setVisibility(View.INVISIBLE);
        this.d.setVisibility(View.INVISIBLE);
        this.h.setNewData(this.f166j);
        a(qgVar, false);
    }


    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (event.getAction() == 0) {
            int keyCode = event.getKeyCode();
            if (keyCode == 20 && this.g.getVisibility() == View.INVISIBLE) {
                int indexOf = this.f166j.indexOf(this.k) + 1;
                if (indexOf >= this.f166j.size()) {
                    indexOf = 0;
                }
                a(this.f166j.get(indexOf), false);
            } else if (keyCode == 19 && this.g.getVisibility() == View.INVISIBLE) {
                int indexOf2 = this.f166j.indexOf(this.k) - 1;
                if (indexOf2 < 0) {
                    indexOf2 = this.f166j.size() - 1;
                }
                a(this.f166j.get(indexOf2), false);
            } else if (keyCode == 21 && this.g.getVisibility() == View.INVISIBLE) {
                PlayerModel.LiveDTO qgVar = this.k;
                qgVar.sourceIdx--;
                a(qgVar, true);
            } else if (keyCode == 22 && this.g.getVisibility() == View.INVISIBLE) {
                PlayerModel.LiveDTO qgVar2 = this.k;
                qgVar2.sourceIdx++;
                a(qgVar2, true);
            } else if (((keyCode != 7) && keyCode != 23 && keyCode != 85) || this.g.getVisibility() != View.INVISIBLE) {
                if (this.g.getVisibility() == View.INVISIBLE) {
                    switch (keyCode) {
                        case 7:
                            a("0");
                            break;
                        case 8:
                            a("1");
                            break;
                        case 9:
                            a("2");
                            break;
                        case 10:
                            a("3");
                            break;
                        case 11:
                            a("4");
                            break;
                        case 12:
                            a("5");
                            break;
                        case 13:
                            a("6");
                            break;
                        case 14:
                            a("7");
                            break;
                        case 15:
                            a("8");
                            break;
                        case 16:
                            a("9");
                            break;
                    }
                }
            } else {
                f();
            }
        } else if (event.getAction() == 1 && this.g.getVisibility() == View.VISIBLE) {
            this.i.postDelayed(this.l, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        }
        return super.dispatchKeyEvent(event);
    }


    public final void e() {
        this.e.setText(this.k.getCurrentChannelUrl());
        this.f.setText(String.format("%d", this.k.getChannelNum()));
    }

    public final void f() {
        if (this.g.getVisibility() == View.INVISIBLE) {
            this.d.setVisibility(View.VISIBLE);
            this.g.setVisibility(View.VISIBLE);
            this.g.setSelection(this.f166j.indexOf(this.k));
            this.i.postDelayed(this.o, 100);
        }
    }

    public void onBackPressed() {
        if (this.g.getVisibility() == View.VISIBLE) {
            this.i.post(this.l);
        } else {
            super.onBackPressed();
        }
    }


    public void onDestroy() {
        super.onDestroy();
        VideoView videoView = this.c;
        if (videoView != null) {
            videoView.release();
        }
    }

    public void onPause() {
        super.onPause();
        VideoView videoView = this.c;
        if (videoView != null) {
            videoView.pause();
        }
        this.i.removeCallbacksAndMessages((Object) null);
    }

    public void onResume() {
        super.onResume();
        VideoView videoView = this.c;
        if (videoView != null) {
            videoView.resume();
        }
        if (this.g.getVisibility() == View.VISIBLE) {
            this.i.postDelayed(this.l, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        }
    }

    public final void a(String str) {
        if (this.f167p.length() < 4) {
            this.i.removeCallbacks(this.m);
            this.i.removeCallbacks(this.n);
            this.f.setVisibility(View.VISIBLE);
            String format = String.format("%s%s", new Object[]{this.f167p, str});
            this.f167p = format;
            this.f.setText(format);
            this.i.postDelayed(this.m, 1000);
        }
    }

    public final boolean a(PlayerModel.LiveDTO qgVar, boolean z) {
        if ((qgVar == this.k && !z) || qgVar == null) {
            return false;
        }
        PlayerModel.LiveDTO qgVar2 = this.k;
        if (qgVar2 != null) {
            qgVar2.setDefault(false);
        }
        this.h.notifyItemChanged(this.f166j.indexOf(this.k));
        this.k = qgVar;
        qgVar.setDefault(true);
        this.h.notifyItemChanged(this.f166j.indexOf(this.k));
        e();
        this.f.setVisibility(View.VISIBLE);
        this.i.postDelayed(this.n, 4000);
        Hawk.put(HawkConfig.LAST_LIVE_CHANNEL_NAME, qgVar.getChannelName());
        this.c.release();
        this.c.setUrl(qgVar.getCurrentChannelUrl());
        this.c.start();
        return true;
    }
}
