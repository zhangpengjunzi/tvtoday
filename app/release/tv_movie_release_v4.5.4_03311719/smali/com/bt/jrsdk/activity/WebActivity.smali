.class public Lcom/bt/jrsdk/activity/WebActivity;
.super Landroid/app/Activity;
.source "WebActivity.java"


# static fields
.field private static final RESULT_CODE:I = 0x2022


# instance fields
.field private ads_id:Ljava/lang/String;

.field private reqId:Ljava/lang/String;

.field private root:Landroid/widget/LinearLayout;

.field private webUrl:Ljava/lang/String;

.field private webView:Lcom/bt/jrsdk/util/CustomWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 37
    new-instance v0, Lcom/bt/jrsdk/util/CustomWebView;

    invoke-direct {v0, p0}, Lcom/bt/jrsdk/util/CustomWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bt/jrsdk/activity/WebActivity;->webView:Lcom/bt/jrsdk/util/CustomWebView;

    .line 38
    new-instance v1, Lcom/bt/jrsdk/util/CustomWebViewClient;

    iget-object v2, p0, Lcom/bt/jrsdk/activity/WebActivity;->reqId:Ljava/lang/String;

    iget-object v3, p0, Lcom/bt/jrsdk/activity/WebActivity;->ads_id:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/bt/jrsdk/util/CustomWebViewClient;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/util/CustomWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 39
    iget-object v0, p0, Lcom/bt/jrsdk/activity/WebActivity;->webView:Lcom/bt/jrsdk/util/CustomWebView;

    iget-object v1, p0, Lcom/bt/jrsdk/activity/WebActivity;->webUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/util/CustomWebView;->loadUrl(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/bt/jrsdk/activity/WebActivity;->root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bt/jrsdk/activity/WebActivity;->webView:Lcom/bt/jrsdk/util/CustomWebView;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/bt/jrsdk/activity/WebActivity;->webView:Lcom/bt/jrsdk/util/CustomWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bt/jrsdk/util/CustomWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/bt/jrsdk/activity/WebActivity;->webView:Lcom/bt/jrsdk/util/CustomWebView;

    invoke-virtual {v0}, Lcom/bt/jrsdk/util/CustomWebView;->goBack()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2022

    .line 79
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/WebActivity;->setResult(I)V

    .line 80
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/WebActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bt/jrsdk/activity/WebActivity;->root:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 28
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 29
    iget-object v0, p0, Lcom/bt/jrsdk/activity/WebActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Lcom/bt/jrsdk/activity/WebActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "web_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/WebActivity;->webUrl:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "reqId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/WebActivity;->reqId:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ads_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/WebActivity;->ads_id:Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/WebActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .line 45
    iget-object v0, p0, Lcom/bt/jrsdk/activity/WebActivity;->webView:Lcom/bt/jrsdk/util/CustomWebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/bt/jrsdk/util/CustomWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/bt/jrsdk/activity/WebActivity;->webView:Lcom/bt/jrsdk/util/CustomWebView;

    invoke-virtual {v0}, Lcom/bt/jrsdk/util/CustomWebView;->clearHistory()V

    .line 49
    iget-object v0, p0, Lcom/bt/jrsdk/activity/WebActivity;->webView:Lcom/bt/jrsdk/util/CustomWebView;

    invoke-virtual {v0}, Lcom/bt/jrsdk/util/CustomWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bt/jrsdk/activity/WebActivity;->webView:Lcom/bt/jrsdk/util/CustomWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    iget-object v0, p0, Lcom/bt/jrsdk/activity/WebActivity;->webView:Lcom/bt/jrsdk/util/CustomWebView;

    invoke-virtual {v0}, Lcom/bt/jrsdk/util/CustomWebView;->destroy()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/bt/jrsdk/activity/WebActivity;->webView:Lcom/bt/jrsdk/util/CustomWebView;

    :cond_0
    const-string v0, "Destroy"

    .line 53
    invoke-static {v0}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 69
    iget-object v0, p0, Lcom/bt/jrsdk/activity/WebActivity;->webView:Lcom/bt/jrsdk/util/CustomWebView;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/bt/jrsdk/util/CustomWebView;->onPause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/bt/jrsdk/activity/WebActivity;->webView:Lcom/bt/jrsdk/util/CustomWebView;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/bt/jrsdk/util/CustomWebView;->onResume()V

    :cond_0
    return-void
.end method
