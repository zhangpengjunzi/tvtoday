.class public final Lcom/tv/leanback/GridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tv/leanback/GridLayoutManager$SavedState;,
        Lcom/tv/leanback/GridLayoutManager$OnLayoutCompleteListener;,
        Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;,
        Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;,
        Lcom/tv/leanback/GridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MAX_PENDING_MOVES:I = 0xa

.field static final MIN_MS_SMOOTH_SCROLL_MAIN_SCREEN:I = 0x1e

.field private static final NEXT_ITEM:I = 0x1

.field private static final NEXT_ROW:I = 0x3

.field private static final PREV_ITEM:I = 0x0

.field private static final PREV_ROW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"

.field static final TRACE:Z = false

.field private static final sTempRect:Landroid/graphics/Rect;

.field static sTwoInts:[I


# instance fields
.field final mBaseGridView:Lcom/tv/leanback/BaseGridView;

.field mChildLaidOutListener:Lcom/tv/leanback/OnChildLaidOutListener;

.field private mChildSelectedListener:Lcom/tv/leanback/OnChildSelectedListener;

.field private mChildViewHolderSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tv/leanback/OnChildViewHolderSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field mChildVisibility:I

.field final mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

.field private mExtraLayoutSpace:I

.field private mFacetProviderAdapter:Lcom/tv/leanback/FacetProviderAdapter;

.field private mFixedRowSizeSecondary:I

.field private mFocusOutEnd:Z

.field private mFocusOutFront:Z

.field private mFocusOutSideEnd:Z

.field private mFocusOutSideStart:Z

.field mFocusPosition:I

.field private mFocusPositionOffset:I

.field private mFocusScrollStrategy:I

.field private mFocusSearchDisabled:Z

.field private mForceFullLayout:Z

.field private mGravity:I

.field mGrid:Lcom/tv/leanback/Grid;

.field private mGridProvider:Lcom/tv/leanback/Grid$Provider;

.field private mHorizontalSpacing:I

.field mInFastRelayout:Z

.field mInLayout:Z

.field mInLayoutSearchFocus:Z

.field private mInScroll:Z

.field mInSelection:Z

.field mIsSlidingChildViews:Z

.field private final mItemAlignment:Lcom/tv/leanback/ItemAlignment;

.field mLayoutCompleteListener:Lcom/tv/leanback/GridLayoutManager$OnLayoutCompleteListener;

.field mLayoutEatenInSliding:Z

.field private mLayoutEnabled:Z

.field private mMaxSizeSecondary:I

.field private mMeasuredDimension:[I

.field mNumRows:I

.field private mNumRowsRequested:I

.field mOrientation:I

.field private mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field mPendingMoveSmoothScroller:Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;

.field private mPrimaryScrollExtra:I

.field private mPruneChild:Z

.field mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field private final mRequestLayoutRunnable:Ljava/lang/Runnable;

.field mReverseFlowPrimary:Z

.field private mReverseFlowSecondary:Z

.field private mRowSecondarySizeRefresh:Z

.field private mRowSizeSecondary:[I

.field private mRowSizeSecondaryRequested:I

.field private mScrollEnabled:Z

.field private mScrollOffsetPrimary:I

.field mScrollOffsetSecondary:I

.field private mSizePrimary:I

.field private mSpacingPrimary:I

.field private mSpacingSecondary:I

.field mState:Landroidx/recyclerview/widget/RecyclerView$State;

.field mSubFocusPosition:I

.field private mVerticalSpacing:I

.field final mWindowAlignment:Lcom/tv/leanback/WindowAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 415
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 613
    sput-object v0, Lcom/tv/leanback/GridLayoutManager;->sTwoInts:[I

    return-void
.end method

.method public constructor <init>(Lcom/tv/leanback/BaseGridView;)V
    .locals 3

    .line 637
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    .line 409
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    .line 410
    invoke-static {p0}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 425
    iput-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mInSelection:Z

    const/4 v1, 0x0

    .line 427
    iput-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildSelectedListener:Lcom/tv/leanback/OnChildSelectedListener;

    .line 429
    iput-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 431
    iput-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildLaidOutListener:Lcom/tv/leanback/OnChildLaidOutListener;

    const/4 v1, -0x1

    .line 438
    iput v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    .line 444
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    .line 458
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    const/4 v2, 0x1

    .line 473
    iput-boolean v2, p0, Lcom/tv/leanback/GridLayoutManager;->mLayoutEnabled:Z

    .line 478
    iput v1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildVisibility:I

    const v1, 0x800033

    .line 533
    iput v1, p0, Lcom/tv/leanback/GridLayoutManager;->mGravity:I

    .line 542
    iput v2, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRowsRequested:I

    .line 552
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusScrollStrategy:I

    .line 556
    new-instance v1, Lcom/tv/leanback/WindowAlignment;

    invoke-direct {v1}, Lcom/tv/leanback/WindowAlignment;-><init>()V

    iput-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    .line 561
    new-instance v1, Lcom/tv/leanback/ItemAlignment;

    invoke-direct {v1}, Lcom/tv/leanback/ItemAlignment;-><init>()V

    iput-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mItemAlignment:Lcom/tv/leanback/ItemAlignment;

    .line 588
    iput-boolean v2, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusOutSideStart:Z

    .line 593
    iput-boolean v2, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusOutSideEnd:Z

    .line 603
    iput-boolean v2, p0, Lcom/tv/leanback/GridLayoutManager;->mPruneChild:Z

    .line 608
    iput-boolean v2, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollEnabled:Z

    .line 618
    iput-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    .line 623
    iput-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowSecondary:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 628
    iput-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mMeasuredDimension:[I

    .line 630
    new-instance v0, Lcom/tv/leanback/ViewsStateBundle;

    invoke-direct {v0}, Lcom/tv/leanback/ViewsStateBundle;-><init>()V

    iput-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

    .line 1328
    new-instance v0, Lcom/tv/leanback/GridLayoutManager$1;

    invoke-direct {v0, p0}, Lcom/tv/leanback/GridLayoutManager$1;-><init>(Lcom/tv/leanback/GridLayoutManager;)V

    iput-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 1492
    new-instance v0, Lcom/tv/leanback/GridLayoutManager$2;

    invoke-direct {v0, p0}, Lcom/tv/leanback/GridLayoutManager$2;-><init>(Lcom/tv/leanback/GridLayoutManager;)V

    iput-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGridProvider:Lcom/tv/leanback/Grid$Provider;

    .line 638
    iput-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    return-void
.end method

.method static synthetic access$000(Lcom/tv/leanback/GridLayoutManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    return-void
.end method

.method private appendOneColumnVisibleItems()Z
    .locals 1

    .line 1734
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v0}, Lcom/tv/leanback/Grid;->appendOneColumnVisibleItems()Z

    move-result v0

    return v0
.end method

.method private appendVisibleItems()V
    .locals 3

    .line 1802
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    iget-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v1, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tv/leanback/Grid;->appendVisibleItems(I)V

    return-void
.end method

.method private discardLayoutInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 3308
    iput-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    .line 3309
    iput-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mRowSizeSecondary:[I

    const/4 v0, 0x0

    .line 3310
    iput-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    return-void
.end method

.method private dispatchChildSelectedAndPositioned()V
    .locals 10

    .line 946
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->hasOnChildViewHolderSelectedListener()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 951
    :cond_0
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 953
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v1, v0}, Lcom/tv/leanback/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 954
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/tv/leanback/GridLayoutManager;->fireOnChildViewHolderSelectedAndPositioned(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    goto :goto_1

    .line 957
    :cond_2
    iget-object v4, p0, Lcom/tv/leanback/GridLayoutManager;->mChildSelectedListener:Lcom/tv/leanback/OnChildSelectedListener;

    if-eqz v4, :cond_3

    .line 958
    iget-object v5, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    invoke-interface/range {v4 .. v9}, Lcom/tv/leanback/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 960
    :cond_3
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tv/leanback/GridLayoutManager;->fireOnChildViewHolderSelectedAndPositioned(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    :goto_1
    return-void
.end method

.method private fastRelayout()V
    .locals 15

    .line 1818
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_4

    .line 1821
    invoke-virtual {p0, v3}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1822
    invoke-direct {p0, v3}, Lcom/tv/leanback/GridLayoutManager;->getPositionByIndex(I)I

    move-result v5

    .line 1823
    iget-object v6, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v6, v5}, Lcom/tv/leanback/Grid;->getLocation(I)Lcom/tv/leanback/Grid$Location;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_1
    move v2, v5

    const/4 v1, 0x1

    goto :goto_3

    .line 1830
    :cond_0
    iget v7, v6, Lcom/tv/leanback/Grid$Location;->row:I

    invoke-virtual {p0, v7}, Lcom/tv/leanback/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v7

    iget v8, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int v14, v7, v8

    .line 1832
    invoke-virtual {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v12

    .line 1833
    invoke-virtual {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->getViewPrimarySize(Landroid/view/View;)I

    move-result v7

    .line 1835
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    .line 1836
    invoke-virtual {v8}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->viewNeedsUpdate()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1837
    iget-object v8, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v8, v2}, Lcom/tv/leanback/BaseGridView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 1838
    iget-object v9, p0, Lcom/tv/leanback/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v2, v9}, Lcom/tv/leanback/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1839
    invoke-virtual {p0, v5}, Lcom/tv/leanback/GridLayoutManager;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1840
    invoke-virtual {p0, v2, v8}, Lcom/tv/leanback/GridLayoutManager;->addView(Landroid/view/View;I)V

    :cond_1
    move-object v11, v2

    .line 1843
    invoke-virtual {p0, v11}, Lcom/tv/leanback/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 1844
    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_2

    .line 1845
    invoke-virtual {p0, v11}, Lcom/tv/leanback/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v2

    goto :goto_2

    .line 1848
    :cond_2
    invoke-virtual {p0, v11}, Lcom/tv/leanback/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v2

    :goto_2
    add-int v8, v12, v2

    move v13, v8

    .line 1851
    iget v10, v6, Lcom/tv/leanback/Grid$Location;->row:I

    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/tv/leanback/GridLayoutManager;->layoutChild(ILandroid/view/View;III)V

    if-eq v7, v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_0

    :cond_4
    :goto_3
    if-eqz v1, :cond_6

    .line 1860
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v0}, Lcom/tv/leanback/Grid;->getLastVisibleIndex()I

    move-result v0

    .line 1861
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v1, v2}, Lcom/tv/leanback/Grid;->invalidateItemsAfter(I)V

    .line 1862
    iget-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mPruneChild:Z

    if-eqz v1, :cond_5

    .line 1864
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->appendVisibleItems()V

    .line 1865
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-ltz v1, :cond_6

    if-gt v1, v0, :cond_6

    .line 1868
    :goto_4
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v0}, Lcom/tv/leanback/Grid;->getLastVisibleIndex()I

    move-result v0

    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-ge v0, v1, :cond_6

    .line 1869
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v0}, Lcom/tv/leanback/Grid;->appendOneColumnVisibleItems()Z

    goto :goto_4

    .line 1874
    :cond_5
    :goto_5
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v1}, Lcom/tv/leanback/Grid;->appendOneColumnVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    .line 1875
    invoke-virtual {v1}, Lcom/tv/leanback/Grid;->getLastVisibleIndex()I

    move-result v1

    if-ge v1, v0, :cond_6

    goto :goto_5

    .line 1878
    :cond_6
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->updateScrollMin()V

    .line 1879
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->updateScrollMax()V

    .line 1880
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->updateScrollSecondAxis()V

    return-void
.end method

.method private findImmediateChildIndex(Landroid/view/View;)I
    .locals 3

    .line 2887
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    if-eqz v0, :cond_1

    if-eq p1, v0, :cond_1

    .line 2888
    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2890
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2891
    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private forceRequestLayout()V
    .locals 2

    .line 1325
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private getAdjustedPrimaryScrollPosition(ILandroid/view/View;Landroid/view/View;)I
    .locals 1

    .line 2658
    invoke-virtual {p0, p2, p3}, Lcom/tv/leanback/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result p3

    if-eqz p3, :cond_0

    .line 2660
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    .line 2661
    invoke-virtual {p2}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v0

    aget p3, v0, p3

    invoke-virtual {p2}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object p2

    const/4 v0, 0x0

    aget p2, p2, v0

    sub-int/2addr p3, p2

    add-int/2addr p1, p3

    :cond_0
    return p1
.end method

.method private getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 1

    .line 2814
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getPrimarySystemScrollPosition(Landroid/view/View;)I

    move-result v0

    if-eqz p2, :cond_0

    .line 2816
    invoke-direct {p0, v0, p1, p2}, Lcom/tv/leanback/GridLayoutManager;->getAdjustedPrimaryScrollPosition(ILandroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 2818
    :cond_0
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getSecondarySystemScrollPosition(Landroid/view/View;)I

    move-result p1

    .line 2824
    iget p2, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetPrimary:I

    sub-int/2addr v0, p2

    .line 2825
    iget p2, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int/2addr p1, p2

    .line 2826
    iget p2, p0, Lcom/tv/leanback/GridLayoutManager;->mPrimaryScrollExtra:I

    add-int/2addr v0, p2

    const/4 p2, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return p2

    .line 2828
    :cond_2
    :goto_0
    aput v0, p3, p2

    const/4 p2, 0x1

    .line 2829
    aput p1, p3, p2

    return p2
.end method

.method private getMovement(I)I
    .locals 8

    .line 3237
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    const/16 v1, 0x82

    const/16 v2, 0x42

    const/16 v3, 0x21

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x11

    if-nez v0, :cond_4

    if-eq p1, v7, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_3

    const/16 v4, 0x11

    goto :goto_1

    .line 3243
    :cond_0
    iget-boolean p1, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    xor-int/lit8 v4, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x2

    goto :goto_1

    .line 3240
    :cond_2
    iget-boolean v4, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    :cond_3
    :goto_1
    move v6, v4

    goto :goto_3

    :cond_4
    if-ne v0, v6, :cond_8

    if-eq p1, v7, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_9

    goto :goto_2

    .line 3258
    :cond_5
    iget-boolean p1, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowSecondary:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 3255
    :cond_7
    iget-boolean p1, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowSecondary:Z

    if-nez p1, :cond_3

    goto :goto_0

    :cond_8
    :goto_2
    const/16 v6, 0x11

    :cond_9
    :goto_3
    return v6
.end method

.method private getNoneAlignedPosition(Landroid/view/View;[I)Z
    .locals 12

    .line 2738
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result v0

    .line 2739
    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v1

    .line 2740
    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v2

    .line 2745
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v3}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tv/leanback/WindowAlignment$Axis;->getPaddingLow()I

    move-result v3

    .line 2746
    iget-object v4, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v4}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tv/leanback/WindowAlignment$Axis;->getClientSize()I

    move-result v4

    .line 2747
    iget-object v5, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v5, v0}, Lcom/tv/leanback/Grid;->getRowIndex(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ge v1, v3, :cond_5

    .line 2751
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusScrollStrategy:I

    if-ne v1, v8, :cond_3

    move-object v1, p1

    .line 2754
    :goto_0
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->prependOneColumnVisibleItems()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2755
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    .line 2756
    invoke-virtual {v1}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result v10

    invoke-virtual {v1, v10, v0}, Lcom/tv/leanback/Grid;->getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;

    move-result-object v1

    aget-object v1, v1, v5

    .line 2757
    invoke-virtual {v1, v7}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 2758
    invoke-virtual {p0, v10}, Lcom/tv/leanback/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v11

    sub-int v11, v2, v11

    if-le v11, v4, :cond_1

    .line 2759
    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->size()I

    move-result v0

    if-le v0, v8, :cond_0

    .line 2760
    invoke-virtual {v1, v8}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v9

    move-object v9, v0

    goto :goto_2

    :cond_0
    move-object v2, v9

    move-object v9, v10

    goto :goto_2

    :cond_1
    move-object v1, v10

    goto :goto_0

    :cond_2
    move-object v2, v9

    move-object v9, v1

    goto :goto_2

    :cond_3
    move-object v2, v9

    :cond_4
    move-object v9, p1

    goto :goto_2

    :cond_5
    add-int v10, v4, v3

    if-le v2, v10, :cond_9

    .line 2768
    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusScrollStrategy:I

    if-ne v2, v8, :cond_8

    .line 2772
    :cond_6
    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    .line 2773
    invoke-virtual {v2}, Lcom/tv/leanback/Grid;->getLastVisibleIndex()I

    move-result v8

    invoke-virtual {v2, v0, v8}, Lcom/tv/leanback/Grid;->getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;

    move-result-object v2

    aget-object v2, v2, v5

    .line 2774
    invoke-virtual {v2}, Landroidx/collection/CircularIntArray;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v2, v8}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 2775
    invoke-virtual {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v8, v1

    if-le v8, v4, :cond_7

    move-object v2, v9

    goto :goto_1

    .line 2779
    :cond_7
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v8

    if-nez v8, :cond_6

    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_8
    move-object v2, p1

    goto :goto_2

    :cond_9
    move-object v2, v9

    :goto_2
    if-eqz v9, :cond_a

    .line 2791
    invoke-virtual {p0, v9}, Lcom/tv/leanback/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v0

    :goto_3
    sub-int/2addr v0, v3

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_b

    .line 2793
    invoke-virtual {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v0

    add-int/2addr v3, v4

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    :goto_4
    if-eqz v9, :cond_c

    move-object p1, v9

    goto :goto_5

    :cond_c
    if-eqz v2, :cond_d

    move-object p1, v2

    .line 2803
    :cond_d
    :goto_5
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getSecondarySystemScrollPosition(Landroid/view/View;)I

    move-result p1

    .line 2804
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int/2addr p1, v1

    if-nez v0, :cond_f

    if-eqz p1, :cond_e

    goto :goto_6

    :cond_e
    return v7

    .line 2806
    :cond_f
    :goto_6
    aput v0, p2, v7

    .line 2807
    aput p1, p2, v6

    return v6
.end method

.method private getPositionByIndex(I)I
    .locals 0

    .line 900
    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method private getPositionByView(Landroid/view/View;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 866
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    if-eqz p1, :cond_2

    .line 867
    invoke-virtual {p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 871
    :cond_1
    invoke-virtual {p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getViewPosition()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private getPrimarySystemScrollPosition(Landroid/view/View;)I
    .locals 9

    .line 2614
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetPrimary:I

    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2615
    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v1

    .line 2616
    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v2

    .line 2619
    iget-boolean v3, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_3

    .line 2620
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v3}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2621
    :goto_0
    iget-object v6, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v6}, Lcom/tv/leanback/Grid;->getLastVisibleIndex()I

    move-result v6

    iget-object v7, p0, Lcom/tv/leanback/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    if-nez v7, :cond_1

    .line 2622
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getItemCount()I

    move-result v7

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    :goto_1
    sub-int/2addr v7, v5

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_4

    :cond_2
    const/4 v6, 0x0

    goto :goto_4

    .line 2624
    :cond_3
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v3}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 2625
    :goto_2
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v3}, Lcom/tv/leanback/Grid;->getLastVisibleIndex()I

    move-result v3

    iget-object v7, p0, Lcom/tv/leanback/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    if-nez v7, :cond_5

    .line 2626
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getItemCount()I

    move-result v7

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    :goto_3
    sub-int/2addr v7, v5

    if-ne v3, v7, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    .line 2628
    :goto_4
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_5
    if-nez v3, :cond_7

    if-eqz v6, :cond_b

    :cond_7
    if-ltz v7, :cond_b

    .line 2629
    invoke-virtual {p0, v7}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v5, p1, :cond_a

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    if-eqz v3, :cond_9

    .line 2633
    invoke-virtual {p0, v5}, Lcom/tv/leanback/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v8

    if-ge v8, v1, :cond_9

    const/4 v3, 0x0

    :cond_9
    if-eqz v6, :cond_a

    .line 2636
    invoke-virtual {p0, v5}, Lcom/tv/leanback/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v5

    if-le v5, v2, :cond_a

    const/4 v6, 0x0

    :cond_a
    :goto_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 2640
    :cond_b
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {p1}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object p1

    invoke-virtual {p1, v0, v3, v6}, Lcom/tv/leanback/WindowAlignment$Axis;->getSystemScrollPos(IZZ)I

    move-result p1

    return p1
.end method

.method private getPrimarySystemScrollPositionOfChildMax(Landroid/view/View;)I
    .locals 3

    .line 2644
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getPrimarySystemScrollPosition(Landroid/view/View;)I

    move-result v0

    .line 2645
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    .line 2646
    invoke-virtual {p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2647
    array-length v1, p1

    if-lez v1, :cond_0

    .line 2648
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget v1, p1, v1

    const/4 v2, 0x0

    aget p1, p1, v2

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private getRowSizeSecondary(I)I
    .locals 1

    .line 1166
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-eqz v0, :cond_0

    return v0

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mRowSizeSecondary:[I

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1172
    :cond_1
    aget p1, v0, p1

    return p1
.end method

.method private getSecondarySystemScrollPosition(Landroid/view/View;)I
    .locals 6

    .line 2667
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetSecondary:I

    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2668
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result p1

    .line 2669
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v1, p1}, Lcom/tv/leanback/Grid;->getLocation(I)Lcom/tv/leanback/Grid$Location;

    move-result-object p1

    .line 2670
    iget p1, p1, Lcom/tv/leanback/Grid$Location;->row:I

    .line 2672
    iget-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowSecondary:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2674
    :goto_0
    iget-object v4, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v4}, Lcom/tv/leanback/Grid;->getNumRows()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne p1, v4, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2677
    :goto_1
    iget-object v4, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v4}, Lcom/tv/leanback/Grid;->getNumRows()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne p1, v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    move v5, v2

    move v2, v1

    move v1, v5

    .line 2679
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {p1}, Lcom/tv/leanback/WindowAlignment;->secondAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tv/leanback/WindowAlignment$Axis;->getSystemScrollPos(IZZ)I

    move-result p1

    return p1
