package com.bt.admanager;

import android.content.Context;

import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;


/**
 * 可以用一个单例来保存TTAdManager实例，在需要初始化sdk的时候调用
 */
public class TTAdManagerHolder {

    private static final String TAG = "TTAdManagerHolder";

    private static boolean sInit;

    public static boolean isSuccess = false;


    public static TTAdManager get() {

        return TTAdSdk.getAdManager();
    }


    public static void init(final Context context) {
        doInit(context);
    }

    //step1:接入网盟广告sdk的初始化操作，详情见接入文档和穿山甲平台说明
    private static void doInit(Context context) {
        if (!sInit) {
            //TTAdSdk.init(context, buildConfig(context));

            TTAdSdk.init(context, buildConfig(context), new TTAdSdk.InitCallback() {
                @Override
                public void success() {
                    isSuccess = true;
                }

                @Override
                public void fail(int code, String msg) {
                    isSuccess = false;
                }
            });
            sInit = true;
        }
    }


    private static TTAdConfig buildConfig(Context context) {
        return new TTAdConfig.Builder()
                .appId("5288755")
                .useTextureView(true) //使用TextureView控件播放视频,默认为SurfaceView,当有SurfaceView冲突的场景，可以使用TextureView
                .allowShowNotify(true) //是否允许sdk展示通知栏提示
                .debug(false) //测试阶段打开，可以通过日志排查问题，上线时去除该调用
                .supportMultiProcess(false)//是否支持多进程
                .needClearTaskReset()
                .build();
    }
}
