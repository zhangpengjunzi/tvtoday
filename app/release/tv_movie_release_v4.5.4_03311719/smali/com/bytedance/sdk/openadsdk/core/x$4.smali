.class Lcom/bytedance/sdk/openadsdk/core/x$4;
.super Lcom/bytedance/sdk/component/g/g;
.source "TTAdNativeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/x;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/a/h;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/x;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/h;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x$4;->c:Lcom/bytedance/sdk/openadsdk/core/x;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/x$4;->a:Lcom/bytedance/sdk/openadsdk/core/a/h;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/x$4;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$4;->c:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x$4;->a:Lcom/bytedance/sdk/openadsdk/core/a/h;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/common/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "com.bytedance.sdk.openadsdk.TTC3Proxy"

    const-string v1, "loadReward"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    .line 206
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v0, v1, v3}, Lcom/bytedance/sdk/component/utils/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 209
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/x$4;->c:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/x;)Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/x$4;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/x$4;->a:Lcom/bytedance/sdk/openadsdk/core/a/h;

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "TTAdNativeImpl"

    const-string v2, "reward component maybe not exist, pls check1"

    .line 212
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
