.class final Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;
.super Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tv/leanback/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PendingMoveSmoothScroller"
.end annotation


# static fields
.field static final TARGET_UNDEFINED:I = -0x2


# instance fields
.field private mPendingMoves:I

.field private final mStaggeredGrid:Z

.field final synthetic this$0:Lcom/tv/leanback/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/tv/leanback/GridLayoutManager;IZ)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;-><init>(Lcom/tv/leanback/GridLayoutManager;)V

    .line 257
    iput p2, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 258
    iput-boolean p3, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    const/4 p1, -0x2

    .line 259
    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->setTargetPosition(I)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 337
    iget p1, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-boolean p1, p1, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez p1, :cond_2

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-gez p1, :cond_2

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 342
    :goto_1
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget v0, v0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 343
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 345
    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method consumePendingMovesAfterLayout()V
    .locals 3

    .line 316
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/tv/leanback/GridLayoutManager;->processSelectionMoves(ZI)I

    move-result v0

    iput v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 320
    :cond_0
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz v0, :cond_2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    .line 321
    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget v0, v0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->setTargetPosition(I)V

    .line 323
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->stop()V

    :cond_3
    return-void
.end method

.method consumePendingMovesBeforeLayout()V
    .locals 5

    .line 280
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-nez v0, :cond_0

    goto :goto_6

    :cond_0
    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget v0, v0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget v2, v2, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    :goto_0
    add-int/2addr v0, v2

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget v0, v0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget v2, v2, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    :goto_1
    sub-int/2addr v0, v2

    .line 286
    :goto_2
    iget v2, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 288
    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_5

    .line 292
    :cond_2
    iget-object v4, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v4, v2}, Lcom/tv/leanback/GridLayoutManager;->canScrollTo(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_4

    .line 296
    :cond_3
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iput v0, v1, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    .line 297
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iput v3, v1, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    .line 298
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    .line 299
    iput v1, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 301
    iput v1, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    :goto_3
    move-object v1, v2

    .line 287
    :goto_4
    iget v2, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget v2, v2, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget v2, v2, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    goto :goto_1

    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    .line 304
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 305
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tv/leanback/GridLayoutManager;->mInSelection:Z

    .line 306
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 307
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iput-boolean v3, v0, Lcom/tv/leanback/GridLayoutManager;->mInSelection:Z

    :cond_7
    :goto_6
    return-void
.end method

.method decreasePendingMoves()V
    .locals 2

    .line 269
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    const/16 v1, -0xa

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 270
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    :cond_0
    return-void
.end method

.method increasePendingMoves()V
    .locals 2

    .line 263
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 264
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 351
    invoke-super {p0}, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->onStop()V

    const/4 v0, 0x0

    .line 353
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 354
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tv/leanback/GridLayoutManager;->mPendingMoveSmoothScroller:Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;

    .line 355
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Lcom/tv/leanback/GridLayoutManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/tv/leanback/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method protected updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 1

    .line 329
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-nez v0, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-super {p0, p1}, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;->updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    return-void
.end method
