package com.today.player.util;

import android.app.UiModeManager;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;

import com.bt.jrsdk.manager.AdStartManager;
import com.today.player.base.App;

import okhttp3.internal.Util;

public class ChannelUtil {

    public static final String BASE_CHANNEL = "jrys";

    public static String getChannel() {
        return BASE_CHANNEL + getDeviceType();
    }


    public static String getDeviceType() {
        UiModeManager uiModeManager = (UiModeManager) App.getInstance().getSystemService(Context.UI_MODE_SERVICE);
        if (uiModeManager.getCurrentModeType() == Configuration.UI_MODE_TYPE_TELEVISION) {
            return "_TV";
        } else {
            if (Build.VERSION.SDK_INT > 23) {
                return "_Phone";
            } else {
                return "_TV";
            }
        }
    }
}
