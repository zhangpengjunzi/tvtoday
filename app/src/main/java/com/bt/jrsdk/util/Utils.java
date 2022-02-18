package com.bt.jrsdk.util;

import android.app.UiModeManager;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;

import com.bt.jrsdk.manager.AdStartManager;
import com.today.player.util.ChannelUtil;

import java.util.logging.Logger;

public class Utils {
    private Context context;

    private Utils() {

    }

    public static Utils getInstance() {
        return SingletonHolder.sInstance;
    }

    private static class SingletonHolder {
        private static final Utils sInstance = new Utils();
    }

    public void setContext(Context context) {
        this.context = context;
    }

    public Context getContext() {
        return context;
    }

    public Bitmap bytes2Bitmap(final byte[] bytes) {
        return (bytes == null || bytes.length == 0)
                ? null
                : BitmapFactory.decodeByteArray(bytes, 0, bytes.length);
    }


    public static String getDeviceType() {
        return ChannelUtil.getDeviceTypeNumber();
    }

}
