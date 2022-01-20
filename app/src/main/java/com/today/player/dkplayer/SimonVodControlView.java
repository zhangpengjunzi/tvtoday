package com.today.player.dkplayer;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;


import com.today.player.R;

import xyz.doikki.videoplayer.controller.ControlWrapper;
import xyz.doikki.videoplayer.controller.IControlComponent;
import xyz.doikki.videoplayer.util.PlayerUtils;


public class SimonVodControlView extends FrameLayout implements IControlComponent, View.OnClickListener, SeekBar.OnSeekBarChangeListener {
    public TextView A;
    public int B;
    public float C;
    public a D;
    public ControlWrapper a;
    public TextView b;
    public TextView c;
    public LinearLayout d;
    public LinearLayout e;
    public SeekBar f;
    public ProgressBar g;
    public ImageView h;
    public TextView i;

    /* renamed from: j  reason: collision with root package name */
    public TextView f160j;
    public TextView k;
    public TextView l;
    public boolean m;
    public boolean n = false;
    public ImageView o;

    /* renamed from: p  reason: collision with root package name */
    public TextView f161p;
    public TextView q;
    public TextView r;
    public TextView s;
    public LinearLayout t;
    public LinearLayout u;
    public LinearLayout v;
    public FrameLayout w;
    public TextView x;
    public TextView y;
    public TextView z;

    public interface a {

    }

    public SimonVodControlView(@NonNull Context context) {
        super(context);
        LayoutInflater.from(getContext()).inflate(getLayoutId(), this, true);
        this.d = (LinearLayout) findViewById(R.id.bottom_container);
        this.e = (LinearLayout) findViewById(R.id.center_container);
        SeekBar seekBar = (SeekBar) findViewById(R.id.seekBar);
        this.f = seekBar;
        seekBar.setOnSeekBarChangeListener(this);
        this.b = (TextView) findViewById(R.id.total_time);
        this.c = (TextView) findViewById(R.id.curr_time);
        ImageView imageView = (ImageView) findViewById(R.id.iv_play);
        this.h = imageView;
        imageView.setOnClickListener(this);
        this.g = (ProgressBar) findViewById(R.id.bottom_progress);
        this.i = (TextView) findViewById(R.id.play_next);
        this.f160j = (TextView) findViewById(R.id.play_pre);
        this.k = (TextView) findViewById(R.id.video_size);
        this.l = (TextView) findViewById(R.id.video_speed);
        this.i.setOnClickListener(this);
        this.f160j.setOnClickListener(this);
        this.k.setOnClickListener(this);
        this.l.setOnClickListener(this);
        if (Build.VERSION.SDK_INT <= 22) {
            this.f.getLayoutParams().height = -2;
        }
        this.d.setVisibility(View.GONE);
        this.e.setVisibility(View.GONE);
        this.g.setVisibility(View.GONE);
        this.t = (LinearLayout) findViewById(R.id.tv_progress_container);
        this.o = (ImageView) findViewById(R.id.tv_progress_icon);
        this.f161p = (TextView) findViewById(R.id.tv_progress_text);
        this.u = (LinearLayout) findViewById(R.id.tv_pause_container);
        this.s = (TextView) findViewById(R.id.tv_pause_progress_text);
        this.v = (LinearLayout) findViewById(R.id.tv_bottom_container);
        this.w = (FrameLayout) findViewById(R.id.tv_info_container);
        this.q = (TextView) findViewById(R.id.tv_info_name);
        this.r = (TextView) findViewById(R.id.tv_info_hint);
        this.x = (TextView) findViewById(R.id.tv_play_next);
        this.y = (TextView) findViewById(R.id.tv_play_pre);
        this.x.setOnClickListener(this);
        this.y.setOnClickListener(this);
        this.z = (TextView) findViewById(R.id.tv_video_size);
        this.A = (TextView) findViewById(R.id.tv_video_speed);
        this.z.setOnClickListener(this);
        this.A.setOnClickListener(this);
        this.w.setVisibility(View.GONE);
        this.B = 0;
        this.C = 1.0f;
    }

