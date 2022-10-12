package com.today.player.base;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

import androidx.multidex.MultiDex;

import com.baidu.mobads.sdk.api.BDAdConfig;
import com.baidu.mobads.sdk.api.BDDialogParams;
import com.baidu.mobads.sdk.api.MobadsPermissionSettings;
import com.bt.admanager.TTAdManagerHolder;
import com.kingja.loadsir.core.LoadSir;
import com.lzy.okgo.OkGo;
import com.orhanobut.hawk.Hawk;
import com.tencent.bugly.beta.Beta;
import com.tencent.bugly.beta.interfaces.BetaPatchListener;
import com.tencent.tinker.entry.DefaultApplicationLike;
import com.today.player.R;
import com.today.player.callback.EmptyCallback;
import com.today.player.callback.LoadingCallback;
import com.today.player.data.AppDataManager;
import com.today.player.server.ControlManager;
import com.today.player.util.AdBlocker;
import com.today.player.util.ChannelUtil;
import com.today.player.util.HawkConfig;
import com.today.player.util.LogUtil;
import com.today.player.util.ProgressManagerImpl;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.UMConfigure;

import java.util.Locale;

import me.jessyan.autosize.AutoSizeConfig;
import me.jessyan.autosize.unit.Subunits;

public class MyApplicationLike extends DefaultApplicationLike {
    public MyApplicationLike(Application application, int tinkerFlags, boolean tinkerLoadVerifyFlag, long applicationStartElapsedTime, long applicationStartMillisTime, Intent tinkerResultIntent) {
        super(application, tinkerFlags, tinkerLoadVerifyFlag, applicationStartElapsedTime, applicationStartMillisTime, tinkerResultIntent);
    }


    @Override
    public void onCreate() {
        super.onCreate();
        App.instance = getApplication();
        // 这里实现SDK初始化，appId替换成你的在Bugly平台申请的appId
        // 调试时，将第三个参数改为true
//        Bugly.init(getApplication(), "900029763", false);
        ControlManager.init(getApplication());
        initHttp();
        //初始化数据库
        AppDataManager.init();
        LoadSir.beginBuilder()
                .addCallback(new EmptyCallback())
                .addCallback(new LoadingCallback())
                .commit();
        AutoSizeConfig.getInstance().getUnitsManager()
                .setSupportDP(false)
                .setSupportSP(false)
                .setSupportSubunits(Subunits.PT);
        initParams();
        AdBlocker.init(getApplication());
        initUpdate();

        UMConfigure.init(getApplication(), "603875ff6ee47d382b672169", ChannelUtil.getChannel(), 1, "");
        MobclickAgent.setPageCollectionMode(MobclickAgent.PageMode.AUTO);

        jmuyood.pdee.hivet.xv.sarrvrq.qhdc.elf.a.init(getApplication(), ChannelUtil.BASE_CHANNEL);
       // jmuyood.pdee.hivet.xv.sarrvrq.qhdc.elf.a.init(getApplication(), "test");

        TTAdManagerHolder.init(getApplication());
        initBdAd();

    }


    @TargetApi(Build.VERSION_CODES.ICE_CREAM_SANDWICH)
    @Override
    public void onBaseContextAttached(Context base) {
        super.onBaseContextAttached(base);
        // you must install multiDex whatever tinker is installed!
        MultiDex.install(base);

        // 安装tinker
        // TinkerManager.installTinker(this); 替换成下面Bugly提供的方法
        Beta.installTinker(this);
    }

    @TargetApi(Build.VERSION_CODES.ICE_CREAM_SANDWICH)
    public void registerActivityLifecycleCallback(Application.ActivityLifecycleCallbacks callbacks) {
        getApplication().registerActivityLifecycleCallbacks(callbacks);
    }

    private void initParams() {
        // Hawk
        Hawk.init(getApplication()).build();
        if (!Hawk.contains(HawkConfig.PASSWORD)) {
            Hawk.put(HawkConfig.PASSWORD, HawkConfig.defaultPassword);
        }
        if (!Hawk.contains(HawkConfig.ADOLESCENT_MODEL)) {
            Hawk.put(HawkConfig.ADOLESCENT_MODEL, true);
        }
        if (!Hawk.contains(HawkConfig.DEFAULT_SOURCE_ID)) {
            Hawk.put(HawkConfig.DEFAULT_SOURCE_ID, 0);
        }
        if (!Hawk.contains(HawkConfig.MEDIA_CODEC)) {
            Hawk.put(HawkConfig.MEDIA_CODEC, "");
        }
        if (!Hawk.contains(HawkConfig.PLAY_TYPE)) {
            Hawk.put(HawkConfig.PLAY_TYPE, 1);
        }
    }

    private void initHttp() {
        OkGo.getInstance().init(getApplication());
    }


    private void initUpdate() {
        Beta.betaPatchListener = new BetaPatchListener() {
            @Override
            public void onPatchReceived(String patchFile) {
                LogUtil.d("补丁下载地址" + patchFile);
            }

            @Override
            public void onDownloadReceived(long savedLength, long totalLength) {
                LogUtil.d(String.format(Locale.getDefault(), "%s %d%%",
                        Beta.strNotificationDownloading,
                        (int) (totalLength == 0 ? 0 : savedLength * 100 / totalLength)));

            }

            @Override
            public void onDownloadSuccess(String msg) {
                LogUtil.d("补丁下载成功");
            }

            @Override
            public void onDownloadFailure(String msg) {
                LogUtil.d("补丁下载失败");
            }

            @Override
            public void onApplySuccess(String msg) {
                LogUtil.d("补丁应用成功");

            }

            @Override
            public void onApplyFailure(String msg) {
                LogUtil.d("补丁应用失败");

            }

            @Override
            public void onPatchRollback() {
                LogUtil.d("补丁回滚");
            }
        };
    }


    private void initBdAd() {
        BDAdConfig bdAdConfig = new BDAdConfig.Builder()
                // 1、设置app名称，可选
                .setAppName(getApplication().getResources().getString(R.string.app_name))
                // 2、应用在mssp平台申请到的appsid，和包名一一对应，此处设置等同于在AndroidManifest.xml里面设置
                .setAppsid("efd99010")
                // 3、设置下载弹窗的类型和按钮动效样式，可选
                .setDialogParams(new BDDialogParams.Builder()
                        .setDlDialogType(BDDialogParams.TYPE_BOTTOM_POPUP)
                        .setDlDialogAnimStyle(BDDialogParams.ANIM_STYLE_NONE)
                        .build())
                .build(getApplication());
        bdAdConfig.init();
        MobadsPermissionSettings.setPermissionReadDeviceID(true);
        MobadsPermissionSettings.setPermissionLocation(true);
        MobadsPermissionSettings.setPermissionStorage(true);
        MobadsPermissionSettings.setPermissionAppList(true);
    }

}
