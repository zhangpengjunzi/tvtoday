package com.today.player.base;

import android.app.Application;
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

public class App {
    public static Application instance;






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

    public static Application getInstance() {
        return instance;
    }


}