    public final void a() {
        int i2 = this.B + 1;
        this.B = i2;
        if (i2 > 5) {
            this.B = 0;
        }
        this.a.setScreenScaleType(this.B);
        e();
    }

    public void attach(@NonNull ControlWrapper controlWrapper) {
        this.a = controlWrapper;
        e();
    }

    public final void b() {
        float f2 = this.C + 0.25f;
        this.C = f2;
        if (((double) f2) > 2.1d) {
            this.C = 0.5f;
        }
        this.a.setSpeed(this.C);
        e();
    }

    public final void c() {
        this.u.animate().alpha(0.0f).setDuration(0).setListener((Animator.AnimatorListener) null);
    }

    @SuppressLint("WrongConstant")
    public void d() {
        int i2 = 0;
        boolean z2 = this.v.getVisibility() == 8;
        if (!z2 || this.u.getVisibility() != 0) {
            LinearLayout linearLayout = this.v;
            if (!z2) {
                i2 = 8;
            }
            linearLayout.setVisibility(i2);
        }
    }

    public final void e() {
        String a2 ="默认";
        int i2 = this.B;
        if (i2 == 0) {
            a2 = "默认";
        } else if (i2 == 1) {
            a2 = "16:9";
        } else if (i2 == 2) {
            a2 = "4:3";
        } else if (i2 == 3) {
            a2 = "填充";
        } else if (i2 == 4) {
            a2 = "原始";
        } else if (i2 == 5) {
            a2 = "裁剪";
        }
        String str = "x" + this.C;
        this.k.setText(a2);
        this.l.setText(str);
        this.z.setText(a2);
        this.A.setText(str);
    }

    public int getLayoutId() {
        return R.layout.dkplayer_layout_simon_vod_control_view;
    }

