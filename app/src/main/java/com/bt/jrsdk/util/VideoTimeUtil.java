package com.bt.jrsdk.util;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;


import java.util.Timer;
import java.util.TimerTask;

import xyz.doikki.videoplayer.player.VideoView;


public class VideoTimeUtil {
    private static Timer timer;
    private static final long DELAY_TIME = 1000;

    public static void countDown(VideoView videoView, CountDownListener listener) {
        if (timer == null && videoView != null) {
            timer = new Timer();
            timer.schedule(new TimerTask() {
                @Override
                public void run() {
                    if (listener != null) {
                        listener.currentTime(videoView.getCurrentPosition());
                    }
                }
            }, DELAY_TIME, DELAY_TIME);
        }
    }


    public interface CountDownListener {
        void currentTime(long time);
    }


    public static void recycler() {
        if (timer != null) {
            timer.cancel();
            timer = null;
        }
    }
}
