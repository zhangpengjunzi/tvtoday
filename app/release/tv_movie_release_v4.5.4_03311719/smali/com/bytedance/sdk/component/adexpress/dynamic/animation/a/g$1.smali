.class Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g$1;
.super Ljava/lang/Object;
.source "RubInAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g;->a()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g;I)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g$1;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g;

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g$1;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g;)Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g$a;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g$1;->a:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g$a;->a(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    return-void
.end method
