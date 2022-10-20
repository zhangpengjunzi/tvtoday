package com.bt.jrsdk.ads;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;

import com.bt.jrsdk.httplib.HttpManager;
import com.bt.jrsdk.httplib.RequestClient;
import com.bt.jrsdk.httplib.adapter.ResponseByteAdapter;
import com.bt.jrsdk.httplib.config.HttpMethod;
import com.bt.jrsdk.httplib.iml.ResponseCallback;
import com.bt.jrsdk.httplib.intercepter.HttpIntercepter;
import com.bt.jrsdk.listener.PicDownloadListener;
import com.bt.jrsdk.manager.AdStartManager;
import com.bt.jrsdk.util.LogUtil;
import com.bt.jrsdk.util.NetUtil;
import com.bt.jrsdk.util.RandomUtil;
import com.bt.jrsdk.util.Utils;
import com.today.player.base.App;
import com.today.player.util.ChannelUtil;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public abstract class BaseAd {
    protected String pid;
    protected static WeakReference<Activity> _activity;
    protected String requestId;
    protected String content;
    public int ads_id;

    public BaseAd(Activity activity, String pid) {
        if (activity == null) {
            throw new RuntimeException("activity is null!!");
        }
        if (TextUtils.isEmpty(pid)) {
            throw new RuntimeException("pid is null!!");
        }
        this.pid = pid;
        _activity = new WeakReference(activity);
        String uuid = RandomUtil.getRandomString();
        requestId = uuid + "_" + System.currentTimeMillis();
    }


    protected Activity getActivity() {
        return (Activity) _activity.get();
    }

    public void loadAd(String content) {
        this.content = content;
        loadCurrentAd();
    }


    protected abstract void loadCurrentAd();

    public abstract void showAd();

    public void recycle() {
        _activity.clear();
        recycleAdAndListener();
    }

    protected abstract void recycleAdAndListener();

    protected void go2AdActivity(Class<?> cls) {
        Intent intent = new Intent(getActivity(), cls);
        intent.putExtra("pid", pid);
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        getActivity().startActivity(intent);
    }

    protected void downLoadPic(String url, PicDownloadListener listener) {
        RequestClient request = new RequestClient.Builder()
                .setHost(url)
                .setPath("")
                .setMethod(HttpMethod.GET)
                .setParams(null)
                .setIntercepter(new HttpIntercepter())
                .setAdapter(new ResponseByteAdapter())
                .setCallback(new ResponseCallback<byte[]>() {
                    @Override
                    public void success(byte[] pic) {
                        LogUtil.d("NetUtil", "suc");
                        listener.suc(pic);
                    }

                    @Override
                    public void fail(String error) {
                        LogUtil.d("NetUtil", error);
                        listener.fail(error);
                    }

                    @Override
                    public void complete() {

                    }
                }).apply();
        HttpManager.getInstance().doRequest(request);
    }

    protected void reportLoad(String adType) {
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("reqId", requestId);
        reportParams.put("uid", AdStartManager.uid);
        reportParams.put("adType", adType);
        reportParams.put("ads_id", ads_id);
        reportParams.put("pid", pid);
        reportParams.put("adContent", content);
        reportParams.put("ts", System.currentTimeMillis());
        reportParams.put("state", "load");
        reportParams.put("ad_type", AdConfig.MY_AD_TYPE);
        reportParams.put("tvorphone", Utils.getDeviceType());
        reportParams.put("umeng_channel", ChannelUtil.getChannel());
        reportParams.put("model", Build.MODEL);
        reportParams.put("osversion", String.valueOf(Build.VERSION.SDK_INT));
        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }

    protected void reportShow(String adType) {
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("reqId", requestId);
        reportParams.put("adType", adType);
        reportParams.put("uid", AdStartManager.uid);
        reportParams.put("ads_id", ads_id);
        reportParams.put("pid", pid);
        reportParams.put("ts", System.currentTimeMillis());
        reportParams.put("state", "show");
        reportParams.put("ad_type", AdConfig.MY_AD_TYPE);
        reportParams.put("tvorphone", Utils.getDeviceType());
        reportParams.put("umeng_channel", ChannelUtil.getChannel());
        reportParams.put("model", Build.MODEL);
        reportParams.put("osversion", String.valueOf(Build.VERSION.SDK_INT));
        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }


    protected void reportAdLoad(String pid, String ad_Type,String adType) {
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("uid", AdStartManager.uid);
        reportParams.put("pid", pid);
        reportParams.put("adContent", content);
        reportParams.put("ts", System.currentTimeMillis());
        reportParams.put("state", "load");
        reportParams.put("ad_type", ad_Type);
        reportParams.put("tvorphone", Utils.getDeviceType());
        reportParams.put("umeng_channel", ChannelUtil.getChannel());
        reportParams.put("model", Build.MODEL);
        reportParams.put("osversion", String.valueOf(Build.VERSION.SDK_INT));
        reportParams.put("adType", adType);
        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }

    protected void reportAdShow(String pid, String ad_Type,String adType) {
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("uid", AdStartManager.uid);
        reportParams.put("pid", pid);
        reportParams.put("ts", System.currentTimeMillis());
        reportParams.put("state", "show");
        reportParams.put("ad_type", ad_Type);
        reportParams.put("tvorphone", Utils.getDeviceType());
        reportParams.put("umeng_channel", ChannelUtil.getChannel());
        reportParams.put("model", Build.MODEL);
        reportParams.put("osversion", String.valueOf(Build.VERSION.SDK_INT));
        reportParams.put("adType", adType);
        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }


    protected void reportAdClick(String pid, String ad_Type,String adType) {
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("uid", AdStartManager.uid);
        reportParams.put("pid", pid);
        reportParams.put("ts", System.currentTimeMillis());
        reportParams.put("state", "click");
        reportParams.put("ad_type", ad_Type);
        reportParams.put("tvorphone", Utils.getDeviceType());
        reportParams.put("umeng_channel", ChannelUtil.getChannel());
        reportParams.put("model", Build.MODEL);
        reportParams.put("osversion", String.valueOf(Build.VERSION.SDK_INT));
        reportParams.put("adType", adType);
        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }


    protected void reportAdLoadFail(String pid, String ad_Type,String adType) {
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("uid", AdStartManager.uid);
        reportParams.put("pid", pid);
        reportParams.put("ts", System.currentTimeMillis());
        reportParams.put("state", "loadfail");
        reportParams.put("ad_type", ad_Type);
        reportParams.put("tvorphone", Utils.getDeviceType());
        reportParams.put("umeng_channel", ChannelUtil.getChannel());
        reportParams.put("model", Build.MODEL);
        reportParams.put("osversion", String.valueOf(Build.VERSION.SDK_INT));
        reportParams.put("adType", adType);
        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }

}
