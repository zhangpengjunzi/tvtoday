.class Lcom/bytedance/sdk/openadsdk/common/f$4;
.super Ljava/lang/Object;
.source "TTTitleNewStyleManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/common/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/f;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/f$4;->b:Lcom/bytedance/sdk/openadsdk/common/f;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/f$4;->a:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 131
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/f$4;->a:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 133
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/f$4;->b:Lcom/bytedance/sdk/openadsdk/common/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/f;->a(Lcom/bytedance/sdk/openadsdk/common/f;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/f$4;->a:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
