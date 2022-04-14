package com.today.player.util;

import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.BatteryManager;
import android.os.Build;

import com.lzy.okgo.utils.SaveManager;
import com.today.player.base.App;
import com.today.player.report.AliReportManager;

import java.net.URLEncoder;
import java.util.HashMap;

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
            if (Build.VERSION.SDK_INT > 23) {
                report(4);
                return "_Phone";
            } else {
                report(5);
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


    private static void report(int type) {
        long state = SaveManager.getInstance().getTime(App.getInstance());
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


    public static boolean isMyUpdate() {
        if (getDeviceTypeNumber().equals("1")) {
            String osName = Build.MANUFACTURER;
            return osName.toUpperCase().equals("HUAWEI");
        } else {
            return false;
        }
    }

    /**
     * 判断当前是否为鸿蒙系统
     *
     * @return 是否是鸿蒙系统，是：true，不是：false
     */
    private static boolean isHarmonyOs() {
        try {
            Class<?> buildExClass = Class.forName("com.huawei.system.BuildEx");
            Object osBrand = buildExClass.getMethod("getOsBrand").invoke(buildExClass);
            if (osBrand == null) {
                return false;
            }
            return "harmony".equalsIgnoreCase(osBrand.toString());
        } catch (Throwable e) {
            return false;
        }
    }
}
