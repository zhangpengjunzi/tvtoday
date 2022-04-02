.class Lcom/bytedance/sdk/openadsdk/component/reward/i$3$1;
.super Ljava/lang/Object;
.source "RewardVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->a(Lcom/bytedance/sdk/openadsdk/core/f/a;Lcom/bytedance/sdk/openadsdk/core/f/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/i$3;Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .line 281
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz p1, :cond_0

    .line 282
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f/p;->i(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->f:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/t;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iget-wide v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->e:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;J)V

    .line 284
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onRewardVideoCached()V

    :cond_0
    return-void
.end method
