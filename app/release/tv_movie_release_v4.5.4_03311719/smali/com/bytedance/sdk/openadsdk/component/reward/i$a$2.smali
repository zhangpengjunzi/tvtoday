.class Lcom/bytedance/sdk/openadsdk/component/reward/i$a$2;
.super Ljava/lang/Object;
.source "RewardVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/i$a;->run()V
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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/i$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/i$a;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$a$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/Object;)V
    .locals 1

    const-string p2, "RewardVideoLoadManager"

    if-eqz p1, :cond_0

    const-string p1, "RewardVideoLog: onVideoPreloadSuccess with net change !!"

    .line 505
    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$a$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/i$a;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/i$a;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$a$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/i$a;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/i$a;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    goto :goto_0

    :cond_0
    const-string p1, "RewardVideoLog: onVideoPreloadFail with net change !!"

    .line 508
    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
