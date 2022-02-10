package com.today.player.base;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import android.widget.Toast;

import androidx.multidex.MultiDexApplication;

import com.bt.jrsdk.manager.AdStartManager;
import com.kingja.loadsir.core.LoadSir;
import com.orhanobut.hawk.Hawk;
import com.tencent.bugly.beta.Beta;
import com.tencent.bugly.beta.UpgradeInfo;
import com.tencent.bugly.beta.interfaces.BetaPatchListener;
import com.tencent.bugly.beta.upgrade.UpgradeListener;
import com.today.player.callback.EmptyCallback;
import com.today.player.callback.LoadingCallback;
import com.today.player.data.AppDataManager;
import com.today.player.server.ControlManager;
import com.today.player.ui.activity.HomeActivity;
import com.today.player.util.AdBlocker;
import com.today.player.util.CrashHandler;
import com.today.player.util.HawkConfig;
import com.today.player.util.LogUtil;

import java.util.Locale;

import me.jessyan.autosize.AutoSizeConfig;
import me.jessyan.autosize.unit.Subunits;

/**
 * @author pj567
 * @date :2020/12/17
 * @description:
 */

public class App extends MultiDexApplication {
    private static App instance;

    @Override
    public void onCreate() {
        super.onCreate();
        instance = this;
        ControlManager.init(this);
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
        AdBlocker.init(this);
        initUpdate();
        AdStartManager.start(this, "123123");
        // initPlay();
        Intent intent = new Intent();
        intent.setClassName(getPackageName(), getPackageName() + ".ui.activity.HomeActivity");
        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        CrashHandler crashHandler = CrashHandler.getInstance();
        crashHandler.init(getApplicationContext(), PendingIntent.getActivity(getApplicationContext(), 0, intent, 0));
    }

    private void initParams() {
        // Hawk
        Hawk.init(this).build();
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

    private void initUpdate() {
        // Bugly
        /**** Beta高级设置*****/
        /**
         * true表示app启动自动初始化升级模块；.
         * false不好自动初始化
         * 开发者如果担心sdk初始化影响app启动速度，可以设置为false
         * 在后面某个时刻手动调用
         */
        Beta.autoInit = true;
        /**
         * true表示初始化时自动检查升级.
         * false表示不会自动检查升级，需要手动调用Beta.checkUpgrade()方法
         */
        Beta.autoCheckUpgrade = true;
        /**
         * 设置升级周期为60s（默认检查周期为0s），60s内SDK不重复向后天请求策略.
         */
        Beta.initDelay = 6 * 1000;
        /**
         * 设置sd卡的Download为更新资源保存目录;.
         * 后续更新资源会保存在此目录，需要在manifest中添加WRITE_EXTERNAL_STORAGE权限;
         */
        Beta.storageDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        /**
         * wifi下自动下载
         */
        Beta.autoDownloadOnWifi = true;
        /**
         * 是否显示弹窗apk信息（默认弹窗）
         */
        Beta.canShowApkInfo = false;
        /**
         * 只允许在MainActivity上显示更新弹窗，其他activity上不显示弹窗;.
         * 不设置会默认所有activity都可以显示弹窗;
         */
        Beta.canShowUpgradeActs.add(HomeActivity.class);
        Beta.upgradeListener = new UpgradeListener() {
            @Override
            public void onUpgrade(int i, UpgradeInfo upgradeInfo, boolean b, boolean b1) {
                if (upgradeInfo != null) {
                    Toast.makeText(instance, "检测到新版本", Toast.LENGTH_SHORT).show();
                    Beta.startDownload();
                }
            }
        };

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

   /* private void initPlay() {
        int playType = Hawk.get(HawkConfig.PLAY_TYPE, 0);
        PlayerFactory playerFactory;
        if (playType == 1) {
            playerFactory = new PlayerFactory<IjkPlayer>() {
                @Override
                public IjkPlayer createPlayer(Context context) {
                    return new IjkPlayer(context);
                }
            };
        } else {
            playerFactory = new PlayerFactory<ExoMediaPlayer>() {
                @Override
                public ExoMediaPlayer createPlayer(Context context) {
                    return new ExoMediaPlayer(context);
                }
            };
        }
        //播放器配置，注意：此为全局配置，按需开启
        VideoViewManager.setConfig(VideoViewConfig.newBuilder()
                .setLogEnabled(BuildConfig.DEBUG)//调试的时候请打开日志，方便排错
                .setScreenScaleType(VideoView.SCREEN_SCALE_16_9)
                .setPlayerFactory(playerFactory)
                .setProgressManager(new ProgressManagerImpl())
                .build());
    }*/

    public static App getInstance() {
        return instance;
    }

    @Override
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        Beta.installTinker();
    }
}