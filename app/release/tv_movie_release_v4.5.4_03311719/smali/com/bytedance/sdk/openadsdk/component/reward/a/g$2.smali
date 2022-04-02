.class Lcom/bytedance/sdk/openadsdk/component/reward/a/g$2;
.super Landroid/webkit/WebViewClient;
.source "VastEndCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/a/g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/g;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/g$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-ge p1, p3, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/g$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/g;->b(Lcom/bytedance/sdk/openadsdk/component/reward/a/g;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/g$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    invoke-static {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/a/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a/g;ILjava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/g$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/g;->b(Lcom/bytedance/sdk/openadsdk/component/reward/a/g;Z)Z

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    if-eqz p2, :cond_1

    .line 141
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/g$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/g;->b(Lcom/bytedance/sdk/openadsdk/component/reward/a/g;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    .line 143
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/g$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p3

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a/g;ILjava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/g$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/g;->b(Lcom/bytedance/sdk/openadsdk/component/reward/a/g;Z)Z

    :cond_1
    return-void
.end method
