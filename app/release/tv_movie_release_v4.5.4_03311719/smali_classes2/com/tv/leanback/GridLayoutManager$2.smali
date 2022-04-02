.class Lcom/tv/leanback/GridLayoutManager$2;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"

# interfaces
.implements Lcom/tv/leanback/Grid$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tv/leanback/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tv/leanback/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/tv/leanback/GridLayoutManager;)V
    .locals 0

    .line 1492
    iput-object p1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/Object;IIII)V
    .locals 6

    .line 1562
    check-cast p1, Landroid/view/View;

    const/high16 v0, -0x80000000

    if-eq p5, v0, :cond_0

    const v0, 0x7fffffff

    if-ne p5, v0, :cond_2

    .line 1565
    :cond_0
    iget-object p5, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object p5, p5, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {p5}, Lcom/tv/leanback/Grid;->isReversedFlow()Z

    move-result p5

    if-nez p5, :cond_1

    iget-object p5, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object p5, p5, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {p5}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object p5

    invoke-virtual {p5}, Lcom/tv/leanback/WindowAlignment$Axis;->getPaddingLow()I

    move-result p5

    goto :goto_0

    :cond_1
    iget-object p5, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object p5, p5, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    .line 1566
    invoke-virtual {p5}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object p5

    invoke-virtual {p5}, Lcom/tv/leanback/WindowAlignment$Axis;->getSize()I

    move-result p5

    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object v0, v0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    .line 1567
    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment$Axis;->getPaddingHigh()I

    move-result v0

    sub-int/2addr p5, v0

    .line 1569
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object v0, v0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v0}, Lcom/tv/leanback/Grid;->isReversedFlow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    add-int/2addr p3, p5

    move v4, p3

    move v3, p5

    goto :goto_1

    :cond_3
    sub-int p3, p5, p3

    move v3, p3

    move v4, p5

    .line 1577
    :goto_1
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {p3, p4}, Lcom/tv/leanback/GridLayoutManager;->getRowStartSecondary(I)I

    move-result p3

    iget-object p5, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget p5, p5, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int v5, p3, p5

    .line 1578
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object p3, p3, Lcom/tv/leanback/GridLayoutManager;->mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

    invoke-virtual {p3, p1, p2}, Lcom/tv/leanback/ViewsStateBundle;->loadView(Landroid/view/View;I)V

    .line 1579
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    move v1, p4

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tv/leanback/GridLayoutManager;->layoutChild(ILandroid/view/View;III)V

    .line 1585
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object p3, p3, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {p3}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result p3

    if-ne p2, p3, :cond_5

    .line 1586
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object p3, p3, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {p3}, Lcom/tv/leanback/Grid;->isReversedFlow()Z

    move-result p3

    if-nez p3, :cond_4

    .line 1587
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {p3}, Lcom/tv/leanback/GridLayoutManager;->updateScrollMin()V

    goto :goto_2

    .line 1589
    :cond_4
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {p3}, Lcom/tv/leanback/GridLayoutManager;->updateScrollMax()V

    .line 1592
    :cond_5
    :goto_2
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object p3, p3, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {p3}, Lcom/tv/leanback/Grid;->getLastVisibleIndex()I

    move-result p3

    if-ne p2, p3, :cond_7

    .line 1593
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object p3, p3, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {p3}, Lcom/tv/leanback/Grid;->isReversedFlow()Z

    move-result p3

    if-nez p3, :cond_6

    .line 1594
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {p3}, Lcom/tv/leanback/GridLayoutManager;->updateScrollMax()V

    goto :goto_3

    .line 1596
    :cond_6
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {p3}, Lcom/tv/leanback/GridLayoutManager;->updateScrollMin()V

    .line 1599
    :cond_7
    :goto_3
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-boolean p3, p3, Lcom/tv/leanback/GridLayoutManager;->mInLayout:Z

    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object p3, p3, Lcom/tv/leanback/GridLayoutManager;->mPendingMoveSmoothScroller:Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz p3, :cond_8

    .line 1600
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object p3, p3, Lcom/tv/leanback/GridLayoutManager;->mPendingMoveSmoothScroller:Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {p3}, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->consumePendingMovesAfterLayout()V

    .line 1602
    :cond_8
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object p3, p3, Lcom/tv/leanback/GridLayoutManager;->mChildLaidOutListener:Lcom/tv/leanback/OnChildLaidOutListener;

    if-eqz p3, :cond_a

    .line 1603
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object p3, p3, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {p3, p1}, Lcom/tv/leanback/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    .line 1604
    iget-object p4, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object v0, p4, Lcom/tv/leanback/GridLayoutManager;->mChildLaidOutListener:Lcom/tv/leanback/OnChildLaidOutListener;

    iget-object p4, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object v1, p4, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    if-nez p3, :cond_9

    const-wide/16 p3, -0x1

    goto :goto_4

    .line 1605
    :cond_9
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide p3

    :goto_4
    move-wide v4, p3

    move-object v2, p1

    move v3, p2

    .line 1604
    invoke-interface/range {v0 .. v5}, Lcom/tv/leanback/OnChildLaidOutListener;->onChildLaidOut(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    :cond_a
    return-void
.end method

.method public createItem(IZ[Ljava/lang/Object;)I
    .locals 5

    .line 1503
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1505
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    .line 1506
    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object v2, v2, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v2, v0}, Lcom/tv/leanback/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 1507
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    const-class v4, Lcom/tv/leanback/ItemAlignmentFacet;

    invoke-virtual {v3, v2, v4}, Lcom/tv/leanback/GridLayoutManager;->getFacet(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tv/leanback/ItemAlignmentFacet;

    invoke-virtual {v1, v2}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->setItemAlignmentFacet(Lcom/tv/leanback/ItemAlignmentFacet;)V

    .line 1509
    invoke-virtual {v1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    if-eqz p2, :cond_0

    .line 1512
    iget-object p2, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {p2, v0}, Lcom/tv/leanback/GridLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1514
    :cond_0
    iget-object p2, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {p2, v0, v2}, Lcom/tv/leanback/GridLayoutManager;->addView(Landroid/view/View;I)V

    .line 1517
    :goto_0
    iget-object p2, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget p2, p2, Lcom/tv/leanback/GridLayoutManager;->mChildVisibility:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 1518
    iget-object p2, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget p2, p2, Lcom/tv/leanback/GridLayoutManager;->mChildVisibility:I

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1521
    :cond_1
    iget-object p2, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object p2, p2, Lcom/tv/leanback/GridLayoutManager;->mPendingMoveSmoothScroller:Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz p2, :cond_2

    .line 1522
    iget-object p2, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object p2, p2, Lcom/tv/leanback/GridLayoutManager;->mPendingMoveSmoothScroller:Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {p2}, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->consumePendingMovesBeforeLayout()V

    .line 1524
    :cond_2
    iget-object p2, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/tv/leanback/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result p2

    .line 1525
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-boolean v1, v1, Lcom/tv/leanback/GridLayoutManager;->mInLayout:Z

    if-nez v1, :cond_3

    .line 1532
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget v1, v1, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget p1, p1, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    if-ne p2, p1, :cond_5

    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object p1, p1, Lcom/tv/leanback/GridLayoutManager;->mPendingMoveSmoothScroller:Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;

    if-nez p1, :cond_5

    .line 1534
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {p1}, Lcom/tv/leanback/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_1

    .line 1536
    :cond_3
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-boolean v1, v1, Lcom/tv/leanback/GridLayoutManager;->mInFastRelayout:Z

    if-nez v1, :cond_5

    .line 1542
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-boolean v1, v1, Lcom/tv/leanback/GridLayoutManager;->mInLayoutSearchFocus:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget v1, v1, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget v1, v1, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    if-ne p2, v1, :cond_4

    .line 1544
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {p1}, Lcom/tv/leanback/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_1

    .line 1545
    :cond_4
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-boolean v1, v1, Lcom/tv/leanback/GridLayoutManager;->mInLayoutSearchFocus:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget v1, v1, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-lt p1, v1, :cond_5

    .line 1546
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1547
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iput p1, v1, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    .line 1548
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iput p2, p1, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    .line 1549
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iput-boolean v2, p1, Lcom/tv/leanback/GridLayoutManager;->mInLayoutSearchFocus:Z

    .line 1550
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {p1}, Lcom/tv/leanback/GridLayoutManager;->dispatchChildSelected()V

    .line 1553
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {p1, v0}, Lcom/tv/leanback/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 1555
    :cond_6
    aput-object v0, p3, v2

    .line 1556
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget p1, p1, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {p1, v0}, Lcom/tv/leanback/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result p1

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    .line 1557
    invoke-virtual {p1, v0}, Lcom/tv/leanback/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result p1

    :goto_2
    return p1
.end method

.method public getCount()I
    .locals 1

    .line 1496
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object v0, v0, Lcom/tv/leanback/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getEdge(I)I
    .locals 1

    .line 1623
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-boolean v0, v0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result p1

    return p1

    .line 1626
    :cond_0
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getSize(I)I
    .locals 1

    .line 1632
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->getViewPrimarySize(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public removeItem(I)V
    .locals 2

    .line 1612
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    .line 1613
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-boolean v0, v0, Lcom/tv/leanback/GridLayoutManager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object v1, v0, Lcom/tv/leanback/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, v1}, Lcom/tv/leanback/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_0

    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$2;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object v1, v0, Lcom/tv/leanback/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, v1}, Lcom/tv/leanback/GridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :goto_0
    return-void
.end method
