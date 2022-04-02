.class Lcom/bytedance/sdk/openadsdk/core/f/l$1;
.super Ljava/lang/Object;
.source "LandingPageModel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/f/l;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f/l;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/l;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/l;->n:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/l;->n:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 136
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a()Lcom/bytedance/sdk/openadsdk/core/f/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/m;->b()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    .line 135
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/api/d/c$a;->a(JJ)V

    :cond_0
    return-void
.end method
