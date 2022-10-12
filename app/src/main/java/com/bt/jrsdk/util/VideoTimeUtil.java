package com.bt.jrsdk.util;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;


import com.aliyun.player.alivcplayerexpand.widget.AliyunVodPlayerView;

import java.util.Timer;
import java.util.TimerTask;


public class VideoTimeUtil {
    private static Timer timer;
    private static final long DELAY_TIME = 1000;

    public static void countDown(AliyunVodPlayerView videoView, CountDownListener listener) {
        if (timer == null && videoView != null) {
            timer = new Timer();
            timer.schedule(new TimerTask() {
                @Override
                public void run() {
                    if (listener != null) {
                        videoView.post(new Runnable() {
                            @Override
                            public void run() {
                                listener.currentTime(videoView.getVideoPosition());
                            }
                        });
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
