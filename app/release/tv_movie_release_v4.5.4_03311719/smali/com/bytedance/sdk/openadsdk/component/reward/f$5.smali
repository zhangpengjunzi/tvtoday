.class Lcom/bytedance/sdk/openadsdk/component/reward/f$5;
.super Ljava/lang/Object;
.source "RewardFullProxyListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/f;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/f;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f$5;->b:Lcom/bytedance/sdk/openadsdk/component/reward/f;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f$5;->a:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f$5;->b:Lcom/bytedance/sdk/openadsdk/component/reward/f;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f$5;->b:Lcom/bytedance/sdk/openadsdk/component/reward/f;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f$5;->a:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V

    :cond_0
    return-void
.end method
