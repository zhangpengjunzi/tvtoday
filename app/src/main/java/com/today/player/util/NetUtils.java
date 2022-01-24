package com.today.player.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;

import com.today.player.base.App;

import java.io.File;

public class NetUtils {

    public static boolean isWifiProxy(Context context) {
        final boolean IS_ICS_OR_LATER = Build.VERSION.SDK_INT >= Build.VERSION_CODES.ICE_CREAM_SANDWICH;
        String proxyAddress;
        int proxyPort;
        if (IS_ICS_OR_LATER) {
            proxyAddress = System.getProperty("http.proxyHost");
            String portStr = System.getProperty("http.proxyPort");
            proxyPort = Integer.parseInt((portStr != null ? portStr : "-1"));
        } else {
            proxyAddress = android.net.Proxy.getHost(context);
            proxyPort = android.net.Proxy.getPort(context);
        }
        return (!TextUtils.isEmpty(proxyAddress)) && (proxyPort != -1);
    }


    public static String getPermission() {
        PackageManager pm = App.getInstance().getPackageManager();
        PackageInfo pi;
        try {
            pi = pm.getPackageInfo(App.getInstance().getPackageName(), 0);
            boolean isSystem = ((pi.applicationInfo.flags & ApplicationInfo.FLAG_SYSTEM) != 0);
            if (isSystem) {
                return "system";
            }
        } catch (PackageManager.NameNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        final String kSuSearchPaths[] = {"/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/"};
        try {
            for (int i = 0; i < kSuSearchPaths.length; i++) {
                File f = new File(kSuSearchPaths[i] + "su");
                if (f != null && f.exists()) {
                    return "root";
                }
            }
        } catch (Exception e) {
        }
        return "app";
    }
}
