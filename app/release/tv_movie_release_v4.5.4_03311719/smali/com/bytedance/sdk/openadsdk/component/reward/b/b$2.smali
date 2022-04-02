.class Lcom/bytedance/sdk/openadsdk/component/reward/b/b$2;
.super Ljava/lang/Object;
.source "RewardFullTypeImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/b/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/b/b;Landroid/view/View;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/b/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 147
    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->d(Landroid/content/Context;F)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/b/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->c(Lcom/bytedance/sdk/openadsdk/component/reward/b/b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 149
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_0

    .line 150
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->c(Lcom/bytedance/sdk/openadsdk/component/reward/b/b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
