.class public Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidgetImp;
.source "DynamicStarView.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidgetImp;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V

    const/4 p2, 0x0

    .line 14
    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->a:I

    .line 15
    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->b:I

    .line 19
    new-instance p2, Lcom/bytedance/sdk/component/adexpress/widget/TTRatingBar2;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/bytedance/sdk/component/adexpress/widget/TTRatingBar2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->o:Landroid/view/View;

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->o:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->getClickArea()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->o:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->getWidgetLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 3

    .line 41
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->g:I

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->h:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 42
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->j:I

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 43
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->i:I

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->a:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 44
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected getWidgetLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 5

    .line 26
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->h:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->l:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->b()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->l:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->a()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/adexpress/c/b;->a(Landroid/content/Context;F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->h:I

    .line 27
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/c;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->l:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->e()F

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/c/b;->a(Landroid/content/Context;F)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v0, v0, v1

    .line 28
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/c;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->l:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c()I

    move-result v2

    int-to-float v2, v2

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/c;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->l:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/adexpress/c/b;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v2, v3

    .line 28
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/adexpress/c/b;->a(Landroid/content/Context;F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 30
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->g:I

    if-le v1, v0, :cond_0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->l:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->h()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 31
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->g:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->a:I

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->l:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/adexpress/c/b;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->b:I

    .line 34
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->g:I

    .line 35
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->g:I

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->h:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public h()Z
    .locals 9

    .line 49
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidgetImp;->h()Z

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->l:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->m()D

    move-result-wide v0

    .line 51
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/c;->b()Z

    move-result v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    if-eqz v2, :cond_1

    cmpg-double v2, v0, v4

    if-ltz v2, :cond_0

    cmpl-double v2, v0, v6

    if-gtz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->n:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->n:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->getRenderRequest()Lcom/bytedance/sdk/component/adexpress/b/l;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->n:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    .line 53
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->getRenderRequest()Lcom/bytedance/sdk/component/adexpress/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/b/l;->k()I

    move-result v2

    const/4 v8, 0x4

    if-eq v2, v8, :cond_1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return v3

    :cond_1
    cmpg-double v2, v0, v4

    if-ltz v2, :cond_2

    cmpl-double v2, v0, v6

    if-lez v2, :cond_3

    :cond_2
    move-wide v0, v6

    .line 61
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->o:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->o:Landroid/view/View;

    check-cast v2, Lcom/bytedance/sdk/component/adexpress/widget/TTRatingBar2;

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->l:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->g()I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicStarView;->l:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->e()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/bytedance/sdk/component/adexpress/widget/TTRatingBar2;->a(DII)V

    return v3
.end method
