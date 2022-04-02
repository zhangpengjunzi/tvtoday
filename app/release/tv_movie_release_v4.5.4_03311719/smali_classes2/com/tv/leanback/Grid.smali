.class abstract Lcom/tv/leanback/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tv/leanback/Grid$Location;,
        Lcom/tv/leanback/Grid$Provider;
    }
.end annotation


# static fields
.field public static final START_DEFAULT:I = -0x1


# instance fields
.field protected mFirstVisibleIndex:I

.field protected mLastVisibleIndex:I

.field protected mNumRows:I

.field protected mProvider:Lcom/tv/leanback/Grid$Provider;

.field protected mReversedFlow:Z

.field protected mSpacing:I

.field protected mStartIndex:I

.field protected mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lcom/tv/leanback/Grid;->mFirstVisibleIndex:I

    .line 104
    iput v0, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    .line 109
    iput v0, p0, Lcom/tv/leanback/Grid;->mStartIndex:I

    return-void
.end method

.method public static createGrid(I)Lcom/tv/leanback/Grid;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 117
    new-instance p0, Lcom/tv/leanback/SingleRow;

    invoke-direct {p0}, Lcom/tv/leanback/SingleRow;-><init>()V

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Lcom/tv/leanback/StaggeredGridDefault;

    invoke-direct {v0}, Lcom/tv/leanback/StaggeredGridDefault;-><init>()V

    .line 121
    invoke-virtual {v0, p0}, Lcom/tv/leanback/Grid;->setNumRows(I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private resetVisibleIndexIfEmpty()V
    .locals 2

    .line 411
    iget v0, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    iget v1, p0, Lcom/tv/leanback/Grid;->mFirstVisibleIndex:I

    if-ge v0, v1, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/tv/leanback/Grid;->resetVisibleIndex()V

    :cond_0
    return-void
.end method


# virtual methods
.method public appendOneColumnVisibleItems()Z
    .locals 2

    .line 354
    iget-boolean v0, p0, Lcom/tv/leanback/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tv/leanback/Grid;->appendVisibleItems(IZ)Z

    move-result v0

    return v0
.end method

.method public final appendVisibleItems(I)V
    .locals 1

    const/4 v0, 0x0

    .line 362
    invoke-virtual {p0, p1, v0}, Lcom/tv/leanback/Grid;->appendVisibleItems(IZ)Z

    return-void
.end method

.method protected abstract appendVisibleItems(IZ)Z
.end method

.method protected final checkAppendOverLimit(I)Z
    .locals 4

    .line 283
    iget v0, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/tv/leanback/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3, v2}, Lcom/tv/leanback/Grid;->findRowMin(Z[I)I

    move-result v0

    iget v2, p0, Lcom/tv/leanback/Grid;->mSpacing:I

    add-int/2addr p1, v2

    if-gt v0, p1, :cond_2

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/tv/leanback/Grid;->findRowMax(Z[I)I

    move-result v0

    iget v2, p0, Lcom/tv/leanback/Grid;->mSpacing:I

    sub-int/2addr p1, v2

    if-lt v0, p1, :cond_2

    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected final checkPrependOverLimit(I)Z
    .locals 4

    .line 294
    iget v0, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 297
    :cond_0
    iget-boolean v0, p0, Lcom/tv/leanback/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/tv/leanback/Grid;->findRowMax(Z[I)I

    move-result v0

    iget v2, p0, Lcom/tv/leanback/Grid;->mSpacing:I

    sub-int/2addr p1, v2

    if-lt v0, p1, :cond_2

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/tv/leanback/Grid;->findRowMin(Z[I)I

    move-result v0

    iget v2, p0, Lcom/tv/leanback/Grid;->mSpacing:I

    add-int/2addr p1, v2

    if-gt v0, p1, :cond_2

    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    return-void
.end method

.method public abstract debugPrint(Ljava/io/PrintWriter;)V
.end method

.method protected abstract findRowMax(ZI[I)I
.end method

.method public final findRowMax(Z[I)I
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/tv/leanback/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tv/leanback/Grid;->mFirstVisibleIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/tv/leanback/Grid;->findRowMax(ZI[I)I

    move-result p1

    return p1
.end method

.method protected abstract findRowMin(ZI[I)I
.end method

.method public final findRowMin(Z[I)I
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/tv/leanback/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tv/leanback/Grid;->mFirstVisibleIndex:I

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/tv/leanback/Grid;->findRowMin(ZI[I)I

    move-result p1

    return p1
.end method

.method public final getFirstVisibleIndex()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/tv/leanback/Grid;->mFirstVisibleIndex:I

    return v0
.end method

.method public final getItemPositionsInRows()[Landroidx/collection/CircularIntArray;
    .locals 2

    .line 319
    invoke-virtual {p0}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/tv/leanback/Grid;->getLastVisibleIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tv/leanback/Grid;->getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;

    move-result-object v0

    return-object v0
.end method

.method public abstract getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
.end method

.method public final getLastVisibleIndex()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    return v0
.end method

.method public abstract getLocation(I)Lcom/tv/leanback/Grid$Location;
.end method

.method public getNumRows()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/tv/leanback/Grid;->mNumRows:I

    return v0
.end method

.method public final getRowIndex(I)I
    .locals 0

    .line 241
    invoke-virtual {p0, p1}, Lcom/tv/leanback/Grid;->getLocation(I)Lcom/tv/leanback/Grid$Location;

    move-result-object p1

    iget p1, p1, Lcom/tv/leanback/Grid$Location;->row:I

    return p1
.end method

.method public invalidateItemsAfter(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    .line 224
    :cond_0
    iget v0, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    if-gez v0, :cond_1

    return-void

    .line 227
    :cond_1
    :goto_0
    iget v0, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    if-lt v0, p1, :cond_2

    .line 228
    iget-object v1, p0, Lcom/tv/leanback/Grid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v1, v0}, Lcom/tv/leanback/Grid$Provider;->removeItem(I)V

    .line 229
    iget v0, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    goto :goto_0

    .line 231
    :cond_2
    invoke-direct {p0}, Lcom/tv/leanback/Grid;->resetVisibleIndexIfEmpty()V

    .line 232
    invoke-virtual {p0}, Lcom/tv/leanback/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-gez v0, :cond_3

    .line 233
    invoke-virtual {p0, p1}, Lcom/tv/leanback/Grid;->setStart(I)V

    :cond_3
    return-void
.end method

.method public isReversedFlow()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/tv/leanback/Grid;->mReversedFlow:Z

    return v0
.end method

.method public final prependOneColumnVisibleItems()Z
    .locals 2

    .line 328
    iget-boolean v0, p0, Lcom/tv/leanback/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tv/leanback/Grid;->prependVisibleItems(IZ)Z

    move-result v0

    return v0
.end method

.method public final prependVisibleItems(I)V
    .locals 1

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, p1, v0}, Lcom/tv/leanback/Grid;->prependVisibleItems(IZ)Z

    return-void
.end method

.method protected abstract prependVisibleItems(IZ)Z
.end method

.method public removeInvisibleItemsAtEnd(II)V
    .locals 4

    .line 378
    :goto_0
    iget v0, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    iget v1, p0, Lcom/tv/leanback/Grid;->mFirstVisibleIndex:I

    if-lt v0, v1, :cond_2

    if-le v0, p1, :cond_2

    .line 379
    iget-boolean v1, p0, Lcom/tv/leanback/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tv/leanback/Grid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v1, v0}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v0

    if-lt v0, p2, :cond_1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/tv/leanback/Grid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    .line 380
    invoke-interface {v1, v0}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v0

    if-gt v0, p2, :cond_1

    :goto_1
    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    .line 382
    iget-object v0, p0, Lcom/tv/leanback/Grid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v1, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    invoke-interface {v0, v1}, Lcom/tv/leanback/Grid$Provider;->removeItem(I)V

    .line 383
    iget v0, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    goto :goto_0

    .line 388
    :cond_2
    invoke-direct {p0}, Lcom/tv/leanback/Grid;->resetVisibleIndexIfEmpty()V

    return-void
.end method

.method public removeInvisibleItemsAtFront(II)V
    .locals 5

    .line 395
    :goto_0
    iget v0, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    iget v1, p0, Lcom/tv/leanback/Grid;->mFirstVisibleIndex:I

    if-lt v0, v1, :cond_2

    if-ge v1, p1, :cond_2

    .line 396
    iget-boolean v0, p0, Lcom/tv/leanback/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tv/leanback/Grid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v0, v1}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Lcom/tv/leanback/Grid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v4, p0, Lcom/tv/leanback/Grid;->mFirstVisibleIndex:I

    .line 397
    invoke-interface {v1, v4}, Lcom/tv/leanback/Grid$Provider;->getSize(I)I

    move-result v1

    add-int/2addr v0, v1

    if-gt v0, p2, :cond_1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tv/leanback/Grid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    .line 398
    invoke-interface {v0, v1}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Lcom/tv/leanback/Grid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v4, p0, Lcom/tv/leanback/Grid;->mFirstVisibleIndex:I

    .line 399
    invoke-interface {v1, v4}, Lcom/tv/leanback/Grid$Provider;->getSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-lt v0, p2, :cond_1

    :goto_1
    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    .line 401
    iget-object v0, p0, Lcom/tv/leanback/Grid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v1, p0, Lcom/tv/leanback/Grid;->mFirstVisibleIndex:I

    invoke-interface {v0, v1}, Lcom/tv/leanback/Grid$Provider;->removeItem(I)V

    .line 402
    iget v0, p0, Lcom/tv/leanback/Grid;->mFirstVisibleIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/tv/leanback/Grid;->mFirstVisibleIndex:I

    goto :goto_0

    .line 407
    :cond_2
    invoke-direct {p0}, Lcom/tv/leanback/Grid;->resetVisibleIndexIfEmpty()V

    return-void
.end method

.method public resetVisibleIndex()V
    .locals 1

    const/4 v0, -0x1

    .line 213
    iput v0, p0, Lcom/tv/leanback/Grid;->mLastVisibleIndex:I

    iput v0, p0, Lcom/tv/leanback/Grid;->mFirstVisibleIndex:I

    return-void
.end method

.method setNumRows(I)V
    .locals 2

    if-lez p1, :cond_2

    .line 183
    iget v0, p0, Lcom/tv/leanback/Grid;->mNumRows:I

    if-ne v0, p1, :cond_0

    return-void

    .line 186
    :cond_0
    iput p1, p0, Lcom/tv/leanback/Grid;->mNumRows:I

    .line 187
    new-array p1, p1, [Landroidx/collection/CircularIntArray;

    iput-object p1, p0, Lcom/tv/leanback/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    const/4 p1, 0x0

    .line 188
    :goto_0
    iget v0, p0, Lcom/tv/leanback/Grid;->mNumRows:I

    if-ge p1, v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/tv/leanback/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    new-instance v1, Landroidx/collection/CircularIntArray;

    invoke-direct {v1}, Landroidx/collection/CircularIntArray;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 181
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setProvider(Lcom/tv/leanback/Grid$Provider;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/tv/leanback/Grid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    return-void
.end method

.method public final setReversedFlow(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/tv/leanback/Grid;->mReversedFlow:Z

    return-void
.end method

.method public final setSpacing(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/tv/leanback/Grid;->mSpacing:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/tv/leanback/Grid;->mStartIndex:I

    return-void
.end method
