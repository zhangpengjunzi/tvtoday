package com.today.player.dkplayer;

import android.app.AlertDialog;
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
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;

import com.video.dkplayer.R;
import com.today.player.api.ApiConfig;
import com.today.player.bean.PlayerModel;
import com.today.player.ui.activity.PlayActivity;
import com.today.player.ui.adapter.PraseAdapter;
import com.today.player.util.FastClickCheckUtil;
import com.upa.DownloadManager;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class VideoAnalysis {

    private WebView webView;

    private Context mContext;

    public LinearLayout a;

    public Handler i = new Handler();

    public TextView d;

    public Dialog b;

    public List<PlayerModel.ParseUrlDTO> g = new ArrayList();

    public TvRecyclerView e;
    public PraseAdapter f;

    public boolean f38j = false;

    public VideoAnalysis a(Context context, j jVar) {
        this.mContext = context;
        this.a = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.dialog_parse, (ViewGroup) null);
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
            if (i != null) {
                i.removeCallbacksAndMessages(null);
            }
        }
    }


    public interface j {
        void finish();
    }


    public interface play {
        void a();

        void a(String str);
    }

    public final void a(String str, String str2, String str3, VideoAnalysis.play kVar) {
        this.d.setText("资源解析中，请稍后");
        if (this.webView != null) {
            b(str, str2, str3);
        } else {
            a(kVar);
            b(str, str2, str3);
        }
    }

    public final void b(String str, String str2, String str3) {
        if (this.e == null) {
            this.e = (TvRecyclerView) (a != null ? a.findViewById(R.id.mGridView) : null);
        }
        if (TextUtils.isEmpty(str2) || ApiConfig.get().getParseFlagList().contains(str2)) {
            DownloadManager.getInstance().setCurrentPlayerUrl(str3);
            e.setVisibility(View.VISIBLE);
            this.f = new PraseAdapter();
            this.e.setAdapter(this.f);
            List<PlayerModel.ParseUrlDTO> list = ApiConfig.get().getPraseBeanList();
            int count = Math.min(list.size(), 6);
            this.e.setLayoutManager(new V7GridLayoutManager(mContext, count));
            this.f.setOnItemClickListener(new g(str3));
            this.e.setOnInBorderKeyEventListener(new TvRecyclerView.OnInBorderKeyEventListener() {
                @Override
                public boolean onInBorderKeyEvent(int i, View view) {
                    return true;
                }
            });
            this.g.addAll(list);
            PlayerModel.ParseUrlDTO tgVar = ApiConfig.get().mParseUrl;
            String parseUrl = tgVar.getParseUrl();
            int i2 = this.g.indexOf(tgVar);
            this.f38j = false;
            this.f.setNewData(this.g);
            this.e.setSelection(i2);
            String str6 = parseUrl + str3;
            if (this.g.size() > 0) {
                this.i.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        load(str6);
                    }
                }, 3000);
                return;
            } else {
                load(str6);
                return;
            }
        }
        PlayerModel.SourcesDTO sourcesDTO = ApiConfig.get().getSource(str);
        if (sourcesDTO != null) {
            f38j = false;
            e.setVisibility(View.GONE);
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

    public final void a(VideoAnalysis.play kVar) {
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
        public VideoAnalysis.play a;

        public class a implements Runnable {
            public final WebView a;
            public final String b;

            public a(WebView webView, String str) {
                this.a = webView;
                this.b = str;
            }

            public void run() {
                this.a.stopLoading();
                l.this.a.a(this.b);
            }
        }

        public l(VideoAnalysis.play aVar) {
            this.a = aVar;
        }

        public void onLoadResource(WebView webView, String str) {
            super.onLoadResource(webView, str);
        }

        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            if (mContext == null) return;
            AlertDialog.Builder builder = new AlertDialog.Builder(mContext);
            builder.setMessage("SSL证书验证失败");
            builder.setPositiveButton("continue", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    sslErrorHandler.proceed();
                }
            });
            builder.setNegativeButton("cancel", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    sslErrorHandler.cancel();
                }
            });
            final AlertDialog dialog = builder.create();
            dialog.show();
        }

        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            Log.i("url", str);
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

    public class g implements BaseQuickAdapter.OnItemClickListener {
        public final String a;

        public g(String str) {
            this.a = str;
        }

        @Override
        public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
            FastClickCheckUtil.check(view);
            PlayerModel.ParseUrlDTO tgVar = f.getData().get(position);
            f.notifyItemChanged(g.indexOf(ApiConfig.get().mParseUrl));
            ApiConfig.get().setDefault(tgVar);
            f.notifyItemChanged(position);
            f38j = false;
            load(tgVar.getParseUrl() + this.a);
        }
    }

    private void load(String url) {
        if (webView != null) {
            webView.stopLoading();
            webView.clearCache(true);
            webView.loadUrl(url);
        }
        i.postDelayed(new Runnable() {
            @Override
            public void run() {
                e.requestFocus();
            }
        }, 200);
        i.postDelayed(new Runnable() {
            @Override
            public void run() {
                Toast.makeText(mContext, "解析失败，请切换其他线路解析", Toast.LENGTH_LONG).show();
            }
        }, 30000);
    }
}
