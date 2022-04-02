.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;
.super Landroid/webkit/WebViewClient;
.source "BrandBannerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;

.field b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$c;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$c;)V
    .locals 0

    .line 480
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 481
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;

    .line 482
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$c;

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 534
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$c;

    if-eqz p1, :cond_0

    const/16 p3, 0x6a

    .line 535
    invoke-interface {p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$c;->a(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 541
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 542
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_0

    .line 543
    invoke-direct {p0, p4, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 521
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 522
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 523
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    .line 525
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 528
    :cond_0
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 499
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 502
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p1, p3, :cond_0

    .line 503
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 504
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "."

    .line 505
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 507
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 508
    sget-object p3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 509
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$c;

    if-eqz p2, :cond_0

    .line 510
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$c;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 490
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$c;

    if-eqz p1, :cond_0

    .line 491
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$c;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
