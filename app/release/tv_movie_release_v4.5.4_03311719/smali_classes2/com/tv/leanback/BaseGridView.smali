.class public abstract Lcom/tv/leanback/BaseGridView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "BaseGridView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tv/leanback/BaseGridView$OnUnhandledKeyListener;,
        Lcom/tv/leanback/BaseGridView$OnKeyInterceptListener;,
        Lcom/tv/leanback/BaseGridView$OnMotionInterceptListener;,
        Lcom/tv/leanback/BaseGridView$OnTouchInterceptListener;
    }
.end annotation


# static fields
.field public static final FOCUS_SCROLL_ALIGNED:I = 0x0

.field public static final FOCUS_SCROLL_ITEM:I = 0x1

.field public static final FOCUS_SCROLL_PAGE:I = 0x2

.field public static final ITEM_ALIGN_OFFSET_PERCENT_DISABLED:F = -1.0f

.field public static final SAVE_ALL_CHILD:I = 0x3

.field public static final SAVE_LIMITED_CHILD:I = 0x2

.field public static final SAVE_NO_CHILD:I = 0x0

.field public static final SAVE_ON_SCREEN_CHILD:I = 0x1

.field public static final WINDOW_ALIGN_BOTH_EDGE:I = 0x3

.field public static final WINDOW_ALIGN_HIGH_EDGE:I = 0x2

.field public static final WINDOW_ALIGN_LOW_EDGE:I = 0x1

.field public static final WINDOW_ALIGN_NO_EDGE:I = 0x0

.field public static final WINDOW_ALIGN_OFFSET_PERCENT_DISABLED:F = -1.0f


# instance fields
.field private mAnimateChildLayout:Z

.field mChainedRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

.field private mHasOverlappingRendering:Z

.field mInitialPrefetchItemCount:I

.field final mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

.field private mOnKeyInterceptListener:Lcom/tv/leanback/BaseGridView$OnKeyInterceptListener;

.field private mOnMotionInterceptListener:Lcom/tv/leanback/BaseGridView$OnMotionInterceptListener;

.field private mOnTouchInterceptListener:Lcom/tv/leanback/BaseGridView$OnTouchInterceptListener;

.field private mOnUnhandledKeyListener:Lcom/tv/leanback/BaseGridView$OnUnhandledKeyListener;

.field private mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 195
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lcom/tv/leanback/BaseGridView;->mAnimateChildLayout:Z

    .line 179
    iput-boolean p1, p0, Lcom/tv/leanback/BaseGridView;->mHasOverlappingRendering:Z

    const/4 p2, 0x4

    .line 192
    iput p2, p0, Lcom/tv/leanback/BaseGridView;->mInitialPrefetchItemCount:I

    .line 196
    new-instance p2, Lcom/tv/leanback/GridLayoutManager;

    invoke-direct {p2, p0}, Lcom/tv/leanback/GridLayoutManager;-><init>(Lcom/tv/leanback/BaseGridView;)V

    iput-object p2, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    .line 197
    invoke-virtual {p0, p2}, Lcom/tv/leanback/BaseGridView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p2, 0x0

    .line 199
    invoke-virtual {p0, p2}, Lcom/tv/leanback/BaseGridView;->setPreserveFocusAfterLayout(Z)V

    const/high16 p3, 0x40000

    .line 200
    invoke-virtual {p0, p3}, Lcom/tv/leanback/BaseGridView;->setDescendantFocusability(I)V

    .line 201
    invoke-virtual {p0, p1}, Lcom/tv/leanback/BaseGridView;->setHasFixedSize(Z)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/tv/leanback/BaseGridView;->setChildrenDrawingOrderEnabled(Z)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/tv/leanback/BaseGridView;->setWillNotDraw(Z)V

    const/4 p1, 0x2

    .line 204
    invoke-virtual {p0, p1}, Lcom/tv/leanback/BaseGridView;->setOverScrollMode(I)V

    .line 208
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 209
    new-instance p1, Lcom/tv/leanback/BaseGridView$1;

    invoke-direct {p1, p0}, Lcom/tv/leanback/BaseGridView$1;-><init>(Lcom/tv/leanback/BaseGridView;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;)V

    return-void
.end method


