package com.today.player.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;

import xyz.doikki.videoplayer.player.AbstractPlayer;
import xyz.doikki.videoplayer.render.IRenderView;
import xyz.doikki.videoplayer.render.MeasureHelper;

public class SurfaceRenderView extends SurfaceView implements IRenderView, SurfaceHolder.Callback {
    public MeasureHelper a = new MeasureHelper();
    public AbstractPlayer b;

    public SurfaceRenderView(Context context) {
        super(context);
        SurfaceHolder holder = getHolder();
        holder.addCallback(this);
        holder.setFormat(1);
    }

    public void attachToPlayer( AbstractPlayer abstractPlayer) {
        this.b = abstractPlayer;
    }

    public Bitmap doScreenShot() {
        return null;
    }

    public View getView() {
        return this;
    }

    public void onMeasure(int i, int i2) {
        int[] doMeasure = this.a.doMeasure(i, i2);
        setMeasuredDimension(doMeasure[0], doMeasure[1]);
    }

    public void release() {
    }

    public void setScaleType(int i) {
        this.a.setScreenScale(i);
        requestLayout();
    }

    public void setVideoRotation(int i) {
        this.a.setVideoRotation(i);
        setRotation((float) i);
    }

    public void setVideoSize(int i, int i2) {
        if (i > 0 && i2 > 0) {
            this.a.setVideoSize(i, i2);
            requestLayout();
        }
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        AbstractPlayer abstractPlayer = this.b;
        if (abstractPlayer != null) {
            abstractPlayer.setDisplay(surfaceHolder);
        }
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
    }

    public SurfaceRenderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        SurfaceHolder holder = getHolder();
        holder.addCallback(this);
        holder.setFormat(1);
    }

    public SurfaceRenderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        SurfaceHolder holder = getHolder();
        holder.addCallback(this);
        holder.setFormat(1);
    }
}
