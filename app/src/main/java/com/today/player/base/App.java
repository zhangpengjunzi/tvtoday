package com.today.player.base;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

import android.os.Environment;


import androidx.multidex.MultiDexApplication;

import com.kingja.loadsir.core.LoadSir;
import com.orhanobut.hawk.Hawk;


import com.today.player.callback.EmptyCallback;
import com.today.player.callback.LoadingCallback;
import com.today.player.data.AppDataManager;
import com.today.player.server.ControlManager;
import com.today.player.util.AdBlocker;
import com.today.player.util.ChannelUtil;
import com.today.player.util.HawkConfig;
import com.today.player.util.LogUtil;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.UMConfigure;

import java.util.Locale;

import me.jessyan.autosize.AutoSizeConfig;
import me.jessyan.autosize.unit.Subunits;

/**
 * @author pj567
 * @date :2020/12/17
 * @description:
 */


public class App extends MultiDexApplication {
    public static Application instance;

    public static Application getInstance() {
        return instance;
    }


    @Override
    public void onCreate() {
        super.onCreate();
        instance = this;
        // 这里实现SDK初始化，appId替换成你的在Bugly平台申请的appId
        // 调试时，将第三个参数改为true
//        Bugly.init(getApplication(), "900029763", false);
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

        UMConfigure.init(this, "603875ff6ee47d382b672169", ChannelUtil.getChannel(), 1, "");
        MobclickAgent.setPageCollectionMode(MobclickAgent.PageMode.AUTO);
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
}