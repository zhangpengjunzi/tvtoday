.class Lcom/bytedance/sdk/openadsdk/component/reward/a/g$3;
.super Lcom/bytedance/sdk/openadsdk/core/b/g;
.source "VastEndCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/a/g;->a(IILcom/bytedance/sdk/openadsdk/core/k/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/k/a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/g;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/k/a;Lcom/bytedance/sdk/openadsdk/core/k/a;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/g$3;->b:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/g$3;->a:Lcom/bytedance/sdk/openadsdk/core/k/a;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/b/g;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/k/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/g$3;->a:Lcom/bytedance/sdk/openadsdk/core/k/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->c()Lcom/bytedance/sdk/openadsdk/core/k/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/g$3;->b:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/g;->c(Lcom/bytedance/sdk/openadsdk/component/reward/a/g;)Lcom/bytedance/sdk/openadsdk/component/reward/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/g$3;->b:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/g;->c(Lcom/bytedance/sdk/openadsdk/component/reward/a/g;)Lcom/bytedance/sdk/openadsdk/component/reward/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/e;->s()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 191
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/g$3;->a:Lcom/bytedance/sdk/openadsdk/core/k/a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/k/a;->c()Lcom/bytedance/sdk/openadsdk/core/k/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/k/c;->a(J)V

    :cond_1
    return-void
.end method
