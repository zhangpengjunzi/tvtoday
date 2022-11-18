package com.bt.jrsdk.manager;

import android.app.ActivityManager;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;

import com.bt.jrsdk.util.Utils;
import com.qq.e.comm.managers.GDTAdSdk;

import java.util.List;

public class AdStartManager {
    private static boolean hasInit;
    public static String uid;
    public static Context mContext;

    public static void start(Context context, String uid) {
        mContext = context;
        if (!hasInit) {
            String processName = getProcessName(context, android.os.Process.myPid());
            if (processName != null) {
                boolean defaultProcess = processName.equals(context.getPackageName());
                // 默认的主进程启动时初始化应用
                if (defaultProcess) {
                    hasInit = true;
                    Utils.getInstance().setContext(context.getApplicationContext());
                    if (TextUtils.isEmpty(uid)) {
                        uid = getUser(context);
                    }
                    AdStartManager.uid = uid;
                    GDTAdSdk.init(context, "1200466434");
                }
            }
        }

    }


    public static String getUser(Context ctx) {
        String serialNum = android.os.Build.SERIAL;
        String ANDROID_ID = Settings.System.getString(ctx.getContentResolver(), Settings.System.ANDROID_ID);
        String mUserID = serialNum + "-" + ANDROID_ID;
        return mUserID;
    }


    public static Context getContext() {
        return mContext;
    }

    private static String getProcessName(Context cxt, int pid) {
        ActivityManager am = (ActivityManager) cxt.getSystemService(Context.ACTIVITY_SERVICE);
        List<ActivityManager.RunningAppProcessInfo> runningApps = am.getRunningAppProcesses();
        if (runningApps == null) {
            return null;
        }
        for (ActivityManager.RunningAppProcessInfo procInfo : runningApps) {
            if (procInfo.pid == pid) {
                return procInfo.processName;
            }
        }
        return null;
    }
}
