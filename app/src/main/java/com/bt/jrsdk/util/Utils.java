package com.bt.jrsdk.util;

import android.app.UiModeManager;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;

import com.bt.jrsdk.manager.AdStartManager;

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


    public static String getDeviceType(Context context) {
        if (context != null) {
            UiModeManager uiModeManager = (UiModeManager) context.getSystemService(Context.UI_MODE_SERVICE);
            if (uiModeManager.getCurrentModeType() == Configuration.UI_MODE_TYPE_TELEVISION) {
                return "1";
            } else {
                if (Build.VERSION.SDK_INT > 23) {
                    return "2";
                } else {
                    return "1";
                }
            }
        } else {
            return "0";
        }
    }

}
