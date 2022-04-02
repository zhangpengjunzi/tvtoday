.class abstract Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tv/leanback/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "GridLinearSmoothScroller"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tv/leanback/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/tv/leanback/GridLayoutManager;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    .line 181
    iget-object p1, p1, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {p1}, Lcom/tv/leanback/BaseGridView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateTimeForScrolling(I)I
    .locals 3

    .line 213
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object v1, v1, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v1}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tv/leanback/WindowAlignment$Axis;->getSize()I

    move-result v1

    if-lez v1, :cond_0

    const/high16 v1, 0x41f00000    # 30.0f

    .line 215
    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object v2, v2, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    .line 216
    invoke-virtual {v2}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tv/leanback/WindowAlignment$Axis;->getSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float p1, p1

    mul-float v1, v1, p1

    int-to-float p1, v0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    float-to-int v0, v1

    :cond_0
    return v0
.end method

.method protected onStop()V
    .locals 4

    .line 187
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v2

    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/tv/leanback/GridLayoutManager;->scrollToSelection(IIZI)V

    .line 194
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStop()V

    return-void

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget v2, v2, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 199
    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v3

    iput v3, v2, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    .line 201
    :cond_2
    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v2}, Lcom/tv/leanback/GridLayoutManager;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 202
    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/tv/leanback/GridLayoutManager;->mInSelection:Z

    .line 203
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 204
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iput-boolean v1, v0, Lcom/tv/leanback/GridLayoutManager;->mInSelection:Z

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->dispatchChildSelected()V

    .line 207
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-static {v0}, Lcom/tv/leanback/GridLayoutManager;->access$000(Lcom/tv/leanback/GridLayoutManager;)V

    .line 208
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStop()V

    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 2

    .line 227
    iget-object p2, p0, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    sget-object v0, Lcom/tv/leanback/GridLayoutManager;->sTwoInts:[I

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Lcom/tv/leanback/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 229
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget p1, p1, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 230
    sget-object p1, Lcom/tv/leanback/GridLayoutManager;->sTwoInts:[I

    aget p1, p1, p2

    .line 231
    sget-object p2, Lcom/tv/leanback/GridLayoutManager;->sTwoInts:[I

    aget p2, p2, v0

    goto :goto_0

    .line 233
    :cond_0
    sget-object p1, Lcom/tv/leanback/GridLayoutManager;->sTwoInts:[I

    aget p1, p1, v0

    .line 234
    sget-object v0, Lcom/tv/leanback/GridLayoutManager;->sTwoInts:[I

    aget p2, v0, p2

    :goto_0
    mul-int v0, p1, p1

    mul-int v1, p2, p2

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 236
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 237
    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v0

    .line 238
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method
