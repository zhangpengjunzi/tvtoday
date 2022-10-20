package com.bt.jrsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;

import com.bt.jrsdk.ads.AdConfig;
import com.bt.jrsdk.httplib.config.HttpMethod;
import com.bt.jrsdk.manager.AdStartManager;
import com.bt.jrsdk.util.LogUtil;
import com.bt.jrsdk.util.NetUtil;
import com.bt.jrsdk.util.Utils;
import com.today.player.util.ChannelUtil;
import com.umeng.commonsdk.debug.E;

import java.util.HashMap;
import java.util.Map;

public abstract class BaseActivity extends Activity {
    protected String pid;
    protected Bitmap pic;
    protected static final int REQUEST_CODE = 0x2021;
    protected String reqId;
    protected String webUrl;
    private long lastClick = 0;
    protected long showTime;
    public int ads_id;


    protected boolean responseClick() {
        if (lastClick == 0) {
            lastClick = System.currentTimeMillis();
        } else {
            long now = System.currentTimeMillis();
            if ((now - lastClick) < 1000 * 3) {
                return false;
            }
            lastClick = now;
        }
        return true;
    }


    protected void reportClick(float x, float y, float pressure,String adType) {
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("reqId", reqId);
        reportParams.put("ts", System.currentTimeMillis());
        reportParams.put("ads_id", ads_id);
        reportParams.put("state", "click");
        reportParams.put("adType", adType);
        reportParams.put("pid", pid);
        reportParams.put("url", webUrl);
        reportParams.put("x", x);
        reportParams.put("y", y);
        reportParams.put("uid", AdStartManager.uid);
        reportParams.put("pressure", pressure);
        reportParams.put("ad_type", AdConfig.MY_AD_TYPE);
        reportParams.put("tvorphone", Utils.getDeviceType());
        reportParams.put("umeng_channel", ChannelUtil.getChannel());
        reportParams.put("model", Build.MODEL);
        reportParams.put("osversion", String.valueOf(Build.VERSION.SDK_INT));
        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }

    protected void go2WebActivity(String adtype) {
        if (!webUrl.startsWith("http") && !webUrl.startsWith("https")) {
            startPage(webUrl);
            reportAdResult(webUrl, "deeplink",adtype);
        } else {
            goBrowser(webUrl);
            reportAdResult(webUrl, "goBrowser",adtype);
          /*  if (webUrl.endsWith(".apk")) {
                startPage(webUrl);
                reportAdResult(webUrl, "apk_download");
            } else {
                Intent intent = new Intent(this, WebActivity.class);
                intent.putExtra("web_url", webUrl);
                intent.putExtra("reqId", reqId);
                intent.putExtra("ads_id", ads_id);
                startActivityForResult(intent, REQUEST_CODE);
            }*/
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        LogUtil.d("request = " + requestCode + "  ,result = " + resultCode);
        if (requestCode == REQUEST_CODE) {
            reportFinish();
            onResult();
            this.finish();
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    protected abstract void onResult();

    private void reportFinish() {
        long now = System.currentTimeMillis();
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("reqId", reqId);
        reportParams.put("ts", now);
        reportParams.put("ads_id", ads_id);
        reportParams.put("show", showTime);
        reportParams.put("delay", now - showTime);
        reportParams.put("state", "web");
        reportParams.put("pid", pid);
        reportParams.put("ad_type", AdConfig.MY_AD_TYPE);
        reportParams.put("uid", AdStartManager.uid);
        reportParams.put("tvorphone", Utils.getDeviceType());
        reportParams.put("umeng_channel", ChannelUtil.getChannel());
        reportParams.put("model", Build.MODEL);
        reportParams.put("osversion", String.valueOf(Build.VERSION.SDK_INT));
        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }


    private void reportAdResult(String url, String state,String adType) {
        long now = System.currentTimeMillis();
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("reqId", reqId);
        reportParams.put("ts", now);
        reportParams.put("ads_id", ads_id);
        reportParams.put("url", url);
        reportParams.put("state", state);
        reportParams.put("adType", adType);
        reportParams.put("pid", pid);
        reportParams.put("uid", AdStartManager.uid);
        reportParams.put("ad_type", AdConfig.MY_AD_TYPE);
        reportParams.put("tvorphone", Utils.getDeviceType());
        reportParams.put("umeng_channel", ChannelUtil.getChannel());
        reportParams.put("model", Build.MODEL);
        reportParams.put("osversion", String.valueOf(Build.VERSION.SDK_INT));
        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }


    private void startPage(String url) {
        try {
            startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(url)));
        } catch (Exception e) {
        }
        reportFinish();
        onResult();
        this.finish();
    }

    private void goBrowser(String url) {
        try {
            Intent it = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
            it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            it.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
            startActivity(it);
        } catch (Exception e) {
            try {
                Intent it = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
                it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                startActivity(it);
            } catch (Exception e1) {
            }
        }
        //reportFinish();
        //onResult();
        //this.finish();
    }
}
