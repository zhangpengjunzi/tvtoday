package com.bt.jrsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;

import com.bt.jrsdk.httplib.config.HttpMethod;
import com.bt.jrsdk.util.LogUtil;
import com.bt.jrsdk.util.NetUtil;

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


    protected void reportClick(float x, float y, float pressure) {
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("reqId", reqId);
        reportParams.put("ts", System.currentTimeMillis());
        reportParams.put("ads_id", ads_id);
        reportParams.put("state", "click");
        reportParams.put("url", webUrl);
        reportParams.put("x", x);
        reportParams.put("y", y);
        reportParams.put("pressure", pressure);
        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }

    protected void go2WebActivity() {
        if (!webUrl.startsWith("http") && !webUrl.startsWith("https")) {
            startPage(webUrl);
            reportAdResult(webUrl, "deeplink");
        } else {
            goBrowser(webUrl);
            reportAdResult(webUrl, "goBrowser");
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
        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }


    private void reportAdResult(String url, String state) {
        long now = System.currentTimeMillis();
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("reqId", reqId);
        reportParams.put("ts", now);
        reportParams.put("ads_id", ads_id);
        reportParams.put("url", url);
        reportParams.put("state", state);
        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }


    private void startPage(String url) {
        try {
            startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(url)));
            reportFinish();
            onResult();
            this.finish();
        } catch (Exception e) {
        }
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
