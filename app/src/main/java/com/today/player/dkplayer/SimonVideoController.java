package com.today.player.dkplayer;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.widget.ProgressBar;

import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;


import com.today.player.R;
import com.today.player.ui.activity.PlayActivity;

import java.util.Map;

import xyz.doikki.videoplayer.controller.GestureVideoController;
import xyz.doikki.videoplayer.controller.IControlComponent;
import xyz.doikki.videoplayer.util.PlayerUtils;


public class SimonVideoController extends GestureVideoController implements View.OnClickListener {
    public ProgressBar a;
    public a b;
    public boolean c;
    public int d;
    public long e;
    private OnPlayStateChangeListener listener;
    private PlayActivity playActivity;

    public interface a {
    }

    public interface OnPlayStateChangeListener {
        void playStateChanged(int state);
    }

    public void setListener(OnPlayStateChangeListener listener) {
        this.listener = listener;
    }

    public SimonVideoController(@NonNull Context context) {
        this(context, (AttributeSet) null);
        if (context instanceof PlayActivity) {
            playActivity = (PlayActivity) context;
        }
    }

    public boolean a() {
        for (Map.Entry<IControlComponent, Boolean> key : this.mControlComponents.entrySet()) {
            IControlComponent iControlComponent = (IControlComponent) key.getKey();
            if (iControlComponent instanceof SimonVodControlView) {
                if (((SimonVodControlView) iControlComponent).v.getVisibility() == View.VISIBLE) {
                    return true;
                }
                return false;
            }
        }
        return false;
    }

    public void b() {
        for (Map.Entry<IControlComponent, Boolean> key : this.mControlComponents.entrySet()) {
            IControlComponent iControlComponent = (IControlComponent) key.getKey();
            if (iControlComponent instanceof SimonVodControlView) {
                ((SimonVodControlView) iControlComponent).d();
            }
        }
    }

    public void c() {
        if (this.c) {
            for (Map.Entry<IControlComponent, Boolean> key : this.mControlComponents.entrySet()) {
                IControlComponent iControlComponent = (IControlComponent) key.getKey();
                if (iControlComponent instanceof SimonVodControlView) {
                    SimonVodControlView simonVodControlView = (SimonVodControlView) iControlComponent;
                    simonVodControlView.t.animate().alpha(0.0f).setDuration(300).setListener(new AnimatorListenerAdapter() {
                        @Override
                        public void onAnimationEnd(Animator animation) {
                            super.onAnimationEnd(animation);
                            simonVodControlView.t.setVisibility(View.GONE);
                            simonVodControlView.w.setVisibility(View.GONE);
                        }
                    }).start();
                }
            }
            this.mControlWrapper.seekTo((long) this.d);
            if (!this.mControlWrapper.isPlaying()) {
                this.mControlWrapper.start();
            }
            this.c = false;
            this.d = 0;
            this.e = 0;
        }
    }

    public void d() {
        if (this.mControlWrapper.isPlaying()) {
            this.mControlWrapper.pause();
            for (Map.Entry<IControlComponent, Boolean> key : this.mControlComponents.entrySet()) {
                IControlComponent iControlComponent = (IControlComponent) key.getKey();
                if (iControlComponent instanceof SimonVodControlView) {
                    SimonVodControlView simonVodControlView = (SimonVodControlView) iControlComponent;
                    int duration = (int) simonVodControlView.a.getDuration();
                    int currentPosition = (int) simonVodControlView.a.getCurrentPosition();
                    simonVodControlView.s.setText(String.format("%s/%s", new Object[]{PlayerUtils.stringForTime(currentPosition), PlayerUtils.stringForTime(duration)}));
                    simonVodControlView.u.setVisibility(View.VISIBLE);
                    simonVodControlView.w.setVisibility(View.VISIBLE);
                    simonVodControlView.u.setAlpha(1.0f);
                }
            }
            return;
        }
        this.mControlWrapper.start();
        for (Map.Entry<IControlComponent, Boolean> key2 : this.mControlComponents.entrySet()) {
            IControlComponent iControlComponent2 = (IControlComponent) key2.getKey();
            if (iControlComponent2 instanceof SimonVodControlView) {
                SimonVodControlView simonVodControlView2 = (SimonVodControlView) iControlComponent2;
                simonVodControlView2.u.animate().alpha(0.0f).setDuration(300).setListener(new AnimatorListenerAdapter() {
                    @Override
                    public void onAnimationEnd(Animator animation) {
                        super.onAnimationEnd(animation);
                        simonVodControlView2.u.setVisibility(View.GONE);
                        simonVodControlView2.w.setVisibility(View.GONE);
                    }
                }).start();
            }
        }
    }