.end method

.method private getSizeSecondary()I
    .locals 2

    .line 1192
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowSecondary:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    .line 1193
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method private getViewCenter(Landroid/view/View;)I
    .locals 1

    .line 1068
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getViewCenterX(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getViewCenterY(Landroid/view/View;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private getViewCenterSecondary(Landroid/view/View;)I
    .locals 1

    .line 1072
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getViewCenterY(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getViewCenterX(Landroid/view/View;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private getViewCenterX(Landroid/view/View;)I
    .locals 1

    .line 1076
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    .line 1077
    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getOpticalLeft(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getAlignX()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method private getViewCenterY(Landroid/view/View;)I
    .locals 1

    .line 1081
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    .line 1082
    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getOpticalTop(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getAlignY()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method private gridOnRequestFocusInDescendantsAligned(Landroidx/recyclerview/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 0

    .line 3187
    iget p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3189
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private gridOnRequestFocusInDescendantsUnaligned(Landroidx/recyclerview/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 8

    .line 3204
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result p1

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v2, p1

    const/4 p1, 0x0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    const/4 v0, -0x1

    .line 3214
    :goto_0
    iget-object v4, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v4}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tv/leanback/WindowAlignment$Axis;->getPaddingLow()I

    move-result v4

    .line 3215
    iget-object v5, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v5}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tv/leanback/WindowAlignment$Axis;->getClientSize()I

    move-result v5

    add-int/2addr v5, v4

    :goto_1
    if-eq p1, v2, :cond_2

    .line 3217
    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3218
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 3219
    invoke-virtual {p0, v6}, Lcom/tv/leanback/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v7

    if-lt v7, v4, :cond_1

    invoke-virtual {p0, v6}, Lcom/tv/leanback/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v7

    if-gt v7, v5, :cond_1

    .line 3220
    invoke-virtual {v6, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v3

    :cond_1
    add-int/2addr p1, v0

    goto :goto_1

    :cond_2
    return v1
.end method

.method private initScrollController()V
    .locals 3

    .line 2327
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->reset()V

    .line 2328
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    iget-object v0, v0, Lcom/tv/leanback/WindowAlignment;->horizontal:Lcom/tv/leanback/WindowAlignment$Axis;

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tv/leanback/WindowAlignment$Axis;->setSize(I)V

    .line 2329
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    iget-object v0, v0, Lcom/tv/leanback/WindowAlignment;->vertical:Lcom/tv/leanback/WindowAlignment$Axis;

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tv/leanback/WindowAlignment$Axis;->setSize(I)V

    .line 2330
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    iget-object v0, v0, Lcom/tv/leanback/WindowAlignment;->horizontal:Lcom/tv/leanback/WindowAlignment$Axis;

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tv/leanback/WindowAlignment$Axis;->setPadding(II)V

    .line 2331
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    iget-object v0, v0, Lcom/tv/leanback/WindowAlignment;->vertical:Lcom/tv/leanback/WindowAlignment$Axis;

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tv/leanback/WindowAlignment$Axis;->setPadding(II)V

    .line 2332
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment$Axis;->getSize()I

    move-result v0

    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mSizePrimary:I

    .line 2333
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment$Axis;->getPaddingLow()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetPrimary:I

    .line 2334
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->secondAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment$Axis;->getPaddingLow()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetSecondary:I

    return-void
.end method

.method private layoutInit()Z
    .locals 6

    .line 1112
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-ltz v3, :cond_0

    .line 1113
    invoke-virtual {v0}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-lt v3, v0, :cond_0

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    .line 1114
    invoke-virtual {v3}, Lcom/tv/leanback/Grid;->getLastVisibleIndex()I

    move-result v3

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1115
    :goto_0
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_1

    .line 1117
    iput v4, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    .line 1118
    iput v2, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_1

    .line 1119
    :cond_1
    iget v5, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-lt v5, v3, :cond_2

    sub-int/2addr v3, v1

    .line 1120
    iput v3, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    .line 1121
    iput v2, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_1

    :cond_2
    if-ne v5, v4, :cond_3

    if-lez v3, :cond_3

    .line 1124
    iput v2, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    .line 1125
    iput v2, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    .line 1127
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->didStructureChange()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result v3

    if-ltz v3, :cond_5

    iget-boolean v3, p0, Lcom/tv/leanback/GridLayoutManager;->mForceFullLayout:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    .line 1128
    invoke-virtual {v3}, Lcom/tv/leanback/Grid;->getNumRows()I

    move-result v3

    iget v5, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    if-ne v3, v5, :cond_5

    .line 1129
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->updateScrollController()V

    .line 1130
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->updateScrollSecondAxis()V

    .line 1131
    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mSpacingPrimary:I

    invoke-virtual {v2, v3}, Lcom/tv/leanback/Grid;->setSpacing(I)V

    if-nez v0, :cond_4

    .line 1132
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-eq v0, v4, :cond_4

    .line 1133
    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v2, v0}, Lcom/tv/leanback/Grid;->setStart(I)V

    :cond_4
    return v1

    .line 1137
    :cond_5
    iput-boolean v2, p0, Lcom/tv/leanback/GridLayoutManager;->mForceFullLayout:Z

    if-eqz v0, :cond_6

    .line 1138
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v1}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result v1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 1140
    :goto_2
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    if-eqz v3, :cond_7

    iget v4, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    invoke-virtual {v3}, Lcom/tv/leanback/Grid;->getNumRows()I

    move-result v3

    if-ne v4, v3, :cond_7

    iget-boolean v3, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    iget-object v4, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    .line 1141
    invoke-virtual {v4}, Lcom/tv/leanback/Grid;->isReversedFlow()Z

    move-result v4

    if-eq v3, v4, :cond_8

    .line 1142
    :cond_7
    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    invoke-static {v3}, Lcom/tv/leanback/Grid;->createGrid(I)Lcom/tv/leanback/Grid;

    move-result-object v3

    iput-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    .line 1143
    iget-object v4, p0, Lcom/tv/leanback/GridLayoutManager;->mGridProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-virtual {v3, v4}, Lcom/tv/leanback/Grid;->setProvider(Lcom/tv/leanback/Grid$Provider;)V

    .line 1144
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    iget-boolean v4, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    invoke-virtual {v3, v4}, Lcom/tv/leanback/Grid;->setReversedFlow(Z)V

    .line 1146
    :cond_8
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->initScrollController()V

    .line 1147
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->updateScrollSecondAxis()V

    .line 1148
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    iget v4, p0, Lcom/tv/leanback/GridLayoutManager;->mSpacingPrimary:I

    invoke-virtual {v3, v4}, Lcom/tv/leanback/Grid;->setSpacing(I)V

    .line 1149
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v3}, Lcom/tv/leanback/GridLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1150
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v3}, Lcom/tv/leanback/Grid;->resetVisibleIndex()V

    .line 1151
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v3}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tv/leanback/WindowAlignment$Axis;->invalidateScrollMin()V

    .line 1152
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v3}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tv/leanback/WindowAlignment$Axis;->invalidateScrollMax()V

    if-eqz v0, :cond_9

    .line 1153
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-gt v1, v0, :cond_9

    .line 1155
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v0, v1}, Lcom/tv/leanback/Grid;->setStart(I)V

    goto :goto_3

    .line 1159
    :cond_9
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v0, v1}, Lcom/tv/leanback/Grid;->setStart(I)V

    :goto_3
    return v2
