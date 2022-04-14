package com.today.player.base;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;

import androidx.multidex.MultiDex;

import com.bt.admanager.TTAdManagerHolder;
import com.kingja.loadsir.core.LoadSir;
import com.lzy.okgo.OkGo;
import com.lzy.okgo.model.HttpHeaders;
import com.ma.ds.ZuImpl;
import com.orhanobut.hawk.Hawk;

import com.squareup.picasso.Picasso;
import com.tencent.bugly.Bugly;
import com.tencent.bugly.beta.Beta;
import com.tencent.bugly.beta.interfaces.BetaPatchListener;
import com.tencent.tinker.entry.DefaultApplicationLike;
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
import com.upa.DownloadManager;

import java.util.Locale;

import me.jessyan.autosize.AutoSizeConfig;
import me.jessyan.autosize.unit.Subunits;
import xyz.doikki.videoplayer.exo.ExoMediaPlayer;
import xyz.doikki.videoplayer.ijk.IjkPlayer;
import xyz.doikki.videoplayer.player.PlayerFactory;
import xyz.doikki.videoplayer.player.VideoView;
import xyz.doikki.videoplayer.player.VideoViewConfig;
import xyz.doikki.videoplayer.player.VideoViewManager;

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

        TTAdManagerHolder.init(getApplication());
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
        VideoViewManager.setConfig(VideoViewConfig.newBuilder().setScreenScaleType(0).setProgressManager(new ProgressManagerImpl()).build());
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

}
