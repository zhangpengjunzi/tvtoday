.class Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;
.super Ljava/lang/Object;
.source "RewardVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->a(Lcom/bytedance/sdk/openadsdk/core/f/a;Lcom/bytedance/sdk/openadsdk/core/f/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/component/reward/g$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/l;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/i$3;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/component/reward/l;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->b:Lcom/bytedance/sdk/openadsdk/component/reward/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/Object;)V
    .locals 3

    .line 352
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download video file: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", preload: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->a:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RewardVideoLoadManager"

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 354
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->f:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object p2

    .line 355
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->b:Lcom/bytedance/sdk/openadsdk/component/reward/l;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/l;->a(Ljava/lang/String;)V

    .line 357
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iget-boolean p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->a:Z

    if-nez p2, :cond_1

    .line 358
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    if-eqz p1, :cond_2

    .line 359
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    if-eqz p1, :cond_2

    .line 360
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->f:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/t;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iget-wide v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->e:J

    invoke-static {p1, p2, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;J)V

    .line 361
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onRewardVideoCached()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 366
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->f:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/i$3;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    :cond_2
    :goto_0
    return-void
.end method
