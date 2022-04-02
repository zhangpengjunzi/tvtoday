.class public Lcom/bytedance/sdk/openadsdk/core/a/b;
.super Ljava/lang/Object;
.source "AppOpenAdListenerAdapter.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$AppOpenAdListener;


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/TTAdNative$AppOpenAdListener;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$AppOpenAdListener;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$AppOpenAdListener;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/a/b;)Lcom/bytedance/sdk/openadsdk/TTAdNative$AppOpenAdListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$AppOpenAdListener;

    return-object p0
.end method


# virtual methods
.method public onAppOpenAdLoaded(Lcom/bytedance/sdk/openadsdk/TTAppOpenAd;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$AppOpenAdListener;

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$AppOpenAdListener;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$AppOpenAdListener;->onAppOpenAdLoaded(Lcom/bytedance/sdk/openadsdk/TTAppOpenAd;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/l;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/a/b$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/a/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/a/b;Lcom/bytedance/sdk/openadsdk/TTAppOpenAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$AppOpenAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "Unknown exception."

    .line 25
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$AppOpenAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$AppOpenAdListener;->onError(ILjava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/l;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/a/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/a/b;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
