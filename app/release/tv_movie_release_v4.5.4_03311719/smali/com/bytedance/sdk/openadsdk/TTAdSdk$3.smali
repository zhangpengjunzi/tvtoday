.class final Lcom/bytedance/sdk/openadsdk/TTAdSdk$3;
.super Lcom/bytedance/sdk/component/g/g;
.source "TTAdSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/TTAdSdk;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 276
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$3;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/g/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 280
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/j/f;->E()Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    monitor-enter v0

    .line 283
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/j/f;->E()Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/j/f;->a()V

    const/4 v1, 0x0

    .line 286
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->a(Ljava/lang/Boolean;)V

    .line 288
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 292
    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/e;->f()V

    .line 295
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/l;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 297
    invoke-static {v0}, Lcom/bytedance/sdk/component/g/e;->a(Z)V

    .line 298
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/b/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/g/b/a;-><init>()V

    invoke-static {v0}, Lcom/bytedance/sdk/component/g/e;->a(Lcom/bytedance/sdk/component/g/c;)V

    .line 300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/l;->r()Z

    move-result v0

    if-nez v0, :cond_3

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/e;->a(Landroid/content/Context;)V

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/e;->g(Landroid/content/Context;)V

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/e;->k(Landroid/content/Context;)V

    .line 305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/e;->l(Landroid/content/Context;)V

    return-void
.end method