# virtual methods
.method public addOnChildViewHolderSelectedListener(Lcom/tv/leanback/OnChildViewHolderSelectedListener;)V
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->addOnChildViewHolderSelectedListener(Lcom/tv/leanback/OnChildViewHolderSelectedListener;)V

    return-void
.end method

.method public animateIn()V
    .locals 1

    .line 1017
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->slideIn()V

    return-void
.end method

.method public animateOut()V
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->slideOut()V

    return-void
.end method

.method public dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mOnMotionInterceptListener:Lcom/tv/leanback/BaseGridView$OnMotionInterceptListener;

    if-eqz v0, :cond_0

    .line 918
    invoke-interface {v0, p1}, Lcom/tv/leanback/BaseGridView$OnMotionInterceptListener;->onInterceptMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 922
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 896
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mOnKeyInterceptListener:Lcom/tv/leanback/BaseGridView$OnKeyInterceptListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tv/leanback/BaseGridView$OnKeyInterceptListener;->onInterceptKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 899
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mOnUnhandledKeyListener:Lcom/tv/leanback/BaseGridView$OnUnhandledKeyListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/tv/leanback/BaseGridView$OnUnhandledKeyListener;->onUnhandledKey(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mOnTouchInterceptListener:Lcom/tv/leanback/BaseGridView$OnTouchInterceptListener;

    if-eqz v0, :cond_0

    .line 908
    invoke-interface {v0, p1}, Lcom/tv/leanback/BaseGridView$OnTouchInterceptListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 912
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2

    .line 762
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->getSelection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tv/leanback/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {p0, v0, p1}, Lcom/tv/leanback/BaseGridView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 771
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->focusSearch(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildDrawingOrder(II)I
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/tv/leanback/GridLayoutManager;->getChildDrawingOrder(Landroidx/recyclerview/widget/RecyclerView;II)I

    move-result p1

    return p1
.end method

.method public getExtraLayoutSpace()I
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->getExtraLayoutSpace()I

    move-result v0

    return v0
.end method

.method public getFocusScrollStrategy()I
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->getFocusScrollStrategy()I

    move-result v0

    return v0
.end method

.method public getHorizontalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->getHorizontalSpacing()I

    move-result v0

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->getHorizontalSpacing()I

    move-result v0

    return v0
.end method

.method public getInitialPrefetchItemCount()I
    .locals 1

    .line 1084
    iget v0, p0, Lcom/tv/leanback/BaseGridView;->mInitialPrefetchItemCount:I

    return v0
.end method

.method public getItemAlignmentOffset()I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->getItemAlignmentOffset()I

    move-result v0

    return v0
.end method

.method public getItemAlignmentOffsetPercent()F
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->getItemAlignmentOffsetPercent()F

    move-result v0

    return v0
.end method

.method public getItemAlignmentViewId()I
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->getItemAlignmentViewId()I

    move-result v0

    return v0
.end method

.method public getOnUnhandledKeyListener()Lcom/tv/leanback/BaseGridView$OnUnhandledKeyListener;
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mOnUnhandledKeyListener:Lcom/tv/leanback/BaseGridView$OnUnhandledKeyListener;

    return-object v0
.end method

.method public final getSaveChildrenLimitNumber()I
    .locals 1

    .line 940
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    iget-object v0, v0, Lcom/tv/leanback/GridLayoutManager;->mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

    invoke-virtual {v0}, Lcom/tv/leanback/ViewsStateBundle;->getLimitNumber()I

    move-result v0

    return v0
.end method

.method public final getSaveChildrenPolicy()I
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    iget-object v0, v0, Lcom/tv/leanback/GridLayoutManager;->mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

    invoke-virtual {v0}, Lcom/tv/leanback/ViewsStateBundle;->getSavePolicy()I

    move-result v0

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->getSelection()I

    move-result v0

    return v0
.end method

.method public getSelectedSubPosition()I
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->getSubSelection()I

    move-result v0

    return v0
.end method

.method public getVerticalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->getVerticalSpacing()I

    move-result v0

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->getVerticalSpacing()I

    move-result v0

    return v0
.end method

.method public getViewSelectedOffsets(Landroid/view/View;[I)V
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/tv/leanback/GridLayoutManager;->getViewSelectedOffsets(Landroid/view/View;[I)V

    return-void
.end method

.method public getWindowAlignment()I
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->getWindowAlignment()I

    move-result v0

    return v0
.end method

.method public getWindowAlignmentOffset()I
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->getWindowAlignmentOffset()I

    move-result v0

    return v0
.end method

.method public getWindowAlignmentOffsetPercent()F
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->getWindowAlignmentOffsetPercent()F

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 962
    iget-boolean v0, p0, Lcom/tv/leanback/BaseGridView;->mHasOverlappingRendering:Z

    return v0
.end method

.method public hasPreviousViewInSameRow(I)Z
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->hasPreviousViewInSameRow(I)Z

    move-result p1

    return p1
.end method

.method protected initBaseGridViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 221
    sget-object v0, Lcom/tv/R$styleable;->lbBaseGridView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 222
    sget p2, Lcom/tv/R$styleable;->lbBaseGridView_focusOutFront:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 223
    sget v1, Lcom/tv/R$styleable;->lbBaseGridView_focusOutEnd:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 224
    iget-object v2, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v2, p2, v1}, Lcom/tv/leanback/GridLayoutManager;->setFocusOutAllowed(ZZ)V

    .line 225
    sget p2, Lcom/tv/R$styleable;->lbBaseGridView_focusOutSideStart:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 226
    sget v2, Lcom/tv/R$styleable;->lbBaseGridView_focusOutSideEnd:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 227
    iget-object v2, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v2, p2, v1}, Lcom/tv/leanback/GridLayoutManager;->setFocusOutSideAllowed(ZZ)V

    .line 228
    iget-object p2, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    sget v1, Lcom/tv/R$styleable;->lbBaseGridView_android_verticalSpacing:I

    sget v2, Lcom/tv/R$styleable;->lbBaseGridView_verticalMargin:I

    .line 230
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 229
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 228
    invoke-virtual {p2, v1}, Lcom/tv/leanback/GridLayoutManager;->setVerticalSpacing(I)V

    .line 231
    iget-object p2, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    sget v1, Lcom/tv/R$styleable;->lbBaseGridView_android_horizontalSpacing:I

    sget v2, Lcom/tv/R$styleable;->lbBaseGridView_horizontalMargin:I

    .line 233
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 232
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 231
    invoke-virtual {p2, v1}, Lcom/tv/leanback/GridLayoutManager;->setHorizontalSpacing(I)V

    .line 234
    sget p2, Lcom/tv/R$styleable;->lbBaseGridView_android_gravity:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 235
    sget p2, Lcom/tv/R$styleable;->lbBaseGridView_android_gravity:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tv/leanback/BaseGridView;->setGravity(I)V

    .line 237
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isChildLayoutAnimated()Z
    .locals 1

    .line 720
    iget-boolean v0, p0, Lcom/tv/leanback/BaseGridView;->mAnimateChildLayout:Z

    return v0
.end method

.method final isChildrenDrawingOrderEnabledInternal()Z
    .locals 1

    .line 757
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    return v0
.end method

.method public isFocusDrawingOrderEnabled()Z
    .locals 1

    .line 856
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    return v0
.end method

.method public final isFocusSearchDisabled()Z
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->isFocusSearchDisabled()Z

    move-result v0

    return v0
.end method

.method public isItemAlignmentOffsetWithPadding()Z
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->isItemAlignmentOffsetWithPadding()Z

    move-result v0

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->isScrollEnabled()Z

    move-result v0

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 776
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 777
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tv/leanback/GridLayoutManager;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/tv/leanback/GridLayoutManager;->gridOnRequestFocusInDescendants(Landroidx/recyclerview/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 974
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->onRtlPropertiesChanged(I)V

    return-void
.end method

.method public removeOnChildViewHolderSelectedListener(Lcom/tv/leanback/OnChildViewHolderSelectedListener;)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->removeOnChildViewHolderSelectedListener(Lcom/tv/leanback/OnChildViewHolderSelectedListener;)V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 2

    .line 1023
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    iget-boolean v0, v0, Lcom/tv/leanback/GridLayoutManager;->mIsSlidingChildViews:Z

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/tv/leanback/GridLayoutManager;->setSelectionWithSub(III)V

    return-void

    .line 1027
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setAnimateChildLayout(Z)V
    .locals 1

    .line 703
    iget-boolean v0, p0, Lcom/tv/leanback/BaseGridView;->mAnimateChildLayout:Z

    if-eq v0, p1, :cond_1

    .line 704
    iput-boolean p1, p0, Lcom/tv/leanback/BaseGridView;->mAnimateChildLayout:Z

    if-nez p1, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/tv/leanback/BaseGridView;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    const/4 p1, 0x0

    .line 707
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 709
    :cond_0
    iget-object p1, p0, Lcom/tv/leanback/BaseGridView;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChildrenVisibility(I)V
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setChildrenVisibility(I)V

    return-void
.end method

.method public setExtraLayoutSpace(I)V
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setExtraLayoutSpace(I)V

    return-void
.end method

.method public setFocusDrawingOrderEnabled(Z)V
    .locals 0

    .line 849
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public setFocusScrollStrategy(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid scrollStrategy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 253
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setFocusScrollStrategy(I)V

    .line 254
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->requestLayout()V

    return-void
.end method

.method public final setFocusSearchDisabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000

    .line 786
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tv/leanback/BaseGridView;->setDescendantFocusability(I)V

    .line 787
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setFocusSearchDisabled(Z)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setGravity(I)V

    .line 731
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setHasOverlappingRendering(Z)V
    .locals 0

    .line 966
    iput-boolean p1, p0, Lcom/tv/leanback/BaseGridView;->mHasOverlappingRendering:Z

    return-void
.end method

.method public setHorizontalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 478
    invoke-virtual {p0, p1}, Lcom/tv/leanback/BaseGridView;->setHorizontalSpacing(I)V

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setHorizontalSpacing(I)V

    .line 511
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0

    .line 1069
    iput p1, p0, Lcom/tv/leanback/BaseGridView;->mInitialPrefetchItemCount:I

    return-void
.end method

.method public setItemAlignmentOffset(I)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setItemAlignmentOffset(I)V

    .line 355
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentOffsetPercent(F)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setItemAlignmentOffsetPercent(F)V

    .line 401
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentOffsetWithPadding(Z)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setItemAlignmentOffsetWithPadding(Z)V

    .line 379
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentViewId(I)V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setItemAlignmentViewId(I)V

    return-void
.end method

.method public setItemMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 440
    invoke-virtual {p0, p1}, Lcom/tv/leanback/BaseGridView;->setItemSpacing(I)V

    return-void
.end method

.method public setItemSpacing(I)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setItemSpacing(I)V

    .line 448
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setLayoutEnabled(Z)V
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setLayoutEnabled(Z)V

    return-void
.end method

.method public setOnChildLaidOutListener(Lcom/tv/leanback/OnChildLaidOutListener;)V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setOnChildLaidOutListener(Lcom/tv/leanback/OnChildLaidOutListener;)V

    return-void
.end method

.method public setOnChildSelectedListener(Lcom/tv/leanback/OnChildSelectedListener;)V
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setOnChildSelectedListener(Lcom/tv/leanback/OnChildSelectedListener;)V

    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Lcom/tv/leanback/OnChildViewHolderSelectedListener;)V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setOnChildViewHolderSelectedListener(Lcom/tv/leanback/OnChildViewHolderSelectedListener;)V

    return-void
.end method

.method public setOnKeyInterceptListener(Lcom/tv/leanback/BaseGridView$OnKeyInterceptListener;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/tv/leanback/BaseGridView;->mOnKeyInterceptListener:Lcom/tv/leanback/BaseGridView$OnKeyInterceptListener;

    return-void
.end method

.method public setOnMotionInterceptListener(Lcom/tv/leanback/BaseGridView$OnMotionInterceptListener;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/tv/leanback/BaseGridView;->mOnMotionInterceptListener:Lcom/tv/leanback/BaseGridView$OnMotionInterceptListener;

    return-void
.end method

.method public setOnTouchInterceptListener(Lcom/tv/leanback/BaseGridView$OnTouchInterceptListener;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/tv/leanback/BaseGridView;->mOnTouchInterceptListener:Lcom/tv/leanback/BaseGridView$OnTouchInterceptListener;

    return-void
.end method

.method public setOnUnhandledKeyListener(Lcom/tv/leanback/BaseGridView$OnUnhandledKeyListener;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lcom/tv/leanback/BaseGridView;->mOnUnhandledKeyListener:Lcom/tv/leanback/BaseGridView$OnUnhandledKeyListener;

    return-void
.end method

.method public setPruneChild(Z)V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setPruneChild(Z)V

    return-void
.end method

.method public setRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;)V
    .locals 0

    .line 979
    iput-object p1, p0, Lcom/tv/leanback/BaseGridView;->mChainedRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

    return-void
.end method

.method public final setSaveChildrenLimitNumber(I)V
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    iget-object v0, v0, Lcom/tv/leanback/GridLayoutManager;->mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/ViewsStateBundle;->setLimitNumber(I)V

    return-void
.end method

.method public final setSaveChildrenPolicy(I)V
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    iget-object v0, v0, Lcom/tv/leanback/GridLayoutManager;->mChildrenStates:Lcom/tv/leanback/ViewsStateBundle;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/ViewsStateBundle;->setSavePolicy(I)V

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setScrollEnabled(Z)V

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tv/leanback/GridLayoutManager;->setSelection(II)V

    return-void
.end method

.method public setSelectedPosition(II)V
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/tv/leanback/GridLayoutManager;->setSelection(II)V

    return-void
.end method

.method public setSelectedPosition(ILcom/tv/leanback/ViewHolderTask;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 661
    invoke-virtual {p0, p1}, Lcom/tv/leanback/BaseGridView;->findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 662
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 674
    :cond_0
    invoke-interface {p2, v0}, Lcom/tv/leanback/ViewHolderTask;->run(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 663
    :cond_1
    :goto_0
    new-instance v0, Lcom/tv/leanback/BaseGridView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/tv/leanback/BaseGridView$3;-><init>(Lcom/tv/leanback/BaseGridView;ILcom/tv/leanback/ViewHolderTask;)V

    invoke-virtual {p0, v0}, Lcom/tv/leanback/BaseGridView;->addOnChildViewHolderSelectedListener(Lcom/tv/leanback/OnChildViewHolderSelectedListener;)V

    .line 677
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/tv/leanback/BaseGridView;->setSelectedPosition(I)V

    return-void
.end method

.method public setSelectedPositionSmooth(I)V
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setSelectionSmooth(I)V

    return-void
.end method

.method public setSelectedPositionSmooth(ILcom/tv/leanback/ViewHolderTask;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 634
    invoke-virtual {p0, p1}, Lcom/tv/leanback/BaseGridView;->findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 647
    :cond_0
    invoke-interface {p2, v0}, Lcom/tv/leanback/ViewHolderTask;->run(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 636
    :cond_1
    :goto_0
    new-instance v0, Lcom/tv/leanback/BaseGridView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/tv/leanback/BaseGridView$2;-><init>(Lcom/tv/leanback/BaseGridView;ILcom/tv/leanback/ViewHolderTask;)V

    invoke-virtual {p0, v0}, Lcom/tv/leanback/BaseGridView;->addOnChildViewHolderSelectedListener(Lcom/tv/leanback/OnChildViewHolderSelectedListener;)V

    .line 650
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/tv/leanback/BaseGridView;->setSelectedPositionSmooth(I)V

    return-void
.end method

.method public setSelectedPositionSmoothWithSub(II)V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/tv/leanback/GridLayoutManager;->setSelectionSmoothWithSub(II)V

    return-void
.end method

.method public setSelectedPositionWithSub(II)V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/tv/leanback/GridLayoutManager;->setSelectionWithSub(III)V

    return-void
.end method

.method public setSelectedPositionWithSub(III)V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tv/leanback/GridLayoutManager;->setSelectionWithSub(III)V

    return-void
.end method

.method public setVerticalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 458
    invoke-virtual {p0, p1}, Lcom/tv/leanback/BaseGridView;->setVerticalSpacing(I)V

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setVerticalSpacing(I)V

    .line 496
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setWindowAlignment(I)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setWindowAlignment(I)V

    .line 278
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentOffset(I)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setWindowAlignmentOffset(I)V

    .line 302
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentOffsetPercent(F)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setWindowAlignmentOffsetPercent(F)V

    .line 329
    invoke-virtual {p0}, Lcom/tv/leanback/BaseGridView;->requestLayout()V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    .line 1033
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    iget-boolean v0, v0, Lcom/tv/leanback/GridLayoutManager;->mIsSlidingChildViews:Z

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/tv/leanback/GridLayoutManager;->setSelectionWithSub(III)V

    return-void

    .line 1037
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
