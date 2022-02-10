package com.upa.tool;

import android.app.ActivityManager;
import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;

import android.util.Log;
import android.view.View;

import androidx.core.content.FileProvider;


import java.io.File;
import java.util.List;

import static android.content.Context.UI_MODE_SERVICE;

public class Tools {
    /**
     * [获取应用程序版本名称信息]
     *
     * @param context
     * @return 当前应用的版本名称
     */
    public static synchronized int getVersionCode(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(
                    context.getPackageName(), 0);
            return packageInfo.versionCode;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }


    public static void installApk(Context context, String downloadApk) {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        File file = new File(downloadApk);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            Uri apkUri = FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", file);
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            intent.setDataAndType(apkUri, "application/vnd.android.package-archive");
        } else {
            Uri uri = Uri.fromFile(file);
            intent.setDataAndType(uri, "application/vnd.android.package-archive");
        }
        context.startActivity(intent);
    }


    /**
     * 说明：根据手机的分辨率将dp转成为px
     * 作者：刘婉
     */
    public static int dip2px(Context context, float dpValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (dpValue * scale + 0.5f);
    }

    /**
     * 说明：根据手机的分辨率将sp转成为px
     */
    public static int sp2px(Context context, float spValue) {
        final float fontScale = context.getResources().getDisplayMetrics().scaledDensity;
        return (int) (spValue * fontScale + 0.5f);
    }


    public static void shapeSolid(Context context, View v, int pos) {
        GradientDrawable gd = (GradientDrawable) v.getBackground();
        int roundRadius = 38; // 8dp 圆角半径
        int fillColor = Color.parseColor("#FF9800");//内部填充颜色
        if (pos == 1) {
            fillColor = Color.WHITE;//内部填充颜色
        }
        gd.setColor(fillColor);
        gd.setCornerRadius(dip2px(context, roundRadius));
    }


    public static void shapeSolidSort(Context context,View v, int pos) {
        GradientDrawable gd = (GradientDrawable) v.getBackground();
        int roundRadius = 38; // 8dp 圆角半径
        int fillColor = Color.parseColor("#bd0cade2");//内部填充颜色
        if (pos == 1) {
            fillColor = Color.TRANSPARENT;//内部填充颜色
        }
        gd.setColor(fillColor);
        gd.setCornerRadius(dip2px(context, roundRadius));
    }


    public static void editShapeSolid(Context context, View v, int pos) {
        GradientDrawable gd = (GradientDrawable) v.getBackground();
        int roundRadius = 38; //
        int strokeColor = Color.parseColor("#FF9800");//内部填充颜色
        if (pos == 1) {
            strokeColor = Color.parseColor("#A39D9D");
            ;//内部填充颜色
        }

        gd.setStroke(dip2px(context, 1), strokeColor);
        gd.setColor(Color.WHITE);
        gd.setCornerRadius(dip2px(context, roundRadius));
    }


    public static void exitApp(Context context) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
            List<ActivityManager.AppTask> appTaskList = activityManager.getAppTasks();
            for (ActivityManager.AppTask appTask : appTaskList) {
                appTask.finishAndRemoveTask();
            }
        }
        android.os.Process.killProcess(android.os.Process.myPid());
        System.exit(0);
    }


    public static boolean isTvOrPhone(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService(UI_MODE_SERVICE);
        if (uiModeManager.getCurrentModeType() == Configuration.UI_MODE_TYPE_TELEVISION) {
            return true;
        }
        return false;
    }
}
