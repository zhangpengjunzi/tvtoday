.class public Lcom/today/player/dkplayer/VideoAnalysis;
.super Ljava/lang/Object;
.source "VideoAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/dkplayer/VideoAnalysis$g;,
        Lcom/today/player/dkplayer/VideoAnalysis$l;,
        Lcom/today/player/dkplayer/VideoAnalysis$play;,
        Lcom/today/player/dkplayer/VideoAnalysis$j;,
        Lcom/today/player/dkplayer/VideoAnalysis$d;,
        Lcom/today/player/dkplayer/VideoAnalysis$c;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/app/Dialog;

.field public d:Landroid/widget/TextView;

.field public e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public f:Lcom/today/player/ui/adapter/PraseAdapter;

.field public f38j:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$ParseUrlDTO;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->i:Landroid/os/Handler;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->g:Ljava/util/List;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->f38j:Z

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/dkplayer/VideoAnalysis;)Landroid/webkit/WebView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/today/player/dkplayer/VideoAnalysis;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/today/player/dkplayer/VideoAnalysis;->load(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/today/player/dkplayer/VideoAnalysis;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private load(Ljava/lang/String;)V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 340
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 341
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->i:Landroid/os/Handler;

    new-instance v0, Lcom/today/player/dkplayer/VideoAnalysis$4;

    invoke-direct {v0, p0}, Lcom/today/player/dkplayer/VideoAnalysis$4;-><init>(Lcom/today/player/dkplayer/VideoAnalysis;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->i:Landroid/os/Handler;

    new-instance v0, Lcom/today/player/dkplayer/VideoAnalysis$5;

    invoke-direct {v0, p0}, Lcom/today/player/dkplayer/VideoAnalysis$5;-><init>(Lcom/today/player/dkplayer/VideoAnalysis;)V

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/today/player/dkplayer/VideoAnalysis$j;)Lcom/today/player/dkplayer/VideoAnalysis;
    .locals 3

    .line 71
    iput-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0b0049

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const v1, 0x7f0800d5

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->d:Landroid/widget/TextView;

    .line 76
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0f00dd

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 77
    iput-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->b:Landroid/app/Dialog;

    .line 78
    new-instance p1, Lcom/today/player/dkplayer/VideoAnalysis$c;

    invoke-direct {p1, p0, p0, p2}, Lcom/today/player/dkplayer/VideoAnalysis$c;-><init>(Lcom/today/player/dkplayer/VideoAnalysis;Lcom/today/player/dkplayer/VideoAnalysis;Lcom/today/player/dkplayer/VideoAnalysis$j;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 79
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->b:Landroid/app/Dialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 80
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->b:Landroid/app/Dialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 81
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->b:Landroid/app/Dialog;

    iget-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 82
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->b:Landroid/app/Dialog;

    new-instance p2, Lcom/today/player/dkplayer/VideoAnalysis$d;

    invoke-direct {p2, p0}, Lcom/today/player/dkplayer/VideoAnalysis$d;-><init>(Lcom/today/player/dkplayer/VideoAnalysis;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 84
    :try_start_0
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public final a(Lcom/today/player/dkplayer/VideoAnalysis$play;)V
    .locals 5

    .line 204
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 206
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 207
    iget-object v2, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 208
    iget-object v2, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 209
    iget-object v2, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearFocus()V

    .line 210
    iget-object v2, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 211
    iget-object v2, p0, Lcom/today/player/dkplayer/VideoAnalysis;->a:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 213
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 214
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 215
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 216
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 217
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 219
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 220
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 221
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v2, v4, :cond_0

    .line 222
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 224
    :cond_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 225
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 226
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 227
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 228
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 229
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 230
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 231
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 232
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 233
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_1
    const/4 v1, 0x2

    .line 235
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const-string v1, "utf-8"

    .line 236
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const-string v1, " Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Mobile Safari/537.36"

    .line 238
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/today/player/dkplayer/VideoAnalysis$3;

    invoke-direct {v1, p0}, Lcom/today/player/dkplayer/VideoAnalysis$3;-><init>(Lcom/today/player/dkplayer/VideoAnalysis;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 245
    new-instance v0, Lcom/today/player/dkplayer/VideoAnalysis$l;

    invoke-direct {v0, p0, p1}, Lcom/today/player/dkplayer/VideoAnalysis$l;-><init>(Lcom/today/player/dkplayer/VideoAnalysis;Lcom/today/player/dkplayer/VideoAnalysis$play;)V

    .line 246
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 247
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/today/player/dkplayer/VideoAnalysis$play;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->d:Landroid/widget/TextView;

    const-string v1, "\u8d44\u6e90\u89e3\u6790\u4e2d\uff0c\u8bf7\u7a0d\u540e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lcom/today/player/dkplayer/VideoAnalysis;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, p4}, Lcom/today/player/dkplayer/VideoAnalysis;->a(Lcom/today/player/dkplayer/VideoAnalysis$play;)V

    .line 142
    invoke-virtual {p0, p1, p2, p3}, Lcom/today/player/dkplayer/VideoAnalysis;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const v1, 0x7f0800d2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iput-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 150
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/api/ApiConfig;->getParseFlagList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 186
    :cond_2
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/today/player/api/ApiConfig;->getSource(Ljava/lang/String;)Lcom/today/player/bean/PlayerModel$SourcesDTO;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 188
    iput-boolean v1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->f38j:Z

    .line 189
    iget-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setVisibility(I)V

    .line 190
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getPlayerUrl()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, ""

    .line 194
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    iget-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    if-eqz p2, :cond_4

    .line 196
    invoke-virtual {p2}, Landroid/webkit/WebView;->stopLoading()V

    .line 197
    iget-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 198
    iget-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 151
    :cond_5
    :goto_1
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/upa/DownloadManager;->setCurrentPlayerUrl(Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {p1, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setVisibility(I)V

    .line 153
    new-instance p1, Lcom/today/player/ui/adapter/PraseAdapter;

    invoke-direct {p1}, Lcom/today/player/ui/adapter/PraseAdapter;-><init>()V

    iput-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->f:Lcom/today/player/ui/adapter/PraseAdapter;

    .line 154
    iget-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {p2, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 155
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/api/ApiConfig;->getPraseBeanList()Ljava/util/List;

    move-result-object p1

    .line 156
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x6

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 157
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    iget-object v3, p0, Lcom/today/player/dkplayer/VideoAnalysis;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 158
    iget-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis;->f:Lcom/today/player/ui/adapter/PraseAdapter;

    new-instance v0, Lcom/today/player/dkplayer/VideoAnalysis$g;

    invoke-direct {v0, p0, p3}, Lcom/today/player/dkplayer/VideoAnalysis$g;-><init>(Lcom/today/player/dkplayer/VideoAnalysis;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/today/player/ui/adapter/PraseAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 159
    iget-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v0, Lcom/today/player/dkplayer/VideoAnalysis$1;

    invoke-direct {v0, p0}, Lcom/today/player/dkplayer/VideoAnalysis$1;-><init>(Lcom/today/player/dkplayer/VideoAnalysis;)V

    invoke-virtual {p2, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 165
    iget-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis;->g:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/today/player/api/ApiConfig;->mParseUrl:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    .line 167
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->getParseUrl()Ljava/lang/String;

    move-result-object p2

    .line 168
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 169
    iput-boolean v1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->f38j:Z

    .line 170
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->f:Lcom/today/player/ui/adapter/PraseAdapter;

    iget-object v1, p0, Lcom/today/player/dkplayer/VideoAnalysis;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/PraseAdapter;->setNewData(Ljava/util/List;)V

    .line 171
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 173
    iget-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 174
    iget-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis;->i:Landroid/os/Handler;

    new-instance p3, Lcom/today/player/dkplayer/VideoAnalysis$2;

    invoke-direct {p3, p0, p1}, Lcom/today/player/dkplayer/VideoAnalysis$2;-><init>(Lcom/today/player/dkplayer/VideoAnalysis;Ljava/lang/String;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 182
    :cond_6
    invoke-direct {p0, p1}, Lcom/today/player/dkplayer/VideoAnalysis;->load(Ljava/lang/String;)V

    return-void
.end method
