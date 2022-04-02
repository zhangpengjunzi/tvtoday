.class Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g$a;
.super Ljava/lang/Object;
.source "RubInAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g;Landroid/view/View;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g$a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g$a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 94
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g$a;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/g$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