.end method

.method private leaveContext()V
    .locals 1

    const/4 v0, 0x0

    .line 1100
    iput-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 1101
    iput-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    return-void
.end method

.method private measureScrapChild(III[I)V
    .locals 5

    .line 1208
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1210
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    .line 1211
    sget-object v1, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/tv/leanback/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1212
    iget v1, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->leftMargin:I

    iget v2, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    sget-object v2, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    sget-object v2, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .line 1213
    iget v2, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->topMargin:I

    iget v3, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    sget-object v3, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    sget-object v3, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    .line 1216
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    iget v1, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->width:I

    .line 1215
    invoke-static {p2, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 1218
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    iget v0, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->height:I

    .line 1217
    invoke-static {p3, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 1219
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    const/4 p2, 0x0

    .line 1221
    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result p3

    aput p3, p4, p2

    const/4 p2, 0x1

    .line 1222
    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result p3

    aput p3, p4, p2

    .line 1223
    iget-object p2, p0, Lcom/tv/leanback/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private offsetChildrenPrimary(I)V
    .locals 4

    .line 2091
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 2092
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2094
    invoke-virtual {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    .line 2098
    invoke-virtual {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private offsetChildrenSecondary(I)V
    .locals 3

    .line 2078
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 2079
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2081
    invoke-virtual {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    .line 2085
    invoke-virtual {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private prependOneColumnVisibleItems()Z
    .locals 1

    .line 1798
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v0}, Lcom/tv/leanback/Grid;->prependOneColumnVisibleItems()Z

    move-result v0

    return v0
.end method

.method private prependVisibleItems()V
    .locals 3

    .line 1807
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    iget-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tv/leanback/Grid;->prependVisibleItems(I)V

    return-void
.end method

.method private processPendingMovement(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 2480
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 2483
    :cond_1
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mPendingMoveSmoothScroller:Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;

    if-nez v0, :cond_4

    .line 2485
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v0}, Lcom/tv/leanback/BaseGridView;->stopScroll()V

    .line 2486
    new-instance v0, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    const/4 v3, 0x0

    if-le v2, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-direct {v0, p0, p1, v1}, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;-><init>(Lcom/tv/leanback/GridLayoutManager;IZ)V

    .line 2488
    iput v3, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    .line 2489
    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 2490
    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2491
    iput-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mPendingMoveSmoothScroller:Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    .line 2495
    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->increasePendingMoves()V

    goto :goto_3

    .line 2497
    :cond_5
    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;->decreasePendingMoves()V

    :cond_6
    :goto_3
    return-void
.end method

.method private processRowSizeSecondary(Z)Z
    .locals 16

    move-object/from16 v0, p0

    .line 1228
    iget v1, v0, Lcom/tv/leanback/GridLayoutManager;->mFixedRowSizeSecondary:I

    const/4 v2, 0x0

    if-nez v1, :cond_12

    iget-object v1, v0, Lcom/tv/leanback/GridLayoutManager;->mRowSizeSecondary:[I

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 1233
    :cond_0
    iget-object v1, v0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/tv/leanback/Grid;->getItemPositionsInRows()[Landroidx/collection/CircularIntArray;

    move-result-object v1

    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    .line 1238
    :goto_1
    iget v9, v0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    if-ge v5, v9, :cond_11

    if-nez v1, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    .line 1239
    :cond_2
    aget-object v9, v1, v5

    :goto_2
    if-nez v9, :cond_3

    const/4 v10, 0x0

    goto :goto_3

    .line 1240
    :cond_3
    invoke-virtual {v9}, Landroidx/collection/CircularIntArray;->size()I

    move-result v10

    :goto_3
    const/4 v11, 0x0

    const/4 v12, -0x1

    :goto_4
    if-ge v11, v10, :cond_9

    .line 1244
    invoke-virtual {v9, v11}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v13

    add-int/lit8 v14, v11, 0x1

    .line 1245
    invoke-virtual {v9, v14}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v14

    :goto_5
    if-gt v13, v14, :cond_8

    .line 1247
    invoke-virtual {v0, v13}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_4

    goto :goto_7

    :cond_4
    if-eqz p1, :cond_5

    .line 1252
    invoke-virtual {v0, v15}, Lcom/tv/leanback/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 1254
    :cond_5
    iget v3, v0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_6

    .line 1255
    invoke-virtual {v0, v15}, Lcom/tv/leanback/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v3

    goto :goto_6

    .line 1256
    :cond_6
    invoke-virtual {v0, v15}, Lcom/tv/leanback/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v3

    :goto_6
    if-le v3, v12, :cond_7

    move v12, v3

    :cond_7
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v11, v11, 0x2

    goto :goto_4

    .line 1263
    :cond_9
    iget-object v3, v0, Lcom/tv/leanback/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    .line 1264
    iget-object v9, v0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v9}, Lcom/tv/leanback/BaseGridView;->hasFixedSize()Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_e

    if-eqz p1, :cond_e

    if-gez v12, :cond_e

    if-lez v3, :cond_e

    if-gez v7, :cond_c

    if-gez v8, :cond_c

    .line 1267
    iget v7, v0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-ne v7, v4, :cond_a

    const/4 v7, 0x0

    goto :goto_8

    :cond_a
    if-lt v7, v3, :cond_b

    add-int/lit8 v7, v3, -0x1

    .line 1275
    :cond_b
    :goto_8
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1276
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v9, v0, Lcom/tv/leanback/GridLayoutManager;->mMeasuredDimension:[I

    .line 1274
    invoke-direct {v0, v7, v3, v8, v9}, Lcom/tv/leanback/GridLayoutManager;->measureScrapChild(III[I)V

    .line 1278
    iget-object v3, v0, Lcom/tv/leanback/GridLayoutManager;->mMeasuredDimension:[I

    aget v7, v3, v2

    .line 1279
    aget v3, v3, v10

    move v8, v3

    .line 1285
    :cond_c
    iget v3, v0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_d

    move v12, v8

    goto :goto_9

    :cond_d
    move v12, v7

    :cond_e
    :goto_9
    if-gez v12, :cond_f

    const/4 v12, 0x0

    .line 1290
    :cond_f
    iget-object v3, v0, Lcom/tv/leanback/GridLayoutManager;->mRowSizeSecondary:[I

    aget v9, v3, v5

    if-eq v9, v12, :cond_10

    .line 1295
    aput v12, v3, v5

    const/4 v6, 0x1

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_11
    return v6

    :cond_12
    :goto_a
    return v2
.end method

.method private removeInvisibleViewsAtEnd()V
    .locals 4

    .line 1720
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mPruneChild:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mIsSlidingChildViews:Z

    if-nez v0, :cond_1

    .line 1721
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    iget-boolean v2, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v2, v2

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/tv/leanback/Grid;->removeInvisibleItemsAtEnd(II)V

    :cond_1
    return-void
.end method

.method private removeInvisibleViewsAtFront()V
    .locals 4

    .line 1727
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mPruneChild:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mIsSlidingChildViews:Z

    if-nez v0, :cond_1

    .line 1728
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    iget-boolean v2, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v2, v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/tv/leanback/Grid;->removeInvisibleItemsAtFront(II)V

    :cond_1
    return-void
.end method

.method private saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1089
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "GridLayoutManager"

    const-string v1, "Recycler information was not released, bug!"

    .line 1090
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_1
    iput-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 1093
    iput-object p2, p0, Lcom/tv/leanback/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    return-void
.end method

.method private scrollDirectionPrimary(I)I
    .locals 5

    .line 2146
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mIsSlidingChildViews:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    .line 2148
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2150
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment$Axis;->getMaxScroll()I

    move-result v0

    .line 2151
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetPrimary:I

    add-int v2, v1, p1

    if-le v2, v0, :cond_1

    :goto_0
    sub-int p1, v0, v1

    goto :goto_1

    :cond_0
    if-gez p1, :cond_1

    .line 2156
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2158
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment$Axis;->getMinScroll()I

    move-result v0

    .line 2159
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetPrimary:I

    add-int v2, v1, p1

    if-ge v2, v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    return v0

    :cond_2
    neg-int v1, p1

    .line 2169
    invoke-direct {p0, v1}, Lcom/tv/leanback/GridLayoutManager;->offsetChildrenPrimary(I)V

    .line 2170
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetPrimary:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetPrimary:I

    .line 2171
    iget-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mInLayout:Z

    if-eqz v1, :cond_3

    return p1

    .line 2176
    :cond_3
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v1

    .line 2179
    iget-boolean v2, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v2, :cond_4

    if-lez p1, :cond_5

    goto :goto_2

    :cond_4
    if-gez p1, :cond_5

    .line 2180
    :goto_2
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->prependVisibleItems()V

    goto :goto_3

    .line 2182
    :cond_5
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->appendVisibleItems()V

    .line 2184
    :goto_3
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 2185
    :goto_4
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v2

    .line 2188
    iget-boolean v4, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v4, :cond_7

    if-lez p1, :cond_8

    goto :goto_5

    :cond_7
    if-gez p1, :cond_8

    .line 2189
    :goto_5
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    goto :goto_6

    .line 2191
    :cond_8
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->removeInvisibleViewsAtFront()V

    .line 2194
    :goto_6
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v4

    if-ge v4, v2, :cond_9

    const/4 v0, 0x1

    :cond_9
    or-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 2196
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    .line 2199
    :cond_a
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v0}, Lcom/tv/leanback/BaseGridView;->invalidate()V

    return p1
.end method

.method private scrollDirectionSecondary(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    neg-int v0, p1

    .line 2209
    invoke-direct {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->offsetChildrenSecondary(I)V

    .line 2210
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetSecondary:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetSecondary:I

    .line 2211
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v0}, Lcom/tv/leanback/BaseGridView;->invalidate()V

    return p1
.end method

.method private scrollGrid(IIZ)V
    .locals 2

    .line 2836
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 2837
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->scrollDirectionPrimary(I)I

    .line 2838
    invoke-direct {p0, p2}, Lcom/tv/leanback/GridLayoutManager;->scrollDirectionSecondary(I)I

    goto :goto_1

    .line 2842
    :cond_0
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p2

    move p2, p1

    move p1, v1

    :goto_0
    if-eqz p3, :cond_2

    .line 2850
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {p3, p1, p2}, Lcom/tv/leanback/BaseGridView;->smoothScrollBy(II)V

    goto :goto_1

    .line 2852
    :cond_2
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {p3, p1, p2}, Lcom/tv/leanback/BaseGridView;->scrollBy(II)V

    .line 2853
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    :goto_1
    return-void
.end method

.method private scrollToFocusViewInLayout(ZZ)V
    .locals 4

    .line 1896
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1898
    invoke-virtual {p0, v0, v1}, Lcom/tv/leanback/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1900
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1901
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_1
    if-nez p1, :cond_5

    .line 1902
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {p1}, Lcom/tv/leanback/BaseGridView;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v0, :cond_2

    .line 1903
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1904
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {p1, v0}, Lcom/tv/leanback/BaseGridView;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_2

    .line 1906
    :cond_2
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_4

    .line 1907
    invoke-virtual {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1908
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1909
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {p1, v0}, Lcom/tv/leanback/BaseGridView;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    .line 1914
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1915
    invoke-virtual {p0, v0, v1}, Lcom/tv/leanback/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method private scrollToView(Landroid/view/View;Landroid/view/View;Z)V
    .locals 4

    .line 2693
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mIsSlidingChildViews:Z

    if-eqz v0, :cond_0

    return-void

    .line 2696
    :cond_0
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result v0

    .line 2697
    invoke-virtual {p0, p1, p2}, Lcom/tv/leanback/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    .line 2698
    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    if-eq v1, v2, :cond_3

    .line 2699
    :cond_1
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    .line 2700
    iput v1, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    .line 2701
    iput v3, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    .line 2702
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mInLayout:Z

    if-nez v0, :cond_2

    .line 2703
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->dispatchChildSelected()V

    .line 2705
    :cond_2
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v0}, Lcom/tv/leanback/BaseGridView;->isChildrenDrawingOrderEnabledInternal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2706
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v0}, Lcom/tv/leanback/BaseGridView;->invalidate()V

    :cond_3
    if-nez p1, :cond_4

    return-void

    .line 2712
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v0}, Lcom/tv/leanback/BaseGridView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "GridLayoutManager"

    const-string v1, "view---------------1"

    .line 2715
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2718
    :cond_5
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollEnabled:Z

    if-nez v0, :cond_6

    if-eqz p3, :cond_6

    return-void

    .line 2721
    :cond_6
    sget-object v0, Lcom/tv/leanback/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/tv/leanback/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2722
    sget-object p1, Lcom/tv/leanback/GridLayoutManager;->sTwoInts:[I

    aget p2, p1, v3

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-direct {p0, p2, p1, p3}, Lcom/tv/leanback/GridLayoutManager;->scrollGrid(IIZ)V

    :cond_7
    return-void
.end method

.method private updateChildAlignments()V
    .locals 3

    .line 1700
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1701
    invoke-virtual {p0, v1}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->updateChildAlignments(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateChildAlignments(Landroid/view/View;)V
    .locals 2

    .line 1683
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    .line 1684
    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getItemAlignmentFacet()Lcom/tv/leanback/ItemAlignmentFacet;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1686
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mItemAlignment:Lcom/tv/leanback/ItemAlignment;

    iget-object v1, v1, Lcom/tv/leanback/ItemAlignment;->horizontal:Lcom/tv/leanback/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Lcom/tv/leanback/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->setAlignX(I)V

    .line 1687
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mItemAlignment:Lcom/tv/leanback/ItemAlignment;

    iget-object v1, v1, Lcom/tv/leanback/ItemAlignment;->vertical:Lcom/tv/leanback/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Lcom/tv/leanback/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->setAlignY(I)V

    goto :goto_0

    .line 1690
    :cond_0
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->calculateItemAlignments(ILandroid/view/View;)V

    .line 1691
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_1

    .line 1692
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mItemAlignment:Lcom/tv/leanback/ItemAlignment;

    iget-object v1, v1, Lcom/tv/leanback/ItemAlignment;->vertical:Lcom/tv/leanback/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Lcom/tv/leanback/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->setAlignY(I)V

    goto :goto_0

    .line 1694
    :cond_1
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mItemAlignment:Lcom/tv/leanback/ItemAlignment;

    iget-object v1, v1, Lcom/tv/leanback/ItemAlignment;->horizontal:Lcom/tv/leanback/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Lcom/tv/leanback/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->setAlignX(I)V

    :goto_0
    return-void
.end method

.method private updateRowSecondarySizeRefresh()V
    .locals 1

    const/4 v0, 0x0

    .line 1308
    invoke-direct {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->processRowSizeSecondary(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    if-eqz v0, :cond_0

    .line 1311
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->forceRequestLayout()V

    :cond_0
    return-void
.end method

.method private updateScrollController()V
    .locals 3

    .line 2350
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 2351
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    iget-object v1, v1, Lcom/tv/leanback/WindowAlignment;->horizontal:Lcom/tv/leanback/WindowAlignment$Axis;

    invoke-virtual {v1}, Lcom/tv/leanback/WindowAlignment$Axis;->getPaddingLow()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2352
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    iget-object v2, v2, Lcom/tv/leanback/WindowAlignment;->vertical:Lcom/tv/leanback/WindowAlignment$Axis;

    invoke-virtual {v2}, Lcom/tv/leanback/WindowAlignment$Axis;->getPaddingLow()I

    move-result v2

    goto :goto_0

    .line 2354
    :cond_0
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    iget-object v1, v1, Lcom/tv/leanback/WindowAlignment;->vertical:Lcom/tv/leanback/WindowAlignment$Axis;

    invoke-virtual {v1}, Lcom/tv/leanback/WindowAlignment$Axis;->getPaddingLow()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2355
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    iget-object v2, v2, Lcom/tv/leanback/WindowAlignment;->horizontal:Lcom/tv/leanback/WindowAlignment$Axis;

    invoke-virtual {v2}, Lcom/tv/leanback/WindowAlignment$Axis;->getPaddingLow()I

    move-result v2

    :goto_0
    sub-int/2addr v1, v2

    .line 2357
    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetPrimary:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetPrimary:I

    .line 2358
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetSecondary:I

    .line 2360
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    iget-object v0, v0, Lcom/tv/leanback/WindowAlignment;->horizontal:Lcom/tv/leanback/WindowAlignment$Axis;

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tv/leanback/WindowAlignment$Axis;->setSize(I)V

    .line 2361
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    iget-object v0, v0, Lcom/tv/leanback/WindowAlignment;->vertical:Lcom/tv/leanback/WindowAlignment$Axis;

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tv/leanback/WindowAlignment$Axis;->setSize(I)V

    .line 2362
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    iget-object v0, v0, Lcom/tv/leanback/WindowAlignment;->horizontal:Lcom/tv/leanback/WindowAlignment$Axis;

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tv/leanback/WindowAlignment$Axis;->setPadding(II)V

    .line 2363
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    iget-object v0, v0, Lcom/tv/leanback/WindowAlignment;->vertical:Lcom/tv/leanback/WindowAlignment$Axis;

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tv/leanback/WindowAlignment$Axis;->setPadding(II)V

    .line 2364
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment$Axis;->getSize()I

    move-result v0

    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mSizePrimary:I

    return-void
.end method

.method private updateScrollSecondAxis()V
    .locals 2

    .line 2322
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->secondAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tv/leanback/WindowAlignment$Axis;->setMinEdge(I)V

    .line 2323
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->secondAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->getSizeSecondary()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tv/leanback/WindowAlignment$Axis;->setMaxEdge(I)V

    return-void
.end method


# virtual methods
.method public addOnChildViewHolderSelectedListener(Lcom/tv/leanback/OnChildViewHolderSelectedListener;)V
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 819
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .line 970
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method canScrollTo(Landroid/view/View;)Z
    .locals 1

    .line 3168
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 977
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 1

    const/4 v0, 0x0

    .line 2219
    :try_start_0
    invoke-direct {p0, v0, p3}, Lcom/tv/leanback/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2220
    iget p3, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 2221
    :goto_0
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    if-gez p1, :cond_2

    .line 2226
    iget p2, p0, Lcom/tv/leanback/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int p2, p2

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/tv/leanback/GridLayoutManager;->mSizePrimary:I

    iget p3, p0, Lcom/tv/leanback/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr p2, p3

    .line 2229
    :goto_1
    iget-object p3, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {p3, p2, p1, p4}, Lcom/tv/leanback/Grid;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2231
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->leaveContext()V

    return-void

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->leaveContext()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->leaveContext()V

    .line 2232
    throw p1
.end method

.method public collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5

    .line 2238
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    iget v0, v0, Lcom/tv/leanback/BaseGridView;->mInitialPrefetchItemCount:I

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 2241
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v3, v1

    :goto_0
    if-ge v3, p1, :cond_0

    add-int v4, v1, v0

    if-ge v3, v4, :cond_0

    .line 2244
    invoke-interface {p2, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dispatchChildSelected()V
    .locals 11

    .line 904
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mChildSelectedListener:Lcom/tv/leanback/OnChildSelectedListener;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->hasOnChildViewHolderSelectedListener()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 909
    :cond_0
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v5, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    :goto_0
    const/4 v0, 0x0

    if-eqz v5, :cond_4

    .line 911
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v1, v5}, Lcom/tv/leanback/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 912
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mChildSelectedListener:Lcom/tv/leanback/OnChildSelectedListener;

    if-eqz v3, :cond_3

    .line 913
    iget-object v4, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    iget v6, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-nez v1, :cond_2

    const-wide/16 v7, -0x1

    goto :goto_1

    .line 914
    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v7

    .line 913
    :goto_1
    invoke-interface/range {v3 .. v8}, Lcom/tv/leanback/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 916
    :cond_3
    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    iget v4, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/tv/leanback/GridLayoutManager;->fireOnChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    goto :goto_2

    .line 918
    :cond_4
    iget-object v5, p0, Lcom/tv/leanback/GridLayoutManager;->mChildSelectedListener:Lcom/tv/leanback/OnChildSelectedListener;

    if-eqz v5, :cond_5

    .line 919
    iget-object v6, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-wide/16 v9, -0x1

    invoke-interface/range {v5 .. v10}, Lcom/tv/leanback/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 921
    :cond_5
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/tv/leanback/GridLayoutManager;->fireOnChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    .line 934
    :goto_2
    iget-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mInLayout:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v1}, Lcom/tv/leanback/BaseGridView;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_7

    .line 935
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_7

    .line 937
    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 938
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->forceRequestLayout()V

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method fireOnChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 841
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 842
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tv/leanback/OnChildViewHolderSelectedListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/tv/leanback/OnChildViewHolderSelectedListener;->onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method fireOnChildViewHolderSelectedAndPositioned(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 2

    .line 849
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 852
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 853
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tv/leanback/OnChildViewHolderSelectedListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/tv/leanback/OnChildViewHolderSelectedListener;->onChildViewHolderSelectedAndPositioned(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 982
    new-instance v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 988
    new-instance v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 993
    instance-of v0, p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 994
    new-instance v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    check-cast p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;-><init>(Lcom/tv/leanback/GridLayoutManager$LayoutParams;)V

    return-object v0

    .line 995
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_1

    .line 996
    new-instance v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-object v0

    .line 997
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 998
    new-instance v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1000
    :cond_2
    new-instance v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getChildDrawingOrder(Landroidx/recyclerview/widget/RecyclerView;II)I
    .locals 1

    .line 3273
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return p3

    .line 3277
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ge p3, p1, :cond_1

    return p3

    :cond_1
    add-int/lit8 v0, p2, -0x1

    if-ge p3, v0, :cond_2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p1, p3

    :cond_2
    return p1
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 3422
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    if-eqz v0, :cond_0

    .line 3423
    invoke-virtual {v0}, Lcom/tv/leanback/Grid;->getNumRows()I

    move-result p1

    return p1

    .line 3425
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 1

    .line 1041
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    iget p1, p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 1046
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1047
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    .line 1048
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1049
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 1050
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1051
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 1

    .line 1026
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    iget p1, p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v0, p1

    return v0
.end method

.method getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I
    .locals 2

    .line 1202
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    .line 1203
    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I
    .locals 2

    .line 1197
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    .line 1198
    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 1

    .line 1036
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    iget p1, p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 1

    .line 1031
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    iget p1, p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v0, p1

    return v0
.end method

.method getExtraLayoutSpace()I
    .locals 1

    .line 1716
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mExtraLayoutSpace:I

    return v0
.end method

.method getFacet(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/lang/Class<",
            "+TE;>;)TE;"
        }
    .end annotation

    .line 1480
    instance-of v0, p1, Lcom/tv/leanback/FacetProvider;

    if-eqz v0, :cond_0

    .line 1481
    move-object v0, p1

    check-cast v0, Lcom/tv/leanback/FacetProvider;

    invoke-interface {v0, p2}, Lcom/tv/leanback/FacetProvider;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1483
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFacetProviderAdapter:Lcom/tv/leanback/FacetProviderAdapter;

    if-eqz v1, :cond_1

    .line 1484
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/tv/leanback/FacetProviderAdapter;->getFacetProvider(I)Lcom/tv/leanback/FacetProvider;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1486
    invoke-interface {p1, p2}, Lcom/tv/leanback/FacetProvider;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getFocusScrollStrategy()I
    .locals 1

    .line 670
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusScrollStrategy:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .line 789
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mHorizontalSpacing:I

    return v0
.end method

.method public getItemAlignmentOffset()I
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mItemAlignment:Lcom/tv/leanback/ItemAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/ItemAlignment;->mainAxis()Lcom/tv/leanback/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/ItemAlignment$Axis;->getItemAlignmentOffset()I

    move-result v0

    return v0
.end method

.method public getItemAlignmentOffsetPercent()F
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mItemAlignment:Lcom/tv/leanback/ItemAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/ItemAlignment;->mainAxis()Lcom/tv/leanback/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/ItemAlignment$Axis;->getItemAlignmentOffsetPercent()F

    move-result v0

    return v0
.end method

.method public getItemAlignmentViewId()I
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mItemAlignment:Lcom/tv/leanback/ItemAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/ItemAlignment;->mainAxis()Lcom/tv/leanback/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/ItemAlignment$Axis;->getItemAlignmentViewId()I

    move-result v0

    return v0
.end method

.method final getOpticalBottom(Landroid/view/View;)I
    .locals 1

    .line 1021
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getOpticalBottom(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method final getOpticalLeft(Landroid/view/View;)I
    .locals 1

    .line 1009
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getOpticalLeft(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method final getOpticalRight(Landroid/view/View;)I
    .locals 1

    .line 1013
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getOpticalRight(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method final getOpticalTop(Landroid/view/View;)I
    .locals 1

    .line 1017
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getOpticalTop(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getPruneChild()Z
    .locals 1

    .line 2868
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mPruneChild:Z

    return v0
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 3413
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    if-eqz v0, :cond_0

    .line 3414
    invoke-virtual {v0}, Lcom/tv/leanback/Grid;->getNumRows()I

    move-result p1

    return p1

    .line 3416
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method getRowStartSecondary(I)I
    .locals 4

    .line 1179
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowSecondary:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1180
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, p1, :cond_2

    .line 1181
    invoke-direct {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 1185
    invoke-direct {p0, v1}, Lcom/tv/leanback/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method getScrollOffsetX()I
    .locals 1

    .line 2596
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetPrimary:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetSecondary:I

    :goto_0
    return v0
.end method

.method getScrollOffsetY()I
    .locals 1

    .line 2600
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetSecondary:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetPrimary:I

    :goto_0
    return v0
.end method

.method getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 2

    .line 2727
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusScrollStrategy:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2730
    invoke-direct {p0, p1, p2, p3}, Lcom/tv/leanback/GridLayoutManager;->getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result p1

    return p1

    .line 2733
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/tv/leanback/GridLayoutManager;->getNoneAlignedPosition(Landroid/view/View;[I)Z

    move-result p1

    return p1
.end method

.method public getSelection()I
    .locals 1

    .line 2402
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    return v0
.end method

.method getSubPositionByView(Landroid/view/View;Landroid/view/View;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 878
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    .line 879
    invoke-virtual {v1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getItemAlignmentFacet()Lcom/tv/leanback/ItemAlignmentFacet;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 881
    invoke-virtual {v1}, Lcom/tv/leanback/ItemAlignmentFacet;->getAlignmentDefs()[Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;

    move-result-object v1

    .line 882
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    :goto_0
    if-eq p2, p1, :cond_3

    .line 884
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x1

    .line 886
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 887
    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->getItemAlignmentFocusViewId()I

    move-result v5

    if-ne v5, v2, :cond_1

    return v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 892
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method public getSubSelection()I
    .locals 1

    .line 2406
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    return v0
.end method

.method getTag()Ljava/lang/String;
    .locals 2

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridLayoutManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v1}, Lcom/tv/leanback/BaseGridView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .line 785
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mVerticalSpacing:I

    return v0
.end method

.method protected getViewForPosition(I)Landroid/view/View;
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method getViewMax(Landroid/view/View;)I
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method getViewMin(Landroid/view/View;)I
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method getViewPrimarySize(Landroid/view/View;)I
    .locals 1

    .line 1063
    sget-object v0, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/tv/leanback/GridLayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1064
    iget p1, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez p1, :cond_0

    sget-object p1, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getViewSelectedOffsets(Landroid/view/View;[I)V
    .locals 4

    .line 2604
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2605
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getPrimarySystemScrollPosition(Landroid/view/View;)I

    move-result v0

    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetPrimary:I

    sub-int/2addr v0, v3

    aput v0, p2, v1

    .line 2606
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getSecondarySystemScrollPosition(Landroid/view/View;)I

    move-result p1

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int/2addr p1, v0

    aput p1, p2, v2

    goto :goto_0

    .line 2608
    :cond_0
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getPrimarySystemScrollPosition(Landroid/view/View;)I

    move-result v0

    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetPrimary:I

    sub-int/2addr v0, v3

    aput v0, p2, v2

    .line 2609
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getSecondarySystemScrollPosition(Landroid/view/View;)I

    move-result p1

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int/2addr p1, v0

    aput p1, p2, v1

    :goto_0
    return-void
.end method

.method public getWindowAlignment()I
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment$Axis;->getWindowAlignment()I

    move-result v0

    return v0
.end method

.method public getWindowAlignmentOffset()I
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment$Axis;->getWindowAlignmentOffset()I

    move-result v0

    return v0
.end method

.method public getWindowAlignmentOffsetPercent()F
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment$Axis;->getWindowAlignmentOffsetPercent()F

    move-result v0

    return v0
.end method

.method gridOnRequestFocusInDescendants(Landroidx/recyclerview/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 2

    .line 3173
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusScrollStrategy:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3176
    invoke-direct {p0, p1, p2, p3}, Lcom/tv/leanback/GridLayoutManager;->gridOnRequestFocusInDescendantsAligned(Landroidx/recyclerview/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 3180
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tv/leanback/GridLayoutManager;->gridOnRequestFocusInDescendantsUnaligned(Landroidx/recyclerview/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method hasCreatedFirstItem()Z
    .locals 2

    .line 3163
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3164
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v0, v1}, Lcom/tv/leanback/BaseGridView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method hasCreatedLastItem()Z
    .locals 3

    .line 3158
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3159
    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/tv/leanback/BaseGridView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected hasDoneFirstLayout()Z
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasOnChildViewHolderSelectedListener()Z
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasPreviousViewInSameRow(I)Z
    .locals 6

    .line 2999
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    invoke-virtual {v0}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 3002
    :cond_0
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v0}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    return v2

    .line 3005
    :cond_1
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/Grid;->getLocation(I)Lcom/tv/leanback/Grid$Location;

    move-result-object v0

    iget v0, v0, Lcom/tv/leanback/Grid$Location;->row:I

    .line 3006
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_0
    if-ltz v3, :cond_3

    .line 3007
    invoke-direct {p0, v3}, Lcom/tv/leanback/GridLayoutManager;->getPositionByIndex(I)I

    move-result v4

    .line 3008
    iget-object v5, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v5, v4}, Lcom/tv/leanback/Grid;->getLocation(I)Lcom/tv/leanback/Grid$Location;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3009
    iget v5, v5, Lcom/tv/leanback/Grid$Location;->row:I

    if-ne v5, v0, :cond_2

    if-ge v4, p1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method isFocusSearchDisabled()Z
    .locals 1

    .line 2922
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusSearchDisabled:Z

    return v0
.end method

.method public isItemAlignmentOffsetWithPadding()Z
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mItemAlignment:Lcom/tv/leanback/ItemAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/ItemAlignment;->mainAxis()Lcom/tv/leanback/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/ItemAlignment$Axis;->isItemAlignmentOffsetWithPadding()Z

    move-result v0

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .line 2883
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollEnabled:Z

    return v0
.end method

.method layoutChild(ILandroid/view/View;III)V
    .locals 9

    .line 1638
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/tv/leanback/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 1639
    :cond_0
    invoke-virtual {p0, p2}, Lcom/tv/leanback/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v0

    .line 1640
    :goto_0
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-lez v1, :cond_1

    .line 1641
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1643
    :cond_1
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mGravity:I

    and-int/lit8 v2, v1, 0x70

    .line 1644
    iget-boolean v3, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    const/4 v4, 0x1

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowSecondary:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v1, 0x7

    goto :goto_2

    :cond_3
    :goto_1
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mGravity:I

    const v3, 0x800007

    and-int/2addr v1, v3

    .line 1645
    invoke-static {v1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    .line 1648
    :goto_2
    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_4

    const/16 v3, 0x30

    if-eq v2, v3, :cond_b

    :cond_4
    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-ne v3, v4, :cond_5

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    goto :goto_4

    .line 1651
    :cond_5
    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_6

    const/16 v3, 0x50

    if-eq v2, v3, :cond_7

    :cond_6
    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-ne v3, v4, :cond_8

    const/4 v3, 0x5

    if-ne v1, v3, :cond_8

    .line 1653
    :cond_7
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result p1

    sub-int/2addr p1, v0

    :goto_3
    add-int/2addr p5, p1

    goto :goto_4

    .line 1654
    :cond_8
    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_9

    const/16 v3, 0x10

    if-eq v2, v3, :cond_a

    :cond_9
    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-ne v2, v4, :cond_b

    if-ne v1, v4, :cond_b

    .line 1656
    :cond_a
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    goto :goto_3

    .line 1659
    :cond_b
    :goto_4
    iget p1, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez p1, :cond_c

    add-int/2addr v0, p5

    goto :goto_5

    :cond_c
    add-int/2addr v0, p5

    move v7, p5

    move p5, p3

    move p3, v7

    move v8, v0

    move v0, p4

    move p4, v8

    .line 1670
    :goto_5
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p5

    move v5, p4

    move v6, v0

    .line 1671
    invoke-virtual/range {v1 .. v6}, Lcom/tv/leanback/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1675
    sget-object v1, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-super {p0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1676
    sget-object v1, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, v1

    sget-object v1, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, v1

    sget-object v1, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p4

    sget-object p4, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v0

    invoke-virtual {p1, p3, p5, v1, p4}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->setOpticalInsets(IIII)V

    .line 1678
    invoke-direct {p0, p2}, Lcom/tv/leanback/GridLayoutManager;->updateChildAlignments(Landroid/view/View;)V

    return-void
.end method

.method measureChild(Landroid/view/View;)V
    .locals 6

    .line 1443
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    .line 1444
    sget-object v1, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/tv/leanback/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1445
    iget v1, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->leftMargin:I

    iget v2, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    sget-object v2, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    sget-object v2, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .line 1446
    iget v2, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->topMargin:I

    iget v3, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    sget-object v3, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    sget-object v3, Lcom/tv/leanback/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    .line 1448
    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v4, 0x0

    const/4 v5, -0x2

    if-ne v3, v5, :cond_0

    .line 1450
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mFixedRowSizeSecondary:I

    const/high16 v5, 0x40000000    # 2.0f

    .line 1451
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1454
    :goto_0
    iget v5, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v5, :cond_1

    .line 1456
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->width:I

    .line 1455
    invoke-static {v4, v1, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1457
    iget v0, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v3, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    goto :goto_1

    .line 1460
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->height:I

    .line 1459
    invoke-static {v4, v2, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1461
    iget v0, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v3, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    move v0, v2

    .line 1463
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3294
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->discardLayoutInfo()V

    const/4 v0, -0x1

    .line 3295
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    const/4 v0, 0x0

    .line 3296
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    .line 3297
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

    invoke-virtual {v0}, Lcom/tv/leanback/ViewsStateBundle;->clear()V

    .line 3299
    :cond_0
    instance-of v0, p2, Lcom/tv/leanback/FacetProviderAdapter;

    if-eqz v0, :cond_1

    .line 3300
    move-object v0, p2

    check-cast v0, Lcom/tv/leanback/FacetProviderAdapter;

    iput-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFacetProviderAdapter:Lcom/tv/leanback/FacetProviderAdapter;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3302
    iput-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFacetProviderAdapter:Lcom/tv/leanback/FacetProviderAdapter;

    .line 3304
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 3021
    iget-boolean v4, v0, Lcom/tv/leanback/GridLayoutManager;->mFocusSearchDisabled:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    return v5

    .line 3031
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->hasFocus()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_19

    .line 3032
    iget-object v4, v0, Lcom/tv/leanback/GridLayoutManager;->mPendingMoveSmoothScroller:Lcom/tv/leanback/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v4, :cond_1

    return v5

    .line 3036
    :cond_1
    invoke-direct {v0, v2}, Lcom/tv/leanback/GridLayoutManager;->getMovement(I)I

    move-result v4

    .line 3037
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->findFocus()Landroid/view/View;

    move-result-object v7

    .line 3038
    invoke-direct {v0, v7}, Lcom/tv/leanback/GridLayoutManager;->findImmediateChildIndex(Landroid/view/View;)I

    move-result v7

    .line 3039
    invoke-direct {v0, v7}, Lcom/tv/leanback/GridLayoutManager;->getPositionByIndex(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 3042
    invoke-virtual {v0, v8}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3044
    :cond_2
    iget-object v10, v0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    if-eqz v10, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v10

    if-nez v10, :cond_3

    goto/16 :goto_7

    :cond_3
    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eq v4, v11, :cond_4

    if-ne v4, v10, :cond_5

    .line 3048
    :cond_4
    iget-object v12, v0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v12}, Lcom/tv/leanback/Grid;->getNumRows()I

    move-result v12

    if-gt v12, v5, :cond_5

    return v5

    .line 3053
    :cond_5
    iget-object v12, v0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    if-eqz v12, :cond_6

    if-eq v8, v9, :cond_6

    .line 3054
    invoke-virtual {v12, v8}, Lcom/tv/leanback/Grid;->getLocation(I)Lcom/tv/leanback/Grid$Location;

    move-result-object v12

    iget v12, v12, Lcom/tv/leanback/Grid$Location;->row:I

    goto :goto_0

    :cond_6
    const/4 v12, -0x1

    .line 3055
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eq v4, v5, :cond_8

    if-ne v4, v11, :cond_7

    goto :goto_1

    :cond_7
    const/4 v14, -0x1

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v14, 0x1

    :goto_2
    if-lez v14, :cond_9

    .line 3057
    invoke-virtual/range {p0 .. p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v15

    sub-int/2addr v15, v5

    goto :goto_3

    :cond_9
    const/4 v15, 0x0

    :goto_3
    if-ne v7, v9, :cond_b

    if-lez v14, :cond_a

    goto :goto_4

    .line 3060
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v5

    goto :goto_4

    :cond_b
    add-int v6, v7, v14

    :goto_4
    if-lez v14, :cond_c

    if-gt v6, v15, :cond_20

    goto :goto_5

    :cond_c
    if-lt v6, v15, :cond_20

    .line 3065
    :goto_5
    invoke-virtual {v0, v6}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3066
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_17

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-nez v16, :cond_d

    goto/16 :goto_6

    :cond_d
    if-ne v8, v9, :cond_e

    .line 3072
    invoke-virtual {v7, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3073
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v13, :cond_17

    goto/16 :goto_a

    .line 3078
    :cond_e
    invoke-direct {v0, v6}, Lcom/tv/leanback/GridLayoutManager;->getPositionByIndex(I)I

    move-result v9

    .line 3079
    iget-object v10, v0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v10, v9}, Lcom/tv/leanback/Grid;->getLocation(I)Lcom/tv/leanback/Grid$Location;

    move-result-object v10

    if-nez v10, :cond_f

    goto :goto_6

    :cond_f
    if-ne v4, v5, :cond_10

    .line 3085
    iget v10, v10, Lcom/tv/leanback/Grid$Location;->row:I

    if-ne v10, v12, :cond_17

    if-le v9, v8, :cond_17

    .line 3086
    invoke-virtual {v7, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3087
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v13, :cond_17

    goto/16 :goto_a

    :cond_10
    if-nez v4, :cond_11

    .line 3093
    iget v10, v10, Lcom/tv/leanback/Grid$Location;->row:I

    if-ne v10, v12, :cond_17

    if-ge v9, v8, :cond_17

    .line 3094
    invoke-virtual {v7, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3095
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v13, :cond_17

    goto/16 :goto_a

    :cond_11
    if-ne v4, v11, :cond_14

    .line 3101
    iget v9, v10, Lcom/tv/leanback/Grid$Location;->row:I

    if-ne v9, v12, :cond_12

    goto :goto_6

    .line 3103
    :cond_12
    iget v9, v10, Lcom/tv/leanback/Grid$Location;->row:I

    if-ge v9, v12, :cond_13

    goto/16 :goto_a

    .line 3106
    :cond_13
    invoke-virtual {v7, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_6

    :cond_14
    const/4 v9, 0x2

    if-ne v4, v9, :cond_17

    .line 3109
    iget v9, v10, Lcom/tv/leanback/Grid$Location;->row:I

    if-ne v9, v12, :cond_15

    goto :goto_6

    .line 3111
    :cond_15
    iget v9, v10, Lcom/tv/leanback/Grid$Location;->row:I

    if-le v9, v12, :cond_16

    goto/16 :goto_a

    .line 3114
    :cond_16
    invoke-virtual {v7, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_17
    :goto_6
    add-int/2addr v6, v14

    const/4 v9, -0x1

    const/4 v10, 0x2

    goto :goto_4

    :cond_18
    :goto_7
    return v5

    .line 3118
    :cond_19
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3119
    iget v7, v0, Lcom/tv/leanback/GridLayoutManager;->mFocusScrollStrategy:I

    if-eqz v7, :cond_1d

    .line 3121
    iget-object v7, v0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v7}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tv/leanback/WindowAlignment$Axis;->getPaddingLow()I

    move-result v7

    .line 3122
    iget-object v8, v0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v8}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tv/leanback/WindowAlignment$Axis;->getClientSize()I

    move-result v8

    add-int/2addr v8, v7

    .line 3123
    invoke-virtual/range {p0 .. p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v9, :cond_1b

    .line 3124
    invoke-virtual {v0, v10}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 3125
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_1a

    .line 3126
    invoke-virtual {v0, v11}, Lcom/tv/leanback/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v12

    if-lt v12, v7, :cond_1a

    invoke-virtual {v0, v11}, Lcom/tv/leanback/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v12

    if-gt v12, v8, :cond_1a

    .line 3127
    invoke-virtual {v11, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 3132
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v4, :cond_1e

    .line 3133
    invoke-virtual/range {p0 .. p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v7

    :goto_9
    if-ge v6, v7, :cond_1e

    .line 3134
    invoke-virtual {v0, v6}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3135
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1c

    .line 3136
    invoke-virtual {v8, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 3141
    :cond_1d
    iget v6, v0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v0, v6}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1e

    .line 3143
    invoke-virtual {v6, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3147
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v4, :cond_1f

    return v5

    .line 3150
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v2, p1

    .line 3151
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    :goto_a
    return v5
.end method

.method onChildRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 3390
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3392
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p1, v0}, Lcom/tv/leanback/ViewsStateBundle;->saveOffscreenView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    if-eqz p1, :cond_2

    .line 2903
    iget p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    .line 2904
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 2908
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->hasFocusable()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p1, "GridLayoutManager"

    const-string p3, "onFocusChanged---------------1"

    .line 2909
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    .line 3527
    invoke-direct {p0, p1, p2}, Lcom/tv/leanback/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 3528
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    .line 3529
    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3530
    invoke-virtual {p3, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3532
    :cond_0
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1000

    .line 3533
    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3534
    invoke-virtual {p3, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3538
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tv/leanback/GridLayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    .line 3539
    invoke-virtual {p0, p1, p2}, Lcom/tv/leanback/GridLayoutManager;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    .line 3540
    invoke-virtual {p0, p1, p2}, Lcom/tv/leanback/GridLayoutManager;->isLayoutHierarchical(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v2

    .line 3541
    invoke-virtual {p0, p1, p2}, Lcom/tv/leanback/GridLayoutManager;->getSelectionModeForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 3538
    invoke-static {v0, v1, v2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p1

    .line 3542
    invoke-virtual {p3, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 3543
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->leaveContext()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .line 3431
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3432
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3436
    :cond_0
    check-cast v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    .line 3437
    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result p1

    .line 3438
    iget-object p2, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {p2, p1}, Lcom/tv/leanback/Grid;->getRowIndex(I)I

    move-result v2

    .line 3439
    iget-object p2, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {p2}, Lcom/tv/leanback/Grid;->getNumRows()I

    move-result p2

    div-int/2addr p1, p2

    .line 3440
    iget p2, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez p2, :cond_1

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, v2

    move v2, p1

    .line 3441
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p1

    .line 3444
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 3433
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 6

    .line 2927
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusSearchDisabled:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 2931
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p2, v3, :cond_2

    if-ne p2, v4, :cond_1

    goto :goto_0

    .line 2948
    :cond_1
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 2936
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_4

    if-ne p2, v3, :cond_3

    const/16 v1, 0x82

    goto :goto_1

    :cond_3
    const/16 v1, 0x21

    .line 2939
    :goto_1
    iget-object v5, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v0, v5, p1, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2941
    :cond_4
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2942
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v4, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-ne p2, v3, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    xor-int/2addr v1, v5

    if-eqz v1, :cond_7

    const/16 v1, 0x42

    goto :goto_4

    :cond_7
    const/16 v1, 0x11

    .line 2945
    :goto_4
    iget-object v5, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v0, v5, p1, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    :cond_8
    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_9

    return-object v0

    .line 2954
    :cond_9
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v1}, Lcom/tv/leanback/BaseGridView;->getDescendantFocusability()I

    move-result v1

    const/high16 v5, 0x60000

    if-ne v1, v5, :cond_a

    .line 2955
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v0}, Lcom/tv/leanback/BaseGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 2959
    :cond_a
    invoke-direct {p0, p2}, Lcom/tv/leanback/GridLayoutManager;->getMovement(I)I

    move-result v1

    .line 2960
    iget-object v5, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v5}, Lcom/tv/leanback/BaseGridView;->getScrollState()I

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    if-ne v1, v4, :cond_e

    if-nez v5, :cond_c

    .line 2962
    iget-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusOutEnd:Z

    if-nez v1, :cond_d

    :cond_c
    move-object v0, p1

    .line 2965
    :cond_d
    iget-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v1

    if-nez v1, :cond_14

    .line 2966
    invoke-direct {p0, v4}, Lcom/tv/leanback/GridLayoutManager;->processPendingMovement(Z)V

    goto :goto_7

    :cond_e
    if-nez v1, :cond_11

    if-nez v5, :cond_f

    .line 2970
    iget-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusOutFront:Z

    if-nez v1, :cond_10

    :cond_f
    move-object v0, p1

    .line 2973
    :cond_10
    iget-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v1

    if-nez v1, :cond_14

    .line 2974
    invoke-direct {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->processPendingMovement(Z)V

    goto :goto_7

    :cond_11
    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    if-nez v5, :cond_13

    .line 2978
    iget-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusOutSideEnd:Z

    if-nez v1, :cond_14

    goto :goto_7

    :cond_12
    if-ne v1, v3, :cond_14

    if-nez v5, :cond_13

    .line 2982
    iget-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusOutSideStart:Z

    if-nez v1, :cond_14

    :cond_13
    :goto_7
    move-object v0, p1

    :cond_14
    if-eqz v0, :cond_15

    return-object v0

    .line 2991
    :cond_15
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v0}, Lcom/tv/leanback/BaseGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_16

    return-object p2

    :cond_16
    if-eqz p1, :cond_17

    goto :goto_8

    .line 2995
    :cond_17
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    :goto_8
    return-object p1
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 2506
    iget p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result p1

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 2508
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    add-int/2addr v0, p1

    if-gt p2, v0, :cond_0

    add-int/2addr p1, p3

    .line 2510
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    .line 2513
    :cond_0
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

    invoke-virtual {p1}, Lcom/tv/leanback/ViewsStateBundle;->clear()V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    const/4 p1, 0x0

    .line 2519
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    .line 2520
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

    invoke-virtual {p1}, Lcom/tv/leanback/ViewsStateBundle;->clear()V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 2

    .line 2547
    iget p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    add-int v1, p2, p4

    if-ge p1, v1, :cond_0

    sub-int/2addr p3, p2

    add-int/2addr v0, p3

    .line 2551
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    sub-int v0, p1, p4

    if-le p3, v0, :cond_1

    .line 2554
    iget p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    sub-int/2addr p1, p4

    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    :cond_1
    if-le p2, p1, :cond_2

    if-ge p3, p1, :cond_2

    .line 2557
    iget p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    .line 2560
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

    invoke-virtual {p1}, Lcom/tv/leanback/ViewsStateBundle;->clear()V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 2527
    iget p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result p1

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    .line 2529
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    add-int/2addr v1, p1

    if-gt p2, v1, :cond_1

    add-int/2addr p2, p3

    if-le p2, v1, :cond_0

    .line 2533
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p3

    .line 2535
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    .line 2539
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

    invoke-virtual {p1}, Lcom/tv/leanback/ViewsStateBundle;->clear()V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 2568
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

    invoke-virtual {p1, p2}, Lcom/tv/leanback/ViewsStateBundle;->remove(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10

    .line 1949
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    if-nez v0, :cond_0

    return-void

    .line 1953
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 1958
    :cond_1
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mIsSlidingChildViews:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1959
    iput-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mLayoutEatenInSliding:Z

    return-void

    .line 1962
    :cond_2
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mLayoutEnabled:Z

    if-nez v0, :cond_3

    .line 1963
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->discardLayoutInfo()V

    .line 1964
    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void

    .line 1967
    :cond_3
    iput-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mInLayout:Z

    .line 1969
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->didStructureChange()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1975
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v0}, Lcom/tv/leanback/BaseGridView;->stopScroll()V

    .line 1977
    :cond_4
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->isSmoothScrolling()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusScrollStrategy:I

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 1979
    :goto_0
    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    iget v5, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_6

    add-int/2addr v3, v5

    .line 1980
    iput v3, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    .line 1981
    iput v2, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    .line 1983
    :cond_6
    iput v2, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    .line 1984
    invoke-direct {p0, p1, p2}, Lcom/tv/leanback/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1986
    iget p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    .line 1987
    iget p2, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    .line 1988
    iget v3, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    .line 1989
    iget-object v5, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v5}, Lcom/tv/leanback/BaseGridView;->hasFocus()Z

    move-result v5

    .line 1996
    iget v6, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-eq v6, v4, :cond_7

    if-eqz v0, :cond_7

    iget-object v6, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    .line 1997
    invoke-virtual {v6}, Lcom/tv/leanback/BaseGridView;->getScrollState()I

    move-result v6

    if-eqz v6, :cond_7

    if-eqz p1, :cond_7

    .line 2000
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v6

    sget-object v7, Lcom/tv/leanback/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {p0, p1, v6, v7}, Lcom/tv/leanback/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2001
    sget-object v6, Lcom/tv/leanback/GridLayoutManager;->sTwoInts:[I

    aget v7, v6, v2

    .line 2002
    aget v6, v6, v1

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2008
    :goto_1
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->layoutInit()Z

    move-result v8

    iput-boolean v8, p0, Lcom/tv/leanback/GridLayoutManager;->mInFastRelayout:Z

    if-eqz v8, :cond_8

    .line 2009
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->fastRelayout()V

    .line 2011
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-eq v1, v4, :cond_a

    .line 2012
    invoke-direct {p0, v5, v0}, Lcom/tv/leanback/GridLayoutManager;->scrollToFocusViewInLayout(ZZ)V

    goto :goto_3

    .line 2015
    :cond_8
    iput-boolean v5, p0, Lcom/tv/leanback/GridLayoutManager;->mInLayoutSearchFocus:Z

    .line 2016
    iget v8, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-eq v8, v4, :cond_9

    .line 2018
    :goto_2
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    .line 2019
    invoke-virtual {p0, v4}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_2

    .line 2026
    :cond_9
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->updateScrollMin()V

    .line 2027
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->updateScrollMax()V

    .line 2028
    iget-object v4, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v4}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result v4

    .line 2029
    iget-object v8, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v8}, Lcom/tv/leanback/Grid;->getLastVisibleIndex()I

    move-result v8

    .line 2030
    invoke-direct {p0, v5, v1}, Lcom/tv/leanback/GridLayoutManager;->scrollToFocusViewInLayout(ZZ)V

    .line 2031
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->appendVisibleItems()V

    .line 2032
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->prependVisibleItems()V

    .line 2033
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->removeInvisibleViewsAtFront()V

    .line 2034
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    .line 2035
    iget-object v9, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v9}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result v9

    if-ne v9, v4, :cond_9

    iget-object v4, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    .line 2036
    invoke-virtual {v4}, Lcom/tv/leanback/Grid;->getLastVisibleIndex()I

    move-result v4

    if-ne v4, v8, :cond_9

    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    neg-int v0, v7

    .line 2040
    invoke-direct {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->scrollDirectionPrimary(I)I

    neg-int v0, v6

    .line 2041
    invoke-direct {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->scrollDirectionSecondary(I)I

    .line 2043
    :cond_b
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->appendVisibleItems()V

    .line 2044
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->prependVisibleItems()V

    .line 2045
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->removeInvisibleViewsAtFront()V

    .line 2046
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    .line 2055
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    if-eqz v0, :cond_c

    .line 2056
    iput-boolean v2, p0, Lcom/tv/leanback/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    goto :goto_4

    .line 2058
    :cond_c
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    .line 2062
    :goto_4
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mInFastRelayout:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-ne v0, p2, :cond_d

    iget p2, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    if-ne p2, v3, :cond_d

    .line 2063
    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    if-eq p2, p1, :cond_e

    .line 2064
    :cond_d
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_5

    .line 2065
    :cond_e
    iget-boolean p1, p0, Lcom/tv/leanback/GridLayoutManager;->mInFastRelayout:Z

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lcom/tv/leanback/GridLayoutManager;->mInLayoutSearchFocus:Z

    if-eqz p1, :cond_f

    .line 2068
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->dispatchChildSelected()V

    .line 2070
    :cond_f
    :goto_5
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    .line 2072
    iput-boolean v2, p0, Lcom/tv/leanback/GridLayoutManager;->mInLayout:Z

    .line 2073
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->leaveContext()V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1932
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mLayoutCompleteListener:Lcom/tv/leanback/GridLayoutManager$OnLayoutCompleteListener;

    if-eqz v0, :cond_0

    .line 1933
    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager$OnLayoutCompleteListener;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    :cond_0
    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 6

    .line 1338
    invoke-direct {p0, p1, p2}, Lcom/tv/leanback/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1342
    iget p1, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez p1, :cond_0

    .line 1343
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1344
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1345
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 1346
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingTop()I

    move-result p4

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    .line 1348
    :cond_0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1349
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1350
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 1351
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getPaddingRight()I

    move-result v0

    :goto_0
    add-int/2addr p4, v0

    .line 1360
    iput p2, p0, Lcom/tv/leanback/GridLayoutManager;->mMaxSizeSecondary:I

    .line 1362
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v1, -0x2

    const-string v2, "wrong spec"

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const/4 v5, 0x1

    if-ne v0, v1, :cond_7

    .line 1363
    iget p2, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRowsRequested:I

    if-nez p2, :cond_1

    const/4 p2, 0x1

    :cond_1
    iput p2, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    const/4 v0, 0x0

    .line 1364
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1366
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mRowSizeSecondary:[I

    if-eqz v0, :cond_2

    array-length v0, v0

    if-eq v0, p2, :cond_3

    .line 1367
    :cond_2
    iget p2, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/tv/leanback/GridLayoutManager;->mRowSizeSecondary:[I

    .line 1371
    :cond_3
    invoke-direct {p0, v5}, Lcom/tv/leanback/GridLayoutManager;->processRowSizeSecondary(Z)Z

    if-eq p3, v4, :cond_6

    if-eqz p3, :cond_5

    if-ne p3, v3, :cond_4

    .line 1382
    iget p2, p0, Lcom/tv/leanback/GridLayoutManager;->mMaxSizeSecondary:I

    goto/16 :goto_3

    .line 1385
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1375
    :cond_5
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->getSizeSecondary()I

    move-result p2

    add-int/2addr p2, p4

    goto/16 :goto_3

    .line 1378
    :cond_6
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->getSizeSecondary()I

    move-result p2

    add-int/2addr p2, p4

    iget p3, p0, Lcom/tv/leanback/GridLayoutManager;->mMaxSizeSecondary:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_3

    :cond_7
    if-eq p3, v4, :cond_c

    if-eqz p3, :cond_9

    if-ne p3, v3, :cond_8

    goto :goto_1

    .line 1424
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    if-nez v0, :cond_a

    sub-int v0, p2, p4

    .line 1391
    :cond_a
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1393
    iget p2, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRowsRequested:I

    if-nez p2, :cond_b

    const/4 p2, 0x1

    :cond_b
    iput p2, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    .line 1394
    iget p3, p0, Lcom/tv/leanback/GridLayoutManager;->mFixedRowSizeSecondary:I

    mul-int p3, p3, p2

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mSpacingSecondary:I

    sub-int/2addr p2, v5

    mul-int v0, v0, p2

    add-int/2addr p3, v0

    add-int p2, p3, p4

    goto :goto_3

    .line 1399
    :cond_c
    :goto_1
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRowsRequested:I

    if-nez v0, :cond_d

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v0, :cond_d

    .line 1400
    iput v5, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    sub-int v0, p2, p4

    .line 1401
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_2

    .line 1402
    :cond_d
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRowsRequested:I

    if-nez v0, :cond_e

    .line 1403
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1404
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mSpacingSecondary:I

    add-int v2, p2, v1

    add-int/2addr v0, v1

    div-int/2addr v2, v0

    iput v2, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    goto :goto_2

    .line 1406
    :cond_e
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v1, :cond_f

    .line 1407
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    sub-int v1, p2, p4

    .line 1408
    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mSpacingSecondary:I

    add-int/lit8 v3, v0, -0x1

    mul-int v2, v2, v3

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    iput v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_2

    .line 1411
    :cond_f
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    .line 1412
    iput v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFixedRowSizeSecondary:I

    :goto_2
    if-ne p3, v4, :cond_10

    .line 1416
    iget p3, p0, Lcom/tv/leanback/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRows:I

    mul-int p3, p3, v0

    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mSpacingSecondary:I

    sub-int/2addr v0, v5

    mul-int v1, v1, v0

    add-int/2addr p3, v1

    add-int/2addr p3, p4

    if-ge p3, p2, :cond_10

    move p2, p3

    .line 1427
    :cond_10
    :goto_3
    iget p3, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez p3, :cond_11

    .line 1428
    invoke-virtual {p0, p1, p2}, Lcom/tv/leanback/GridLayoutManager;->setMeasuredDimension(II)V

    goto :goto_4

    .line 1430
    :cond_11
    invoke-virtual {p0, p2, p1}, Lcom/tv/leanback/GridLayoutManager;->setMeasuredDimension(II)V

    .line 1438
    :goto_4
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->leaveContext()V

    return-void
.end method

.method public onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 2574
    iget-boolean p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusSearchDisabled:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 2577
    :cond_0
    invoke-direct {p0, p2}, Lcom/tv/leanback/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    return v0

    .line 2582
    :cond_1
    iget-boolean p1, p0, Lcom/tv/leanback/GridLayoutManager;->mInLayout:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/tv/leanback/GridLayoutManager;->mInSelection:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/tv/leanback/GridLayoutManager;->mInScroll:Z

    if-nez p1, :cond_2

    .line 2583
    invoke-direct {p0, p2, p3, v0}, Lcom/tv/leanback/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    :cond_2
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 3398
    instance-of v0, p1, Lcom/tv/leanback/GridLayoutManager$SavedState;

    if-nez v0, :cond_0

    return-void

    .line 3401
    :cond_0
    check-cast p1, Lcom/tv/leanback/GridLayoutManager$SavedState;

    .line 3402
    iget v0, p1, Lcom/tv/leanback/GridLayoutManager$SavedState;->index:I

    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    const/4 v0, 0x0

    .line 3403
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    .line 3404
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

    iget-object p1, p1, Lcom/tv/leanback/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/ViewsStateBundle;->loadFromBundle(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 3405
    iput-boolean p1, p0, Lcom/tv/leanback/GridLayoutManager;->mForceFullLayout:Z

    .line 3406
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->requestLayout()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    .line 659
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 660
    :goto_0
    iput-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    .line 661
    iput-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowSecondary:Z

    goto :goto_2

    :cond_1
    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 663
    :goto_1
    iput-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowSecondary:Z

    .line 664
    iput-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    .line 666
    :goto_2
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    iget-object v0, v0, Lcom/tv/leanback/WindowAlignment;->horizontal:Lcom/tv/leanback/WindowAlignment$Axis;

    if-ne p1, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/tv/leanback/WindowAlignment$Axis;->setReversedFlow(Z)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 3372
    new-instance v0, Lcom/tv/leanback/GridLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/tv/leanback/GridLayoutManager$SavedState;-><init>()V

    .line 3374
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getSelection()I

    move-result v1

    iput v1, v0, Lcom/tv/leanback/GridLayoutManager$SavedState;->index:I

    .line 3376
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

    invoke-virtual {v1}, Lcom/tv/leanback/ViewsStateBundle;->saveAsBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 3378
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 3379
    invoke-virtual {p0, v3}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3380
    invoke-direct {p0, v4}, Lcom/tv/leanback/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 3382
    iget-object v6, p0, Lcom/tv/leanback/GridLayoutManager;->mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

    invoke-virtual {v6, v1, v4, v5}, Lcom/tv/leanback/ViewsStateBundle;->saveOnScreenView(Landroid/os/Bundle;Landroid/view/View;I)Landroid/os/Bundle;

    move-result-object v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3385
    :cond_1
    iput-object v1, v0, Lcom/tv/leanback/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    return-object v0
.end method

.method public performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 0

    .line 3456
    invoke-direct {p0, p1, p2}, Lcom/tv/leanback/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/16 p1, 0x1000

    const/4 p2, 0x0

    if-eq p3, p1, :cond_1

    const/16 p1, 0x2000

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 3460
    :cond_0
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p2, p1}, Lcom/tv/leanback/GridLayoutManager;->processSelectionMoves(ZI)I

    goto :goto_0

    .line 3463
    :cond_1
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/tv/leanback/GridLayoutManager;->processSelectionMoves(ZI)I

    .line 3466
    :goto_0
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->leaveContext()V

    const/4 p1, 0x1

    return p1
.end method

.method processSelectionMoves(ZI)I
    .locals 10

    .line 3476
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    if-nez v0, :cond_0

    return p2

    .line 3479
    :cond_0
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3481
    invoke-virtual {v0, v1}, Lcom/tv/leanback/Grid;->getRowIndex(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    const/4 v3, 0x0

    .line 3483
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_9

    if-eqz p2, :cond_9

    if-lez p2, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v4, -0x1

    sub-int/2addr v7, v6

    .line 3485
    :goto_2
    invoke-virtual {p0, v7}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3486
    invoke-virtual {p0, v8}, Lcom/tv/leanback/GridLayoutManager;->canScrollTo(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_4

    .line 3489
    :cond_3
    invoke-direct {p0, v7}, Lcom/tv/leanback/GridLayoutManager;->getPositionByIndex(I)I

    move-result v7

    .line 3490
    iget-object v9, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v9, v7}, Lcom/tv/leanback/Grid;->getRowIndex(I)I

    move-result v9

    if-ne v0, v2, :cond_4

    move v1, v7

    move-object v3, v8

    move v0, v9

    goto :goto_4

    :cond_4
    if-ne v9, v0, :cond_8

    if-lez p2, :cond_5

    if-gt v7, v1, :cond_6

    :cond_5
    if-gez p2, :cond_8

    if-ge v7, v1, :cond_8

    :cond_6
    if-lez p2, :cond_7

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_7
    add-int/lit8 p2, p2, 0x1

    :goto_3
    move v1, v7

    move-object v3, v8

    :cond_8
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_9
    if-eqz v3, :cond_c

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    .line 3510
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3511
    iput-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mInSelection:Z

    .line 3512
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 3513
    iput-boolean v5, p0, Lcom/tv/leanback/GridLayoutManager;->mInSelection:Z

    .line 3515
    :cond_a
    iput v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    .line 3516
    iput v5, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_5

    .line 3518
    :cond_b
    invoke-virtual {p0, v3, v0}, Lcom/tv/leanback/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    :cond_c
    :goto_5
    return p2
.end method

.method public removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1

    .line 1887
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1888
    invoke-virtual {p0, v0, p1}, Lcom/tv/leanback/GridLayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeOnChildViewHolderSelectedListener(Lcom/tv/leanback/OnChildViewHolderSelectedListener;)V
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 2106
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mLayoutEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2109
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/tv/leanback/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 p2, 0x1

    .line 2110
    iput-boolean p2, p0, Lcom/tv/leanback/GridLayoutManager;->mInScroll:Z

    .line 2112
    iget p2, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez p2, :cond_1

    .line 2113
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result p1

    goto :goto_0

    .line 2115
    :cond_1
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result p1

    .line 2117
    :goto_0
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->leaveContext()V

    .line 2118
    iput-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mInScroll:Z

    return p1

    :cond_2
    :goto_1
    return v1
.end method

.method public scrollToPosition(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2375
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/tv/leanback/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method scrollToSelection(IIZI)V
    .locals 2

    .line 2420
    iput p4, p0, Lcom/tv/leanback/GridLayoutManager;->mPrimaryScrollExtra:I

    .line 2421
    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    .line 2423
    iput-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mInSelection:Z

    .line 2424
    invoke-virtual {p0, p4, p3}, Lcom/tv/leanback/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    .line 2425
    iput-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mInSelection:Z

    goto :goto_0

    .line 2427
    :cond_0
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    .line 2428
    iput p2, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    const/high16 p2, -0x80000000

    .line 2429
    iput p2, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPositionOffset:I

    .line 2430
    iget-boolean p2, p0, Lcom/tv/leanback/GridLayoutManager;->mLayoutEnabled:Z

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/tv/leanback/GridLayoutManager;->mIsSlidingChildViews:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    .line 2434
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result p2

    if-nez p2, :cond_2

    .line 2435
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "setSelectionSmooth should not be called before first layout pass"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2439
    :cond_2
    invoke-virtual {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->startPositionSmoothScroller(I)I

    move-result p1

    .line 2440
    iget p2, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-eq p1, p2, :cond_4

    .line 2442
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    .line 2443
    iput v0, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    .line 2446
    :cond_3
    iput-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mForceFullLayout:Z

    .line 2447
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->requestLayout()V

    :cond_4
    :goto_0
    return-void
.end method

.method scrollToView(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2686
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/tv/leanback/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 2125
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mLayoutEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 2128
    iput-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mInScroll:Z

    .line 2129
    invoke-direct {p0, p2, p3}, Lcom/tv/leanback/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2131
    iget p2, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-ne p2, v0, :cond_1

    .line 2132
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result p1

    goto :goto_0

    .line 2134
    :cond_1
    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result p1

    .line 2136
    :goto_0
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->leaveContext()V

    .line 2137
    iput-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mInScroll:Z

    return p1

    :cond_2
    :goto_1
    return v1
.end method

.method setChildrenVisibility(I)V
    .locals 3

    .line 3321
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildVisibility:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3323
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 3325
    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mChildVisibility:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setExtraLayoutSpace(I)V
    .locals 1

    .line 1706
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mExtraLayoutSpace:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz v0, :cond_1

    .line 1711
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mExtraLayoutSpace:I

    .line 1712
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->requestLayout()V

    return-void

    .line 1709
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ExtraLayoutSpace must >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFocusOutAllowed(ZZ)V
    .locals 0

    .line 738
    iput-boolean p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusOutFront:Z

    .line 739
    iput-boolean p2, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusOutEnd:Z

    return-void
.end method

.method public setFocusOutSideAllowed(ZZ)V
    .locals 0

    .line 743
    iput-boolean p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusOutSideStart:Z

    .line 744
    iput-boolean p2, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusOutSideEnd:Z

    return-void
.end method

.method protected setFocusPosition(I)V
    .locals 0

    .line 655
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    return-void
.end method

.method public setFocusScrollStrategy(I)V
    .locals 0

    .line 674
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusScrollStrategy:I

    return-void
.end method

.method setFocusSearchDisabled(Z)V
    .locals 0

    .line 2918
    iput-boolean p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusSearchDisabled:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 793
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mGravity:I

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    .line 777
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 778
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mSpacingPrimary:I

    goto :goto_0

    .line 780
    :cond_0
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mSpacingSecondary:I

    :goto_0
    return-void
.end method

.method public setItemAlignmentOffset(I)V
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mItemAlignment:Lcom/tv/leanback/ItemAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/ItemAlignment;->mainAxis()Lcom/tv/leanback/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tv/leanback/ItemAlignment$Axis;->setItemAlignmentOffset(I)V

    .line 703
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->updateChildAlignments()V

    return-void
.end method

.method public setItemAlignmentOffsetPercent(F)V
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mItemAlignment:Lcom/tv/leanback/ItemAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/ItemAlignment;->mainAxis()Lcom/tv/leanback/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tv/leanback/ItemAlignment$Axis;->setItemAlignmentOffsetPercent(F)V

    .line 721
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->updateChildAlignments()V

    return-void
.end method

.method public setItemAlignmentOffsetWithPadding(Z)V
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mItemAlignment:Lcom/tv/leanback/ItemAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/ItemAlignment;->mainAxis()Lcom/tv/leanback/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tv/leanback/ItemAlignment$Axis;->setItemAlignmentOffsetWithPadding(Z)V

    .line 712
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->updateChildAlignments()V

    return-void
.end method

.method public setItemAlignmentViewId(I)V
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mItemAlignment:Lcom/tv/leanback/ItemAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/ItemAlignment;->mainAxis()Lcom/tv/leanback/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tv/leanback/ItemAlignment$Axis;->setItemAlignmentViewId(I)V

    .line 730
    invoke-direct {p0}, Lcom/tv/leanback/GridLayoutManager;->updateChildAlignments()V

    return-void
.end method

.method public setItemSpacing(I)V
    .locals 0

    .line 764
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mVerticalSpacing:I

    .line 765
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mSpacingSecondary:I

    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mSpacingPrimary:I

    return-void
.end method

.method public setLayoutEnabled(Z)V
    .locals 1

    .line 3314
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mLayoutEnabled:Z

    if-eq v0, p1, :cond_0

    .line 3315
    iput-boolean p1, p0, Lcom/tv/leanback/GridLayoutManager;->mLayoutEnabled:Z

    .line 3316
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setNumRows(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 749
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mNumRowsRequested:I

    return-void

    .line 748
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method setOnChildLaidOutListener(Lcom/tv/leanback/OnChildLaidOutListener;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildLaidOutListener:Lcom/tv/leanback/OnChildLaidOutListener;

    return-void
.end method

.method public setOnChildSelectedListener(Lcom/tv/leanback/OnChildSelectedListener;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildSelectedListener:Lcom/tv/leanback/OnChildSelectedListener;

    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Lcom/tv/leanback/OnChildViewHolderSelectedListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 806
    iput-object p1, p0, Lcom/tv/leanback/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    goto :goto_0

    .line 812
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 814
    :goto_0
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    .line 647
    :cond_0
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    .line 648
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 649
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v1, p1}, Lcom/tv/leanback/WindowAlignment;->setOrientation(I)V

    .line 650
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mItemAlignment:Lcom/tv/leanback/ItemAlignment;

    invoke-virtual {v1, p1}, Lcom/tv/leanback/ItemAlignment;->setOrientation(I)V

    .line 651
    iput-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mForceFullLayout:Z

    return-void
.end method

.method public setPruneChild(Z)V
    .locals 1

    .line 2859
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mPruneChild:Z

    if-eq v0, p1, :cond_0

    .line 2860
    iput-boolean p1, p0, Lcom/tv/leanback/GridLayoutManager;->mPruneChild:Z

    if-eqz p1, :cond_0

    .line 2862
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setRowHeight(I)V
    .locals 3

    if-gez p1, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 759
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid row height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_1
    :goto_0
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mRowSizeSecondaryRequested:I

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 3

    .line 2872
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2873
    iput-boolean p1, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollEnabled:Z

    if-eqz p1, :cond_0

    .line 2874
    iget p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusScrollStrategy:I

    if-nez p1, :cond_0

    iget p1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2876
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    const/4 v1, 0x1

    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mPrimaryScrollExtra:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/tv/leanback/GridLayoutManager;->scrollToSelection(IIZI)V

    :cond_0
    return-void
.end method

.method public setSelection(II)V
    .locals 1

    const/4 v0, 0x0

    .line 2385
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/tv/leanback/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method public setSelection(IIZI)V
    .locals 1

    .line 2411
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mPrimaryScrollExtra:I

    if-eq p4, v0, :cond_2

    .line 2413
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tv/leanback/GridLayoutManager;->scrollToSelection(IIZI)V

    :cond_2
    return-void
.end method

.method public setSelectionSmooth(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2389
    invoke-virtual {p0, p1, v0, v1, v0}, Lcom/tv/leanback/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method public setSelectionSmoothWithSub(II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2398
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tv/leanback/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method public setSelectionWithSub(III)V
    .locals 1

    const/4 v0, 0x0

    .line 2394
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tv/leanback/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 2

    .line 769
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 770
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mVerticalSpacing:I

    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mSpacingPrimary:I

    goto :goto_0

    .line 772
    :cond_0
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mVerticalSpacing:I

    iput p1, p0, Lcom/tv/leanback/GridLayoutManager;->mSpacingSecondary:I

    :goto_0
    return-void
.end method

.method public setWindowAlignment(I)V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tv/leanback/WindowAlignment$Axis;->setWindowAlignment(I)V

    return-void
.end method

.method public setWindowAlignmentOffset(I)V
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tv/leanback/WindowAlignment$Axis;->setWindowAlignmentOffset(I)V

    return-void
.end method

.method public setWindowAlignmentOffsetPercent(F)V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tv/leanback/WindowAlignment$Axis;->setWindowAlignmentOffsetPercent(F)V

    return-void
.end method

.method slideIn()V
    .locals 5

    .line 1738
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mIsSlidingChildViews:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1739
    iput-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mIsSlidingChildViews:Z

    .line 1740
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Lcom/tv/leanback/GridLayoutManager;->mSubFocusPosition:I

    const/4 v3, 0x1

    iget v4, p0, Lcom/tv/leanback/GridLayoutManager;->mPrimaryScrollExtra:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/tv/leanback/GridLayoutManager;->scrollToSelection(IIZI)V

    .line 1741
    iget-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mLayoutEatenInSliding:Z

    if-eqz v1, :cond_2

    .line 1742
    iput-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mLayoutEatenInSliding:Z

    .line 1743
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {v0}, Lcom/tv/leanback/BaseGridView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1754
    :cond_0
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->requestLayout()V

    goto :goto_1

    .line 1744
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    new-instance v1, Lcom/tv/leanback/GridLayoutManager$3;

    invoke-direct {v1, p0}, Lcom/tv/leanback/GridLayoutManager$3;-><init>(Lcom/tv/leanback/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Lcom/tv/leanback/BaseGridView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method slideOut()V
    .locals 4

    .line 1764
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mIsSlidingChildViews:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1767
    iput-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mIsSlidingChildViews:Z

    .line 1768
    iget v1, p0, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_2

    .line 1769
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getHeight()I

    move-result v0

    neg-int v0, v0

    .line 1770
    invoke-virtual {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_1

    add-int/2addr v0, v1

    .line 1775
    :cond_1
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/tv/leanback/BaseGridView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 1778
    :cond_2
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_3

    .line 1779
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getWidth()I

    move-result v0

    .line 1780
    invoke-virtual {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v0, :cond_4

    move v0, v1

    goto :goto_0

    .line 1786
    :cond_3
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager;->getWidth()I

    move-result v0

    neg-int v0, v0

    .line 1787
    invoke-virtual {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gez v1, :cond_4

    add-int/2addr v0, v1

    .line 1793
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Lcom/tv/leanback/BaseGridView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    :goto_1
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2381
    invoke-virtual {p0, p3, p1, p2, p1}, Lcom/tv/leanback/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method startPositionSmoothScroller(I)I
    .locals 1

    .line 2454
    new-instance v0, Lcom/tv/leanback/GridLayoutManager$4;

    invoke-direct {v0, p0}, Lcom/tv/leanback/GridLayoutManager$4;-><init>(Lcom/tv/leanback/GridLayoutManager;)V

    .line 2474
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 2475
    invoke-virtual {p0, v0}, Lcom/tv/leanback/GridLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 2476
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result p1

    return p1
.end method

.method updateScrollMax()V
    .locals 5

    .line 2250
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v0}, Lcom/tv/leanback/Grid;->getLastVisibleIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    .line 2251
    invoke-virtual {v0}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result v0

    .line 2252
    :goto_0
    iget-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-gez v0, :cond_2

    return-void

    :cond_2
    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 2257
    :goto_2
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v1}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tv/leanback/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v1

    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    return-void

    .line 2261
    :cond_4
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    sget-object v4, Lcom/tv/leanback/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {v1, v3, v4}, Lcom/tv/leanback/Grid;->findRowMax(Z[I)I

    move-result v1

    iget v4, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetPrimary:I

    add-int/2addr v1, v4

    .line 2262
    sget-object v4, Lcom/tv/leanback/GridLayoutManager;->sTwoInts:[I

    aget v2, v4, v2

    .line 2263
    aget v2, v4, v3

    .line 2264
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v3}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tv/leanback/WindowAlignment$Axis;->getMaxEdge()I

    move-result v3

    .line 2265
    iget-object v4, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v4}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/tv/leanback/WindowAlignment$Axis;->setMaxEdge(I)V

    .line 2266
    invoke-virtual {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->getPrimarySystemScrollPositionOfChildMax(Landroid/view/View;)I

    move-result v2

    .line 2267
    iget-object v4, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v4}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tv/leanback/WindowAlignment$Axis;->setMaxEdge(I)V

    if-eqz v0, :cond_5

    .line 2270
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tv/leanback/WindowAlignment$Axis;->setMaxEdge(I)V

    .line 2271
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tv/leanback/WindowAlignment$Axis;->setMaxScroll(I)V

    goto :goto_3

    .line 2277
    :cond_5
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment$Axis;->invalidateScrollMax()V

    :goto_3
    return-void
.end method

.method updateScrollMin()V
    .locals 5

    .line 2286
    iget-boolean v0, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    invoke-virtual {v0}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    .line 2287
    invoke-virtual {v0}, Lcom/tv/leanback/Grid;->getLastVisibleIndex()I

    move-result v0

    .line 2288
    :goto_0
    iget-boolean v1, p0, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    if-gez v0, :cond_2

    return-void

    :cond_2
    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 2293
    :goto_2
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v1}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tv/leanback/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v1

    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    return-void

    .line 2297
    :cond_4
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager;->mGrid:Lcom/tv/leanback/Grid;

    sget-object v4, Lcom/tv/leanback/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {v1, v3, v4}, Lcom/tv/leanback/Grid;->findRowMin(Z[I)I

    move-result v1

    iget v4, p0, Lcom/tv/leanback/GridLayoutManager;->mScrollOffsetPrimary:I

    add-int/2addr v1, v4

    .line 2298
    sget-object v4, Lcom/tv/leanback/GridLayoutManager;->sTwoInts:[I

    aget v3, v4, v3

    .line 2299
    aget v2, v4, v2

    .line 2300
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v3}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tv/leanback/WindowAlignment$Axis;->getMinEdge()I

    move-result v3

    .line 2301
    iget-object v4, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v4}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/tv/leanback/WindowAlignment$Axis;->setMinEdge(I)V

    .line 2302
    invoke-virtual {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tv/leanback/GridLayoutManager;->getPrimarySystemScrollPosition(Landroid/view/View;)I

    move-result v2

    .line 2303
    iget-object v4, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v4}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tv/leanback/WindowAlignment$Axis;->setMinEdge(I)V

    if-eqz v0, :cond_5

    .line 2306
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tv/leanback/WindowAlignment$Axis;->setMinEdge(I)V

    .line 2307
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tv/leanback/WindowAlignment$Axis;->setMinScroll(I)V

    goto :goto_3

    .line 2313
    :cond_5
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager;->mWindowAlignment:Lcom/tv/leanback/WindowAlignment;

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment;->mainAxis()Lcom/tv/leanback/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tv/leanback/WindowAlignment$Axis;->invalidateScrollMin()V

    :goto_3
    return-void
.end method
