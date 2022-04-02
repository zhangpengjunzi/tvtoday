.class public Lcom/tv/leanback/VerticalGridView;
.super Lcom/tv/leanback/BaseGridView;
.source "VerticalGridView.java"


# instance fields
.field mOldTime:J

.field mTimeStamp:J

.field private onItemListener:Lcom/tv/leanback/OnItemListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tv/leanback/OnItemListener<",
            "Lcom/tv/leanback/VerticalGridView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/tv/leanback/VerticalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/tv/leanback/VerticalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/tv/leanback/BaseGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x0

    .line 115
    iput-wide v0, p0, Lcom/tv/leanback/VerticalGridView;->mOldTime:J

    const-wide/16 v0, 0x64

    .line 116
    iput-wide v0, p0, Lcom/tv/leanback/VerticalGridView;->mTimeStamp:J

    .line 43
    iget-object p3, p0, Lcom/tv/leanback/VerticalGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/tv/leanback/GridLayoutManager;->setOrientation(I)V

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/tv/leanback/VerticalGridView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .line 131
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 133
    iget-wide v2, p0, Lcom/tv/leanback/VerticalGridView;->mOldTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/tv/leanback/VerticalGridView;->mTimeStamp:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 p1, 0x1

    return p1

    .line 136
    :cond_0
    iput-wide v0, p0, Lcom/tv/leanback/VerticalGridView;->mOldTime:J

    .line 138
    :cond_1
    invoke-super {p0, p1}, Lcom/tv/leanback/BaseGridView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/tv/leanback/VerticalGridView;->initBaseGridViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    sget-object v0, Lcom/tv/R$styleable;->lbVerticalGridView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/tv/leanback/VerticalGridView;->setColumnWidth(Landroid/content/res/TypedArray;)V

    .line 51
    sget p2, Lcom/tv/R$styleable;->lbVerticalGridView_numberOfColumns:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tv/leanback/VerticalGridView;->setNumColumns(I)V

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    .line 90
    invoke-virtual {p0, p1}, Lcom/tv/leanback/VerticalGridView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    if-eqz p2, :cond_0

    .line 93
    iget-object p2, p0, Lcom/tv/leanback/VerticalGridView;->onItemListener:Lcom/tv/leanback/OnItemListener;

    if-eqz p2, :cond_1

    .line 94
    invoke-interface {p2, p0, p1, v0}, Lcom/tv/leanback/OnItemListener;->onItemSelected(Ljava/lang/Object;Landroid/view/View;I)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p2, p0, Lcom/tv/leanback/VerticalGridView;->onItemListener:Lcom/tv/leanback/OnItemListener;

    if-eqz p2, :cond_1

    .line 98
    invoke-interface {p2, p0, p1, v0}, Lcom/tv/leanback/OnItemListener;->onItemPreSelected(Ljava/lang/Object;Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/tv/leanback/VerticalGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setRowHeight(I)V

    .line 84
    invoke-virtual {p0}, Lcom/tv/leanback/VerticalGridView;->requestLayout()V

    return-void
.end method

.method setColumnWidth(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 56
    sget v0, Lcom/tv/R$styleable;->lbVerticalGridView_columnWidth:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    sget v0, Lcom/tv/R$styleable;->lbVerticalGridView_columnWidth:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/tv/leanback/VerticalGridView;->setColumnWidth(I)V

    :cond_0
    return-void
.end method

.method public setFocusPosition(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/tv/leanback/VerticalGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setFocusPosition(I)V

    return-void
.end method

.method public setKeyScrollTime(J)V
    .locals 0

    .line 123
    iput-wide p1, p0, Lcom/tv/leanback/VerticalGridView;->mTimeStamp:J

    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/tv/leanback/VerticalGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->setNumRows(I)V

    .line 68
    invoke-virtual {p0}, Lcom/tv/leanback/VerticalGridView;->requestLayout()V

    return-void
.end method

.method public setOnItemListener(Lcom/tv/leanback/OnItemListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tv/leanback/OnItemListener<",
            "Lcom/tv/leanback/VerticalGridView;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/tv/leanback/VerticalGridView;->onItemListener:Lcom/tv/leanback/OnItemListener;

    return-void
.end method
