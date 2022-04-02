.class Lcom/bytedance/sdk/openadsdk/component/reward/l$2;
.super Lcom/bytedance/sdk/component/g/g;
.source "TTRewardVideoAdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/l;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/l;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/l;Ljava/lang/String;I)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/l;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l$2;->a:I

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b(Lcom/bytedance/sdk/openadsdk/component/reward/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 267
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l$2;->a:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/l;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/l;->c(Lcom/bytedance/sdk/openadsdk/component/reward/l;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "MultiProcess"

    const-string v2, "start registerRewardVideoListener ! "

    .line 270
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/l;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/l;->c(Lcom/bytedance/sdk/openadsdk/component/reward/l;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;-><init>(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    const/4 v3, 0x0

    .line 272
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 273
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/h;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 276
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/l;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/l;->d(Lcom/bytedance/sdk/openadsdk/component/reward/l;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerRewardVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;)V

    const-string v0, "end registerRewardVideoListener ! "

    .line 277
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
