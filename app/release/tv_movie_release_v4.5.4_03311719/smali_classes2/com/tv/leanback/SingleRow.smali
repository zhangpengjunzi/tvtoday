.class Lcom/tv/leanback/SingleRow;
.super Lcom/tv/leanback/Grid;
.source "SingleRow.java"


# instance fields
.field private mTmpItem:[Ljava/lang/Object;

.field private final mTmpLocation:Lcom/tv/leanback/Grid$Location;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/tv/leanback/Grid;-><init>()V

    .line 15
    new-instance v0, Lcom/tv/leanback/Grid$Location;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tv/leanback/Grid$Location;-><init>(I)V

    iput-object v0, p0, Lcom/tv/leanback/SingleRow;->mTmpLocation:Lcom/tv/leanback/Grid$Location;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 16
    iput-object v1, p0, Lcom/tv/leanback/SingleRow;->mTmpItem:[Ljava/lang/Object;

    .line 19
    invoke-virtual {p0, v0}, Lcom/tv/leanback/SingleRow;->setNumRows(I)V

    return-void
.end method


# virtual methods
.method protected final appendVisibleItems(IZ)Z
    .locals 9

    .line 92
    iget-object v0, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v0}, Lcom/tv/leanback/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 95
    invoke-virtual {p0, p1}, Lcom/tv/leanback/SingleRow;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/tv/leanback/SingleRow;->getStartIndexForAppend()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v4}, Lcom/tv/leanback/Grid$Provider;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 101
    iget-object v3, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget-object v4, p0, Lcom/tv/leanback/SingleRow;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v3, v0, v2, v4}, Lcom/tv/leanback/Grid$Provider;->createItem(IZ[Ljava/lang/Object;)I

    move-result v6

    .line 103
    iget v3, p0, Lcom/tv/leanback/SingleRow;->mFirstVisibleIndex:I

    if-ltz v3, :cond_4

    iget v3, p0, Lcom/tv/leanback/SingleRow;->mLastVisibleIndex:I

    if-gez v3, :cond_2

    goto :goto_2

    .line 107
    :cond_2
    iget-boolean v3, p0, Lcom/tv/leanback/SingleRow;->mReversedFlow:Z

    if-eqz v3, :cond_3

    .line 108
    iget-object v3, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v3

    iget-object v5, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v5, v4}, Lcom/tv/leanback/Grid$Provider;->getSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/tv/leanback/SingleRow;->mSpacing:I

    sub-int/2addr v3, v4

    goto :goto_1

    .line 110
    :cond_3
    iget-object v3, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v3

    iget-object v5, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v5, v4}, Lcom/tv/leanback/Grid$Provider;->getSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/tv/leanback/SingleRow;->mSpacing:I

    add-int/2addr v3, v4

    .line 112
    :goto_1
    iput v0, p0, Lcom/tv/leanback/SingleRow;->mLastVisibleIndex:I

    goto :goto_4

    .line 104
    :cond_4
    :goto_2
    iget-boolean v3, p0, Lcom/tv/leanback/SingleRow;->mReversedFlow:Z

    if-eqz v3, :cond_5

    const v3, 0x7fffffff

    goto :goto_3

    :cond_5
    const/high16 v3, -0x80000000

    .line 105
    :goto_3
    iput v0, p0, Lcom/tv/leanback/SingleRow;->mFirstVisibleIndex:I

    iput v0, p0, Lcom/tv/leanback/SingleRow;->mLastVisibleIndex:I

    :goto_4
    move v8, v3

    .line 114
    iget-object v3, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget-object v4, p0, Lcom/tv/leanback/SingleRow;->mTmpItem:[Ljava/lang/Object;

    aget-object v4, v4, v1

    const/4 v7, 0x0

    move v5, v0

    invoke-interface/range {v3 .. v8}, Lcom/tv/leanback/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_8

    .line 116
    invoke-virtual {p0, p1}, Lcom/tv/leanback/SingleRow;->checkAppendOverLimit(I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    move v2, v3

    :cond_8
    :goto_5
    return v2
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 3

    .line 128
    iget-boolean v0, p0, Lcom/tv/leanback/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_0

    if-lez p2, :cond_3

    goto :goto_0

    :cond_0
    if-gez p2, :cond_3

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/tv/leanback/SingleRow;->getFirstVisibleIndex()I

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/tv/leanback/SingleRow;->getStartIndexForPrepend()I

    move-result p2

    .line 135
    iget-object v0, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v1, p0, Lcom/tv/leanback/SingleRow;->mFirstVisibleIndex:I

    invoke-interface {v0, v1}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/tv/leanback/SingleRow;->mReversedFlow:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/tv/leanback/SingleRow;->mSpacing:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/tv/leanback/SingleRow;->mSpacing:I

    neg-int v1, v1

    :goto_1
    add-int/2addr v0, v1

    goto :goto_2

    .line 139
    :cond_3
    invoke-virtual {p0}, Lcom/tv/leanback/SingleRow;->getLastVisibleIndex()I

    move-result p2

    iget-object v0, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v0}, Lcom/tv/leanback/Grid$Provider;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_4

    return-void

    .line 143
    :cond_4
    invoke-virtual {p0}, Lcom/tv/leanback/SingleRow;->getStartIndexForAppend()I

    move-result p2

    .line 144
    iget-object v0, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v1, p0, Lcom/tv/leanback/SingleRow;->mLastVisibleIndex:I

    invoke-interface {v0, v1}, Lcom/tv/leanback/Grid$Provider;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/tv/leanback/SingleRow;->mSpacing:I

    add-int/2addr v0, v1

    .line 145
    iget-object v1, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v2, p0, Lcom/tv/leanback/SingleRow;->mLastVisibleIndex:I

    invoke-interface {v1, v2}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/tv/leanback/SingleRow;->mReversedFlow:Z

    if-eqz v2, :cond_5

    neg-int v0, v0

    :cond_5
    add-int/2addr v0, v1

    :goto_2
    sub-int/2addr v0, p1

    .line 149
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 150
    invoke-interface {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    return-void
.end method

.method public final debugPrint(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "SingleRow<"

    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    iget v0, p0, Lcom/tv/leanback/SingleRow;->mFirstVisibleIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    .line 32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    iget v0, p0, Lcom/tv/leanback/SingleRow;->mLastVisibleIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ">"

    .line 34
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method protected final findRowMax(ZI[I)I
    .locals 0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 175
    aput p1, p3, p1

    const/4 p1, 0x1

    .line 176
    aput p2, p3, p1

    .line 178
    :cond_0
    iget-boolean p1, p0, Lcom/tv/leanback/SingleRow;->mReversedFlow:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {p1, p2}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    .line 179
    invoke-interface {p1, p2}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result p1

    iget-object p3, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {p3, p2}, Lcom/tv/leanback/Grid$Provider;->getSize(I)I

    move-result p2

    add-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method protected final findRowMin(ZI[I)I
    .locals 0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 165
    aput p1, p3, p1

    const/4 p1, 0x1

    .line 166
    aput p2, p3, p1

    .line 168
    :cond_0
    iget-boolean p1, p0, Lcom/tv/leanback/SingleRow;->mReversedFlow:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {p1, p2}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result p1

    iget-object p3, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {p3, p2}, Lcom/tv/leanback/Grid$Provider;->getSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    .line 169
    invoke-interface {p1, p2}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/tv/leanback/SingleRow;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/collection/CircularIntArray;->clear()V

    .line 157
    iget-object v0, p0, Lcom/tv/leanback/SingleRow;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 158
    iget-object p1, p0, Lcom/tv/leanback/SingleRow;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    aget-object p1, p1, v1

    invoke-virtual {p1, p2}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 159
    iget-object p1, p0, Lcom/tv/leanback/SingleRow;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    return-object p1
.end method

.method public final getLocation(I)Lcom/tv/leanback/Grid$Location;
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/tv/leanback/SingleRow;->mTmpLocation:Lcom/tv/leanback/Grid$Location;

    return-object p1
.end method

.method getStartIndexForAppend()I
    .locals 2

    .line 39
    iget v0, p0, Lcom/tv/leanback/SingleRow;->mLastVisibleIndex:I

    if-ltz v0, :cond_0

    .line 40
    iget v0, p0, Lcom/tv/leanback/SingleRow;->mLastVisibleIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 41
    :cond_0
    iget v0, p0, Lcom/tv/leanback/SingleRow;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 42
    iget v0, p0, Lcom/tv/leanback/SingleRow;->mStartIndex:I

    iget-object v1, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v1}, Lcom/tv/leanback/Grid$Provider;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getStartIndexForPrepend()I
    .locals 2

    .line 49
    iget v0, p0, Lcom/tv/leanback/SingleRow;->mFirstVisibleIndex:I

    if-ltz v0, :cond_0

    .line 50
    iget v0, p0, Lcom/tv/leanback/SingleRow;->mFirstVisibleIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 51
    :cond_0
    iget v0, p0, Lcom/tv/leanback/SingleRow;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 52
    iget v0, p0, Lcom/tv/leanback/SingleRow;->mStartIndex:I

    iget-object v1, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v1}, Lcom/tv/leanback/Grid$Provider;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v0}, Lcom/tv/leanback/Grid$Provider;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected final prependVisibleItems(IZ)Z
    .locals 9

    .line 60
    iget-object v0, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v0}, Lcom/tv/leanback/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 63
    invoke-virtual {p0, p1}, Lcom/tv/leanback/SingleRow;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/tv/leanback/SingleRow;->getStartIndexForPrepend()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_7

    .line 68
    iget-object v3, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget-object v4, p0, Lcom/tv/leanback/SingleRow;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v3, v0, v1, v4}, Lcom/tv/leanback/Grid$Provider;->createItem(IZ[Ljava/lang/Object;)I

    move-result v6

    .line 70
    iget v3, p0, Lcom/tv/leanback/SingleRow;->mFirstVisibleIndex:I

    if-ltz v3, :cond_4

    iget v3, p0, Lcom/tv/leanback/SingleRow;->mLastVisibleIndex:I

    if-gez v3, :cond_2

    goto :goto_2

    .line 74
    :cond_2
    iget-boolean v3, p0, Lcom/tv/leanback/SingleRow;->mReversedFlow:Z

    if-eqz v3, :cond_3

    .line 75
    iget-object v3, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v3

    iget v4, p0, Lcom/tv/leanback/SingleRow;->mSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    goto :goto_1

    .line 77
    :cond_3
    iget-object v3, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v3

    iget v4, p0, Lcom/tv/leanback/SingleRow;->mSpacing:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    .line 79
    :goto_1
    iput v0, p0, Lcom/tv/leanback/SingleRow;->mFirstVisibleIndex:I

    goto :goto_4

    .line 71
    :cond_4
    :goto_2
    iget-boolean v3, p0, Lcom/tv/leanback/SingleRow;->mReversedFlow:Z

    if-eqz v3, :cond_5

    const/high16 v3, -0x80000000

    goto :goto_3

    :cond_5
    const v3, 0x7fffffff

    .line 72
    :goto_3
    iput v0, p0, Lcom/tv/leanback/SingleRow;->mFirstVisibleIndex:I

    iput v0, p0, Lcom/tv/leanback/SingleRow;->mLastVisibleIndex:I

    :goto_4
    move v8, v3

    .line 81
    iget-object v3, p0, Lcom/tv/leanback/SingleRow;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget-object v4, p0, Lcom/tv/leanback/SingleRow;->mTmpItem:[Ljava/lang/Object;

    aget-object v4, v4, v1

    const/4 v7, 0x0

    move v5, v0

    invoke-interface/range {v3 .. v8}, Lcom/tv/leanback/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_8

    .line 83
    invoke-virtual {p0, p1}, Lcom/tv/leanback/SingleRow;->checkPrependOverLimit(I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    move v2, v3

    :cond_8
    :goto_5
    return v2
.end method