    @Override
    protected void togglePlay() {
        if (playActivity != null && playActivity.isPlaying() && playActivity.playAd != null) {
            playActivity.playAd.loadAd(playActivity.getContent());
        }
        super.togglePlay();
    }

    public void cancelPause() {
        for (Map.Entry<IControlComponent, Boolean> key2 : this.mControlComponents.entrySet()) {
            IControlComponent iControlComponent2 = (IControlComponent) key2.getKey();
            if (iControlComponent2 instanceof SimonVodControlView) {
                SimonVodControlView simonVodControlView2 = (SimonVodControlView) iControlComponent2;
                simonVodControlView2.u.animate().alpha(0.0f).setDuration(300).setListener(new AnimatorListenerAdapter() {
                    @Override
                    public void onAnimationEnd(Animator animation) {
                        super.onAnimationEnd(animation);
                        simonVodControlView2.u.setVisibility(View.GONE);
                        simonVodControlView2.w.setVisibility(View.GONE);
                    }
                }).start();
            }
        }
    }

    public int getLayoutId() {
        return R.layout.simon_standard_controller;
    }

    public void initView() {
        super.initView();
        this.a = (ProgressBar) findViewById(R.id.loading);
    }

    public void onClick(View view) {
        view.getId();
    }

    public void onPlayStateChanged(int i) {
        super.onPlayStateChanged(i);
        switch (i) {
            case -1:
            case 0:
            case 5:
            case 2:
            case 3:
            case 4:
            case 7:
                this.a.setVisibility(View.GONE);
                break;
            case 1:
            case 6:
                this.a.setVisibility(View.VISIBLE);
                break;
            default:
        }
        if (listener != null) {
            listener.playStateChanged(i);
        }
    }

    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return super.onScroll(motionEvent, motionEvent2, f, f2);
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        a aVar = this.b;
        if (aVar != null) {
            // LivePlayActivity.this.f();
        }
        return super.onSingleTapConfirmed(motionEvent);
    }

    public void onVisibilityChanged(boolean z, Animation animation) {
        this.mControlWrapper.isFullScreen();
    }

    public void setScreenTapListener(a aVar) {
        this.b = aVar;
    }

    public SimonVideoController(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SimonVideoController(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        this.c = false;
        this.d = 0;
        this.e = 0;
    }

    public void a(String str) {
        for (Map.Entry<IControlComponent, Boolean> key : this.mControlComponents.entrySet()) {
            IControlComponent iControlComponent = (IControlComponent) key.getKey();
            if (iControlComponent instanceof SimonVodControlView) {
                ((SimonVodControlView) iControlComponent).q.setText(str);
            }
        }
    }

    public void a(int i) {
        int duration = (int) this.mControlWrapper.getDuration();
        if (duration > 0) {
            if (!this.c) {
                for (Map.Entry<IControlComponent, Boolean> key : this.mControlComponents.entrySet()) {
                    IControlComponent iControlComponent = (IControlComponent) key.getKey();
                    if (iControlComponent instanceof SimonVodControlView) {
                        SimonVodControlView simonVodControlView = (SimonVodControlView) iControlComponent;
                        simonVodControlView.a.hide();
                        simonVodControlView.t.animate().alpha(1.0f).setDuration(0).setListener((Animator.AnimatorListener) null);
                        simonVodControlView.t.setVisibility(View.VISIBLE);
                        simonVodControlView.w.setVisibility(View.VISIBLE);
                        simonVodControlView.c();
                    }
                }
                this.c = true;
            }
            this.e = (long) ((((float) i) * 10000.0f) + ((float) this.e));
            int currentPosition = (int) this.mControlWrapper.getCurrentPosition();
            int i2 = (int) (this.e + ((long) currentPosition));
            if (i2 > duration) {
                i2 = duration;
            }
            if (i2 < 0) {
                i2 = 0;
            }
            for (Map.Entry<IControlComponent, Boolean> key2 : this.mControlComponents.entrySet()) {
                IControlComponent iControlComponent2 = (IControlComponent) key2.getKey();
                if (iControlComponent2 instanceof SimonVodControlView) {
                    SimonVodControlView simonVodControlView2 = (SimonVodControlView) iControlComponent2;
                    if (i2 > currentPosition) {
                        simonVodControlView2.o.setImageResource(R.drawable.ic_pre);
                    } else {
                        simonVodControlView2.o.setImageResource(R.drawable.ic_back);
                    }
                    simonVodControlView2.f161p.setText(String.format("%s/%s", new Object[]{PlayerUtils.stringForTime(i2), PlayerUtils.stringForTime(duration)}));
                }
            }
            this.d = i2;
        }
    }
}
