package com.upa.receive;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Message;
import android.util.Log;

import com.upa.tool.Tools;

import java.util.List;


/**
 *
 */
public class AppInstallReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        String pkgName = intent.getData().getSchemeSpecificPart();
        switch (intent.getAction()) {
            case Intent.ACTION_PACKAGE_ADDED:
            case Intent.ACTION_PACKAGE_REPLACED:
                // 安装
                //Log.e("__TAG","listener app install , pkgName = " + pkgName+"  "+context.getPackageName());
                if (context.getPackageName().equals(pkgName)) {
                    //安装成功
                   Tools.exitApp(context);
                }
                break;
            case Intent.ACTION_PACKAGE_REMOVED:
                // 卸载
                //Log.e(TAG,"listener app unInstall , pkgName = " + pkgName);
                break;
        }
    }
}
