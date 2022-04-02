.class Lcom/bytedance/sdk/openadsdk/component/reward/view/d$1;
.super Lcom/bytedance/sdk/openadsdk/core/b/g;
.source "RewardFullVideoLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->a(Lcom/bytedance/sdk/openadsdk/core/b/c;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Lcom/bytedance/sdk/openadsdk/component/reward/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/a/e;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/view/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/d;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/k/a;Lcom/bytedance/sdk/openadsdk/core/b/c;Lcom/bytedance/sdk/openadsdk/component/reward/a/e;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/view/d;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/e;

    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/b/g;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/k/a;Lcom/bytedance/sdk/openadsdk/core/b/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/view/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/view/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/view/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a()Lcom/bytedance/sdk/openadsdk/core/k/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/e;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/k/d;->g(J)V

    :cond_0
    return-void
.end method
