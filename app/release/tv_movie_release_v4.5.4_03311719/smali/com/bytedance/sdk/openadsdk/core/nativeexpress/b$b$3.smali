.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$3;
.super Landroid/webkit/WebChromeClient;
.source "BrandBannerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->i()Lcom/bytedance/sdk/component/widget/SSWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$3;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$3;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 326
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$3;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;)I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x4b

    if-lt p2, p1, :cond_1

    .line 327
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$3;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->d()V

    .line 328
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$3;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    const/16 p1, 0x64

    if-ne p2, p1, :cond_3

    .line 330
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$3;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 332
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 333
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 334
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$3;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 336
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    const-string v0, "error_url"

    .line 338
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$3;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$3;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v0

    const-string v1, "banner_ad"

    const-string v2, "html_banner_error_url"

    invoke-static {p2, v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/b/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 340
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$3;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method
