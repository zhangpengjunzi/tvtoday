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

    public static Application getInstance() {
        return instance;
    }

}