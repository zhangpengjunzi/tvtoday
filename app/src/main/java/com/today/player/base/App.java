package com.today.player.base;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

import android.os.Environment;


import androidx.multidex.MultiDexApplication;

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
import com.today.player.util.AdBlocker;
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