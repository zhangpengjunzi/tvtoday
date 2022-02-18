package com.bt.jrsdk.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import androidx.annotation.RequiresApi;

import com.bt.jrsdk.httplib.config.HttpMethod;

import java.io.ByteArrayInputStream;
import java.util.HashMap;
import java.util.Map;


public class CustomWebViewClient extends WebViewClient {

    private String reqId, ads_id;

    public CustomWebViewClient(String reqId, String ads_id) {
        this.reqId = reqId;
        this.ads_id = ads_id;
    }

    @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
    @Override
    public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
        String urlTemp = request.getUrl().toString();
        if (urlTemp.contains("thefatherofsalmon")
                || urlTemp.contains("fastappjump")
                || urlTemp.contains("hapjs.org")
                || urlTemp.contains("hap://")
                || urlTemp.contains("hwfastapp://")) {
            return true;
        }

        if (request.getUrl().toString().startsWith("http:") || request.getUrl().toString().startsWith("https:")) {
//            view.loadUrl(request.getUrl().toString());
//            return false;
            if (urlTemp.endsWith(".apk")) {
                report(urlTemp, "apk_download_page");
                startPage(urlTemp, view.getContext());
            }
            return super.shouldOverrideUrlLoading(view, request);
        } else {
            report(urlTemp, "deeplink_page");
            startPage(urlTemp, view.getContext());
            return true;
        }
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView view, String url) {
        String urlTemp = url;
        if (urlTemp.contains("thefatherofsalmon")
                || urlTemp.contains("fastappjump")
                || urlTemp.contains("hapjs.org")
                || urlTemp.contains("hap://")
                || urlTemp.contains("hwfastapp://")) {
            return true;
        }
        if (url.startsWith("http:") || url.startsWith("https:")) {
//            view.loadUrl(url);
//            return false;
            if (urlTemp.endsWith(".apk")) {
                report(urlTemp, "apk_download_page");
                startPage(urlTemp, view.getContext());
            }
            return super.shouldOverrideUrlLoading(view, url);
        } else {
            report(urlTemp, "deeplink_page");
            startPage(urlTemp, view.getContext());
            return true;
        }
    }


    @Override
    public WebResourceResponse shouldInterceptRequest(WebView view, String url) {
        try {
            String urlTemp = url;
            if (urlTemp.contains("thefatherofsalmon")
                    || urlTemp.contains("fastappjump")
                    || urlTemp.contains("hapjs.org")
                    || urlTemp.contains("hap://")
                    || urlTemp.contains("hwfastapp://")) {
                return new WebResourceResponse(null, null, null);
            }

            //APK拦截或者//DeepLink
          /*  if (!urlTemp.startsWith("http") && !urlTemp.startsWith("https")) {
                Log.i("url123", urlTemp);
                view.getContext().startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(urlTemp)));
                return new WebResourceResponse(null, null, null);
            }*/

        } catch (Exception e) {
        }
        return super.shouldInterceptRequest(view, url);
    }


    private void startPage(String url, Context context) {
        try {
            context.startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(url)));
        } catch (Exception e) {
        }
    }


    public void report(String webUrl, String state) {
        long now = System.currentTimeMillis();
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("reqId", reqId);
        reportParams.put("ts", now);
        reportParams.put("ads_id", ads_id);
        reportParams.put("url", webUrl);
        reportParams.put("state", state);
        NetUtil.getInstance().report(reportParams, HttpMethod.GET);
    }
}
