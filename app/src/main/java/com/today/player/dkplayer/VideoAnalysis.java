package com.today.player.dkplayer;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;

import com.tencent.bugly.proguard.j;
import com.tencent.bugly.proguard.l;
import com.today.player.R;
import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;
import com.today.player.ui.activity.PlayActivity;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

public class VideoAnalysis {

    private WebView webView;

    private Context mContext;

    public FrameLayout a;

    public Handler i = new Handler();

    public TextView d;

    public Dialog b;


    public boolean f38j = false;

    public VideoAnalysis a(Context context, j jVar) {
        this.mContext = context;
        this.a = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.dialog_parse, (ViewGroup) null);
        if (a != null) {
            this.d = a.findViewById(R.id.mParse_tip);
        }
        Dialog dialog = new Dialog(context, R.style.CustomDialogStyle);
        this.b = dialog;
        dialog.setOnKeyListener(new c(this, jVar));
        this.b.setCanceledOnTouchOutside(false);
        this.b.setCancelable(true);
        this.b.setContentView(this.a);
        this.b.setOnDismissListener(new d());
        try {
            this.b.getWindow().setLayout(-1, -1);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return this;
    }

    public class c implements DialogInterface.OnKeyListener {
        public final j a;

        public c(VideoAnalysis ykVar, j jVar) {
            this.a = jVar;
        }

        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (keyEvent.getAction() != 1 || i != 4 || keyEvent.getRepeatCount() != 0) {
                return false;
            }
            this.a.finish();
            return true;
        }
    }

    public class d implements DialogInterface.OnDismissListener {
        public d() {
        }

        public void onDismiss(DialogInterface dialogInterface) {
            if (webView != null) {
                webView.stopLoading();
                webView.clearCache(true);
                webView.removeAllViews();
                webView.destroy();
            }
        }
    }


    public interface j {
        void finish();
    }


    public interface play {
        void a();

        void a(String str, Map<String, String> map);
    }

    public final void a(String str, String str2, String str3, PlayActivity.PlayStart kVar) {
        this.d.setText("资源解析中，请稍后");
        if (this.webView != null) {
            b(str, str2, str3);
        } else {
            a(kVar);
            b(str, str2, str3);
        }
    }

    public final void b(String str, String str2, String str3) {
        PlayerModel.SourcesDTO sourcesDTO = ApiConfig.get().getSource(str);
        if (sourcesDTO != null) {
            String playerUrl = sourcesDTO.getPlayerUrl();
            if (TextUtils.isEmpty(playerUrl)) {
                playerUrl = "";
            }
            String loadUrl = playerUrl + str3;
            if (webView != null) {
                webView.stopLoading();
                webView.clearCache(true);
                webView.loadUrl(loadUrl);
            }
        }
    }

    public final void a(PlayActivity.PlayStart kVar) {
        webView = new WebView(mContext);
        if (webView != null) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(1, 1);
            webView.setFocusable(false);
            webView.setFocusableInTouchMode(false);
            webView.clearFocus();
            webView.setOverScrollMode(0);
            this.a.addView(webView, layoutParams);
            WebSettings settings = webView.getSettings();
            settings.setNeedInitialFocus(false);
            settings.setAllowContentAccess(true);
            settings.setAllowFileAccess(true);
            settings.setAllowUniversalAccessFromFileURLs(true);
            settings.setAllowFileAccessFromFileURLs(true);
            settings.setDatabaseEnabled(true);
            settings.setDomStorageEnabled(true);
            settings.setJavaScriptEnabled(true);
            if (Build.VERSION.SDK_INT >= 17) {
                settings.setMediaPlaybackRequiresUserGesture(false);
            }
            settings.setBlockNetworkImage(true);
            settings.setUseWideViewPort(true);
            settings.setDomStorageEnabled(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
            settings.setSupportMultipleWindows(false);
            settings.setLoadWithOverviewMode(true);
            settings.setBuiltInZoomControls(true);
            settings.setSupportZoom(false);
            if (Build.VERSION.SDK_INT >= 21) {
                settings.setMixedContentMode(0);
            }
            settings.setCacheMode(WebSettings.LOAD_NO_CACHE);
            settings.setDefaultTextEncodingName("utf-8");
            settings.setUserAgentString(webView.getSettings().getUserAgentString());
            settings.setUserAgentString(" Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Mobile Safari/537.36");
            webView.setWebChromeClient(new WebChromeClient() {
                @Override
                public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                    return false;
                }
            });
            l lVar = new l(kVar);
            webView.setWebViewClient(lVar);
            webView.setBackgroundColor(-16777216);
        }
    }


    public class l extends WebViewClient {
        public PlayActivity.PlayStart a;

        public class a implements Runnable {
            public final WebView a;
            public final String b;

            public a(WebView webView, String str) {
                this.a = webView;
                this.b = str;
            }

            public void run() {
                this.a.stopLoading();
                l.this.a.a(this.b, (Map<String, String>) null);
            }
        }

        public l(PlayActivity.PlayStart aVar) {
            this.a = aVar;
        }

        public void onLoadResource(WebView webView, String str) {
            super.onLoadResource(webView, str);
        }

        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            sslErrorHandler.proceed();
        }

        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            Log.i("url",str);
            if (str.endsWith("/favicon.ico")) {
                return new WebResourceResponse("image/png", (String) null, (InputStream) null);
            }
            if (!f38j && om.c(str)) {
                f38j = true;
                i.post(new a(webView, str));
            }
            if (f38j) {
                return new WebResourceResponse("text/plain", "utf-8", new ByteArrayInputStream("".getBytes()));
            }
            return super.shouldInterceptRequest(webView, str);
        }

        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return false;
        }
    }


}
