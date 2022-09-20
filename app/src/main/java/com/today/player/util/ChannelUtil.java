package com.today.player.util;

import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.BatteryManager;
import android.os.Build;

import com.bt.jrsdk.manager.AdStartManager;
import com.today.player.base.App;

import java.net.URLEncoder;
import java.util.HashMap;

import okhttp3.internal.Util;

public class ChannelUtil {

    public static final String BASE_CHANNEL = "jrys_gp";

    public static String getChannel() {
        return BASE_CHANNEL + getDeviceType();
    }

    public static String getChannel(Context context) {
        try {
            PackageManager pm = context.getPackageManager();
            ApplicationInfo appInfo = pm.getApplicationInfo(context.getPackageName(), PackageManager.GET_META_DATA);
            return appInfo.metaData.getString("UMENG_CHANNEL") + getDeviceType();
        } catch (PackageManager.NameNotFoundException ignored) {
        }
        return "";
    }


    public static String getDeviceType() {
        UiModeManager uiModeManager = (UiModeManager) App.getInstance().getSystemService(Context.UI_MODE_SERVICE);
        if (uiModeManager.getCurrentModeType() == Configuration.UI_MODE_TYPE_TELEVISION && checkBatteryIsTV()) {
            return "_TV";
        }
        if (uiModeManager.getCurrentModeType() == Configuration.UI_MODE_TYPE_TELEVISION && !checkBatteryIsTV()) {
            return "_TV";
        }
        if (uiModeManager.getCurrentModeType() != Configuration.UI_MODE_TYPE_TELEVISION && checkBatteryIsTV()) {
            return "_TV";
        } else {
            if (Build.VERSION.SDK_INT > 23) {
                return "_Phone";
            } else {
                return "_TV";
            }
        }
    }


    public static String getDeviceTypeNumber() {
        UiModeManager uiModeManager = (UiModeManager) App.getInstance().getSystemService(Context.UI_MODE_SERVICE);
        if (uiModeManager.getCurrentModeType() == Configuration.UI_MODE_TYPE_TELEVISION && checkBatteryIsTV()) {
            return "1";
        }
        if (uiModeManager.getCurrentModeType() == Configuration.UI_MODE_TYPE_TELEVISION && !checkBatteryIsTV()) {
            return "1";
        }
        if (uiModeManager.getCurrentModeType() != Configuration.UI_MODE_TYPE_TELEVISION && checkBatteryIsTV()) {
            return "1";
        } else {
            if (Build.VERSION.SDK_INT > 23) {
                return "2";
            } else {
                return "1";
            }
        }
    }

    public static boolean checkBatteryIsTV() {
        IntentFilter intentFilter = new IntentFilter(Intent.ACTION_BATTERY_CHANGED);
        Intent barreryStatus = App.getInstance().registerReceiver(null, intentFilter);
        //当前电池的状态
        boolean isCharging = false;
        boolean acCharge = false;
        if (barreryStatus == null) {
            return true;
        } else {
            int status = barreryStatus.getIntExtra(BatteryManager.EXTRA_STATUS, -1);
            isCharging = status == BatteryManager.BATTERY_STATUS_FULL;
            //当前充电的状态
            int chargePlug = barreryStatus.getIntExtra(BatteryManager.EXTRA_PLUGGED, -1);
            acCharge = chargePlug == BatteryManager.BATTERY_PLUGGED_AC;

            //电视的状态 当前电量一定是满的  并且是 AC 交流电接入
            return isCharging && acCharge;
        }
    }


}
