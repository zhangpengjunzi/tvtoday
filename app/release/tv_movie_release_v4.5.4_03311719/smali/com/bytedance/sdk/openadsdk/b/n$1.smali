.class Lcom/bytedance/sdk/openadsdk/b/n$1;
.super Lcom/bytedance/sdk/component/f/a/a;
.source "LandingPageLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/b/n;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/b/n;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/b/n;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/n$1;->a:Lcom/bytedance/sdk/openadsdk/b/n;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/f/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/f/b/c;Lcom/bytedance/sdk/component/f/b;)V
    .locals 2

    .line 289
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "cid"

    .line 291
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/n$1;->a:Lcom/bytedance/sdk/openadsdk/b/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/b/n;->a()Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ad_id"

    .line 292
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/n$1;->a:Lcom/bytedance/sdk/openadsdk/b/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/b/n;->a()Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "log_extra"

    .line 293
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/n$1;->a:Lcom/bytedance/sdk/openadsdk/b/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/b/n;->a()Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->d()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\"/** adInfo **/\""

    .line 296
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 298
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/n$1;->a:Lcom/bytedance/sdk/openadsdk/b/n;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/b/n;->a(Lcom/bytedance/sdk/openadsdk/b/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/n$1;->a:Lcom/bytedance/sdk/openadsdk/b/n;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/b/n;->a(Lcom/bytedance/sdk/openadsdk/b/n;)Landroid/webkit/WebView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 300
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/l;->d()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/n$1$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/b/n$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/b/n$1;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "LandingPageLog"

    const-string v0, "TTWebViewClient : onPageFinished"

    .line 309
    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V
    .locals 0

    .line 315
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "send landing page js error"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