    public View getView() {
        return this;
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.iv_play) {
            this.a.togglePlay();
        } else if (id == R.id.play_next) {
            c();
           // PlayActivity.a(((fj) this.D).a);
        } else if (id == R.id.play_pre) {
            c();
         //   ((fj) this.D).a();
        } else if (id == R.id.video_size) {
            a();
        } else if (id == R.id.video_speed) {
            b();
        } else if (id == R.id.tv_play_next) {
            d();
            c();
           // PlayActivity.a(((fj) this.D).a);
        } else if (id == R.id.tv_play_pre) {
            d();
            c();
         //   ((fj) this.D).a();
        } else if (id == R.id.tv_video_size) {
            a();
        } else if (id == R.id.tv_video_speed) {
            b();
        }
    }

    public void onLockStateChanged(boolean z2) {
        onVisibilityChanged(!z2, (Animation) null);
    }

    public void onPlayStateChanged(int i2) {
        switch (i2) {
            case -1:
            case 1:
            case 2:
            case 8:
                this.d.setVisibility(View.GONE);
                this.e.setVisibility(View.GONE);
                this.w.setVisibility(View.GONE);
                this.g.setVisibility(View.GONE);
                return;
            case 0:
            case 5:
                this.d.setVisibility(View.GONE);
                this.e.setVisibility(View.GONE);
                this.w.setVisibility(View.GONE);
                this.g.setVisibility(View.GONE);
                this.g.setProgress(0);
                this.g.setSecondaryProgress(0);
                this.f.setProgress(0);
                this.f.setSecondaryProgress(0);
                return;
            case 3:
                this.h.setSelected(true);
                if (!this.n) {
                    this.d.setVisibility(View.GONE);
                    this.e.setVisibility(View.GONE);
                    this.w.setVisibility(View.GONE);
                } else if (this.a.isShowing()) {
                    this.g.setVisibility(View.GONE);
                    this.d.setVisibility(View.VISIBLE);
                    this.e.setVisibility(View.VISIBLE);
                    this.w.setVisibility(View.VISIBLE);
                } else {
                    this.d.setVisibility(View.GONE);
                    this.e.setVisibility(View.GONE);
                    this.w.setVisibility(View.GONE);
                    this.g.setVisibility(View.VISIBLE);
                }
                this.a.startProgress();
                return;
            case 4:
                this.h.setSelected(false);
                return;
            case 6:
            case 7:
                this.h.setSelected(this.a.isPlaying());
                return;
            default:
                return;
        }
    }

    public void onPlayerStateChanged(int i2) {
    }

    public void onProgressChanged(SeekBar seekBar, int i2, boolean z2) {
        if (z2) {
            long duration = (this.a.getDuration() * ((long) i2)) / ((long) this.f.getMax());
            TextView textView = this.c;
            if (textView != null) {
                textView.setText(PlayerUtils.stringForTime((int) duration));
            }
        }
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        this.m = true;
        this.a.stopProgress();
        this.a.stopFadeOut();
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        this.a.seekTo((long) ((int) ((this.a.getDuration() * ((long) seekBar.getProgress())) / ((long) this.f.getMax()))));
        this.m = false;
        this.a.startProgress();
        this.a.startFadeOut();
    }

    public void onVisibilityChanged(boolean z2, Animation animation) {
        if (z2) {
            this.d.setVisibility(View.VISIBLE);
            this.e.setVisibility(View.VISIBLE);
            this.w.setVisibility(View.VISIBLE);
            if (animation != null) {
                this.d.startAnimation(animation);
            }
            if (this.n) {
                this.g.setVisibility(View.GONE);
                return;
            }
            return;
        }
        this.d.setVisibility(View.GONE);
        this.e.setVisibility(View.GONE);
        this.w.setVisibility(View.GONE);
        if (animation != null) {
            this.d.startAnimation(animation);
        }
        if (this.n) {
            this.g.setVisibility(View.VISIBLE);
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(300);
            this.g.startAnimation(alphaAnimation);
        }
    }

    public void setProgress(int i2, int i3) {
        if (!this.m) {
            SeekBar seekBar = this.f;
            if (seekBar != null) {
                if (i2 > 0) {
                    seekBar.setEnabled(true);
                    double d2 = (double) i3;
                    Double.isNaN(d2);
                    double d3 = (double) i2;
                    Double.isNaN(d3);
                    double d4 = (d2 * 1.0d) / d3;
                    double max = (double) this.f.getMax();
                    Double.isNaN(max);
                    int i4 = (int) (d4 * max);
                    this.f.setProgress(i4);
                    this.g.setProgress(i4);
                } else {
                    seekBar.setEnabled(false);
                }
                int bufferedPercentage = this.a.getBufferedPercentage();
                if (bufferedPercentage >= 95) {
                    SeekBar seekBar2 = this.f;
                    seekBar2.setSecondaryProgress(seekBar2.getMax());
                    ProgressBar progressBar = this.g;
                    progressBar.setSecondaryProgress(progressBar.getMax());
                } else {
                    int i5 = bufferedPercentage * 10;
                    this.f.setSecondaryProgress(i5);
                    this.g.setSecondaryProgress(i5);
                }
            }
            TextView textView = this.b;
            if (textView != null) {
                textView.setText(PlayerUtils.stringForTime(i2));
            }
            TextView textView2 = this.c;
            if (textView2 != null) {
                textView2.setText(PlayerUtils.stringForTime(i3));
            }
        }
    }

    public void setVodControlListener(a aVar) {
        this.D = aVar;
    }

    public SimonVodControlView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(getContext()).inflate(getLayoutId(), this, true);
        this.d = (LinearLayout) findViewById(R.id.bottom_container);
        this.e = (LinearLayout) findViewById(R.id.center_container);
        SeekBar seekBar = (SeekBar) findViewById(R.id.seekBar);
        this.f = seekBar;
        seekBar.setOnSeekBarChangeListener(this);
        this.b = (TextView) findViewById(R.id.total_time);
        this.c = (TextView) findViewById(R.id.curr_time);
        ImageView imageView = (ImageView) findViewById(R.id.iv_play);
        this.h = imageView;
        imageView.setOnClickListener(this);
        this.g = (ProgressBar) findViewById(R.id.bottom_progress);
        this.i = (TextView) findViewById(R.id.play_next);
        this.f160j = (TextView) findViewById(R.id.play_pre);
        this.k = (TextView) findViewById(R.id.video_size);
        this.l = (TextView) findViewById(R.id.video_speed);
        this.i.setOnClickListener(this);
        this.f160j.setOnClickListener(this);
        this.k.setOnClickListener(this);
        this.l.setOnClickListener(this);
        if (Build.VERSION.SDK_INT <= 22) {
            this.f.getLayoutParams().height = -2;
        }
        this.d.setVisibility(View.GONE);
        this.e.setVisibility(View.GONE);
        this.g.setVisibility(View.GONE);
        this.t = (LinearLayout) findViewById(R.id.tv_progress_container);
        this.o = (ImageView) findViewById(R.id.tv_progress_icon);
        this.f161p = (TextView) findViewById(R.id.tv_progress_text);
        this.u = (LinearLayout) findViewById(R.id.tv_pause_container);
        this.s = (TextView) findViewById(R.id.tv_pause_progress_text);
        this.v = (LinearLayout) findViewById(R.id.tv_bottom_container);
        this.w = (FrameLayout) findViewById(R.id.tv_info_container);
        this.q = (TextView) findViewById(R.id.tv_info_name);
        this.r = (TextView) findViewById(R.id.tv_info_hint);
        this.x = (TextView) findViewById(R.id.tv_play_next);
        this.y = (TextView) findViewById(R.id.tv_play_pre);
        this.x.setOnClickListener(this);
        this.y.setOnClickListener(this);
        this.z = (TextView) findViewById(R.id.tv_video_size);
        this.A = (TextView) findViewById(R.id.tv_video_speed);
        this.z.setOnClickListener(this);
        this.A.setOnClickListener(this);
        this.w.setVisibility(View.GONE);
        this.B = 0;
        this.C = 1.0f;
    }

    public SimonVodControlView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        LayoutInflater.from(getContext()).inflate(getLayoutId(), this, true);
        this.d = (LinearLayout) findViewById(R.id.bottom_container);
        this.e = (LinearLayout) findViewById(R.id.center_container);
        SeekBar seekBar = (SeekBar) findViewById(R.id.seekBar);
        this.f = seekBar;
        seekBar.setOnSeekBarChangeListener(this);
        this.b = (TextView) findViewById(R.id.total_time);
        this.c = (TextView) findViewById(R.id.curr_time);
        ImageView imageView = (ImageView) findViewById(R.id.iv_play);
        this.h = imageView;
        imageView.setOnClickListener(this);
        this.g = (ProgressBar) findViewById(R.id.bottom_progress);
        this.i = (TextView) findViewById(R.id.play_next);
        this.f160j = (TextView) findViewById(R.id.play_pre);
        this.k = (TextView) findViewById(R.id.video_size);
        this.l = (TextView) findViewById(R.id.video_speed);
        this.i.setOnClickListener(this);
        this.f160j.setOnClickListener(this);
        this.k.setOnClickListener(this);
        this.l.setOnClickListener(this);
        if (Build.VERSION.SDK_INT <= 22) {
            this.f.getLayoutParams().height = -2;
        }
        this.d.setVisibility(View.GONE);
        this.e.setVisibility(View.GONE);
        this.g.setVisibility(View.GONE);
        this.t = (LinearLayout) findViewById(R.id.tv_progress_container);
        this.o = (ImageView) findViewById(R.id.tv_progress_icon);
        this.f161p = (TextView) findViewById(R.id.tv_progress_text);
        this.u = (LinearLayout) findViewById(R.id.tv_pause_container);
        this.s = (TextView) findViewById(R.id.tv_pause_progress_text);
        this.v = (LinearLayout) findViewById(R.id.tv_bottom_container);
        this.w = (FrameLayout) findViewById(R.id.tv_info_container);
        this.q = (TextView) findViewById(R.id.tv_info_name);
        this.r = (TextView) findViewById(R.id.tv_info_hint);
        this.x = (TextView) findViewById(R.id.tv_play_next);
        this.y = (TextView) findViewById(R.id.tv_play_pre);
        this.x.setOnClickListener(this);
        this.y.setOnClickListener(this);
        this.z = (TextView) findViewById(R.id.tv_video_size);
        this.A = (TextView) findViewById(R.id.tv_video_speed);
        this.z.setOnClickListener(this);
        this.A.setOnClickListener(this);
        this.w.setVisibility(View.GONE);
        this.B = 0;
        this.C = 1.0f;
    }
}
