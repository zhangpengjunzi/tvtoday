package com.bt.jrsdk.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.LinearLayout;

import com.bt.jrsdk.httplib.config.HttpMethod;
import com.bt.jrsdk.util.CustomWebView;
import com.bt.jrsdk.util.CustomWebViewClient;
import com.bt.jrsdk.util.LogUtil;
import com.bt.jrsdk.util.NetUtil;

import java.util.HashMap;
import java.util.Map;

public class WebActivity extends Activity {
    private LinearLayout root;
    private CustomWebView webView;
    private static final int RESULT_CODE = 0x2022;
    private String webUrl, reqId, ads_id;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        LinearLayout.LayoutParams param = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.MATCH_PARENT);
        setContentView(root, param);
        webUrl = getIntent().getStringExtra("web_url");
        reqId = getIntent().getStringExtra("reqId");
        ads_id = getIntent().getStringExtra("ads_id");
        initView();
    }

    private void initView() {
        webView = new CustomWebView(this);
        webView.setWebViewClient(new CustomWebViewClient(reqId,ads_id));
        webView.loadUrl(webUrl);
        root.addView(webView, LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.MATCH_PARENT);
    }

    @Override
    protected void onDestroy() {
        if (webView != null) {
            webView.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
            webView.clearHistory();

            ((ViewGroup) webView.getParent()).removeView(webView);
            webView.destroy();
            webView = null;
        }
        LogUtil.d("Destroy");
        super.onDestroy();
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (webView != null) {
            webView.onResume();

        }
    }

    @Override
    protected void onPause() {
        super.onPause();
        if (webView != null) {
            webView.onPause();
        }
    }

    @Override
    public void onBackPressed() {
        if (webView != null && webView.canGoBack()) {
            webView.goBack();
        } else {
            setResult(RESULT_CODE);
            finish();
        }
    }


}