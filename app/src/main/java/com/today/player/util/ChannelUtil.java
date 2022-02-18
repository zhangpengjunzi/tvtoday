package com.today.player.util;

import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.BatteryManager;
import android.os.Build;

import com.bt.jrsdk.manager.AdStartManager;
import com.today.player.base.App;
import com.today.player.report.AliReportManager;
import com.today.player.report.SaveManager;

import java.net.URLEncoder;
import java.util.HashMap;

import okhttp3.internal.Util;

public class ChannelUtil {

    public static final String BASE_CHANNEL = "jrys";

    public static String getChannel() {
        return BASE_CHANNEL + getDeviceType();
    }


    public static String getDeviceType() {
        UiModeManager uiModeManager = (UiModeManager) App.getInstance().getSystemService(Context.UI_MODE_SERVICE);
        if (uiModeManager.getCurrentModeType() == Configuration.UI_MODE_TYPE_TELEVISION && checkBatteryIsTV()) {
            report(1);
            return "_TV";
        }
        if (uiModeManager.getCurrentModeType() == Configuration.UI_MODE_TYPE_TELEVISION && !checkBatteryIsTV()) {
            report(2);
            return "_TV";
        }
        if (uiModeManager.getCurrentModeType() != Configuration.UI_MODE_TYPE_TELEVISION && checkBatteryIsTV()) {
            report(3);
            return "_TV";
        } else {
            report(4);
            return "_Phone";
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
            return "2";
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


    private static void report(int type) {
        long state = SaveManager.getTime();
        if (state != 1) {
            HashMap<String, String> map = new HashMap<>();
            map.put("model", URLEncoder.encode(Build.MODEL));
            map.put("manufacturer", Build.MANUFACTURER);
            map.put("product", Build.PRODUCT);
            map.put("osversion", Build.VERSION.RELEASE);
            map.put("tvorphone_type", String.valueOf(type));
            map.put("uid", GetDevicesId.getInstance().getDeviceId());
            AliReportManager manager = new AliReportManager();
            manager.reportPostMap(manager.getPostJson(map));
        }
    }
}
