.class abstract Lcom/tv/leanback/StaggeredGrid;
.super Lcom/tv/leanback/Grid;
.source "StaggeredGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tv/leanback/StaggeredGrid$Location;
    }
.end annotation


# instance fields
.field protected mFirstIndex:I

.field protected mLocations:Landroidx/collection/CircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/CircularArray<",
            "Lcom/tv/leanback/StaggeredGrid$Location;",
            ">;"
        }
    .end annotation
.end field

.field protected mPendingItem:Ljava/lang/Object;

.field protected mPendingItemSize:I

.field private mTmpItem:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/tv/leanback/Grid;-><init>()V

    .line 52
    new-instance v0, Landroidx/collection/CircularArray;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroidx/collection/CircularArray;-><init>(I)V

    iput-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstIndex:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    iput-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    return-void
.end method

.method private calculateOffsetAfterLastItem(I)I
    .locals 3

    .line 192
    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGrid;->getLastIndex()I

    move-result v0

    .line 194
    :goto_0
    iget v1, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstIndex:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 195
    invoke-virtual {p0, v0}, Lcom/tv/leanback/StaggeredGrid;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v1

    .line 196
    iget v1, v1, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGrid;->getLastIndex()I

    move-result v0

    .line 208
    :cond_2
    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGrid;->isReversedFlow()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/tv/leanback/StaggeredGrid;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object p1

    iget p1, p1, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    neg-int p1, p1

    iget v1, p0, Lcom/tv/leanback/StaggeredGrid;->mSpacing:I

    sub-int/2addr p1, v1

    goto :goto_2

    .line 209
    :cond_3
    invoke-virtual {p0, v0}, Lcom/tv/leanback/StaggeredGrid;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object p1

    iget p1, p1, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    iget v1, p0, Lcom/tv/leanback/StaggeredGrid;->mSpacing:I

    add-int/2addr p1, v1

    :goto_2
    add-int/2addr v0, v2

    .line 210
    :goto_3
    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGrid;->getLastIndex()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 211
    invoke-virtual {p0, v0}, Lcom/tv/leanback/StaggeredGrid;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v1

    iget v1, v1, Lcom/tv/leanback/StaggeredGrid$Location;->offset:I

    sub-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return p1
.end method


# virtual methods
.method protected final appendVisbleItemsWithCache(IZ)Z
    .locals 15

    move-object v0, p0

    .line 285
    iget-object v1, v0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 288
    :cond_0
    iget-object v1, v0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v1}, Lcom/tv/leanback/Grid$Provider;->getCount()I

    move-result v1

    .line 291
    iget v3, v0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    const v4, 0x7fffffff

    const/4 v5, 0x1

    if-ltz v3, :cond_1

    .line 293
    iget v3, v0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    add-int/2addr v3, v5

    .line 294
    iget-object v6, v0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v7, v0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    invoke-interface {v6, v7}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v6

    goto :goto_1

    .line 298
    :cond_1
    iget v3, v0, Lcom/tv/leanback/StaggeredGrid;->mStartIndex:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    iget v3, v0, Lcom/tv/leanback/StaggeredGrid;->mStartIndex:I

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 299
    :goto_0
    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGrid;->getLastIndex()I

    move-result v6

    add-int/2addr v6, v5

    if-gt v3, v6, :cond_c

    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGrid;->getFirstIndex()I

    move-result v6

    if-ge v3, v6, :cond_3

    goto :goto_3

    .line 303
    :cond_3
    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGrid;->getLastIndex()I

    move-result v6

    if-le v3, v6, :cond_4

    return v2

    :cond_4
    const v6, 0x7fffffff

    .line 308
    :goto_1
    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGrid;->getLastIndex()I

    move-result v7

    :goto_2
    if-ge v3, v1, :cond_b

    if-gt v3, v7, :cond_b

    .line 310
    invoke-virtual {p0, v3}, Lcom/tv/leanback/StaggeredGrid;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v8

    if-eq v6, v4, :cond_5

    .line 312
    iget v9, v8, Lcom/tv/leanback/StaggeredGrid$Location;->offset:I

    add-int/2addr v6, v9

    .line 314
    :cond_5
    iget v14, v8, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    .line 315
    iget-object v9, v0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget-object v10, v0, Lcom/tv/leanback/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v9, v3, v5, v10}, Lcom/tv/leanback/Grid$Provider;->createItem(IZ[Ljava/lang/Object;)I

    move-result v11

    .line 316
    iget v9, v8, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    if-eq v11, v9, :cond_6

    .line 317
    iput v11, v8, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    .line 318
    iget-object v8, v0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    sub-int/2addr v7, v3

    invoke-virtual {v8, v7}, Landroidx/collection/CircularArray;->removeFromEnd(I)V

    move v7, v3

    .line 321
    :cond_6
    iput v3, v0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    .line 322
    iget v8, v0, Lcom/tv/leanback/StaggeredGrid;->mFirstVisibleIndex:I

    if-gez v8, :cond_7

    .line 323
    iput v3, v0, Lcom/tv/leanback/StaggeredGrid;->mFirstVisibleIndex:I

    .line 325
    :cond_7
    iget-object v8, v0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget-object v9, v0, Lcom/tv/leanback/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v9, v9, v2

    move v10, v3

    move v12, v14

    move v13, v6

    invoke-interface/range {v8 .. v13}, Lcom/tv/leanback/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_8

    .line 326
    invoke-virtual/range {p0 .. p1}, Lcom/tv/leanback/StaggeredGrid;->checkAppendOverLimit(I)Z

    move-result v8

    if-eqz v8, :cond_8

    return v5

    :cond_8
    if-ne v6, v4, :cond_9

    .line 330
    iget-object v6, v0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v6, v3}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v6

    .line 333
    :cond_9
    iget v8, v0, Lcom/tv/leanback/StaggeredGrid;->mNumRows:I

    sub-int/2addr v8, v5

    if-ne v14, v8, :cond_a

    if-eqz p2, :cond_a

    return v5

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    return v2

    .line 301
    :cond_c
    :goto_3
    iget-object v1, v0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v1}, Landroidx/collection/CircularArray;->clear()V

    return v2
.end method

.method protected final appendVisibleItemToRow(III)I
    .locals 10

    .line 354
    iget v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    if-ltz v0, :cond_1

    .line 355
    iget v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGrid;->getLastIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    add-int/lit8 v1, p1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 360
    :cond_1
    :goto_0
    iget v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_3

    .line 363
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGrid;->getLastIndex()I

    move-result v0

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_2

    .line 364
    invoke-direct {p0, p2}, Lcom/tv/leanback/StaggeredGrid;->calculateOffsetAfterLastItem(I)I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v3, p0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    invoke-interface {v0, v3}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v0

    sub-int v0, p3, v0

    .line 371
    :goto_1
    new-instance v3, Lcom/tv/leanback/StaggeredGrid$Location;

    invoke-direct {v3, p2, v0, v1}, Lcom/tv/leanback/StaggeredGrid$Location;-><init>(III)V

    .line 372
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0, v3}, Landroidx/collection/CircularArray;->addLast(Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 375
    iget v0, p0, Lcom/tv/leanback/StaggeredGrid;->mPendingItemSize:I

    iput v0, v3, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    .line 376
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 377
    iput-object v1, p0, Lcom/tv/leanback/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    goto :goto_2

    .line 379
    :cond_4
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget-object v4, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, p1, v2, v4}, Lcom/tv/leanback/Grid$Provider;->createItem(IZ[Ljava/lang/Object;)I

    move-result v0

    iput v0, v3, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    .line 380
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v0, v0, v1

    :goto_2
    move-object v5, v0

    .line 382
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 383
    iput p1, p0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    iput p1, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstVisibleIndex:I

    iput p1, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstIndex:I

    goto :goto_3

    .line 385
    :cond_5
    iget v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v0, :cond_6

    .line 386
    iput p1, p0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    iput p1, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstVisibleIndex:I

    goto :goto_3

    .line 388
    :cond_6
    iget v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    .line 391
    :goto_3
    iget-object v4, p0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v7, v3, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    move v6, p1

    move v8, p2

    move v9, p3

    invoke-interface/range {v4 .. v9}, Lcom/tv/leanback/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 392
    iget p1, v3, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    return p1
.end method

.method protected final appendVisibleItems(IZ)Z
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v0}, Lcom/tv/leanback/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 265
    invoke-virtual {p0, p1}, Lcom/tv/leanback/StaggeredGrid;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 269
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tv/leanback/StaggeredGrid;->appendVisbleItemsWithCache(IZ)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    .line 274
    iget-object p2, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    .line 275
    :goto_0
    iput-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return p1

    .line 272
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/tv/leanback/StaggeredGrid;->appendVisibleItemsWithoutCache(IZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    iget-object p2, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    .line 275
    iput-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 276
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected abstract appendVisibleItemsWithoutCache(IZ)Z
.end method

.method public final debugPrint(Ljava/io/PrintWriter;)V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 97
    iget-object v2, p0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v2, v1}, Landroidx/collection/CircularArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tv/leanback/StaggeredGrid$Location;

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstIndex:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " "

    .line 99
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getFirstIndex()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstIndex:I

    return v0
.end method

.method public final getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
    .locals 3

    const/4 v0, 0x0

    .line 397
    :goto_0
    iget v1, p0, Lcom/tv/leanback/StaggeredGrid;->mNumRows:I

    if-ge v0, v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    :goto_1
    if-gt p1, p2, :cond_2

    .line 402
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    invoke-virtual {p0, p1}, Lcom/tv/leanback/StaggeredGrid;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v1

    iget v1, v1, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    aget-object v0, v0, v1

    .line 403
    invoke-virtual {v0}, Landroidx/collection/CircularIntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroidx/collection/CircularIntArray;->getLast()I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    if-ne v1, v2, :cond_1

    .line 405
    invoke-virtual {v0}, Landroidx/collection/CircularIntArray;->popLast()I

    .line 406
    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    goto :goto_2

    .line 409
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 410
    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 414
    :cond_2
    iget-object p1, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    return-object p1
.end method

.method public final getLastIndex()I
    .locals 2

    .line 76
    iget v0, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstIndex:I

    iget-object v1, p0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic getLocation(I)Lcom/tv/leanback/Grid$Location;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/tv/leanback/StaggeredGrid;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object p1

    return-object p1
.end method

.method public final getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    iget v1, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstIndex:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/collection/CircularArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tv/leanback/StaggeredGrid$Location;

    return-object p1
.end method

.method public final getSize()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    return v0
.end method

.method public invalidateItemsAfter(I)V
    .locals 2

    .line 419
    invoke-super {p0, p1}, Lcom/tv/leanback/Grid;->invalidateItemsAfter(I)V

    .line 420
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGrid;->getLastIndex()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/collection/CircularArray;->removeFromEnd(I)V

    .line 421
    iget-object p1, p0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p1}, Landroidx/collection/CircularArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 422
    iput p1, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstIndex:I

    :cond_0
    return-void
.end method

.method protected final prependVisbleItemsWithCache(IZ)Z
    .locals 13

    .line 128
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v0}, Lcom/tv/leanback/Grid$Provider;->getCount()I

    .line 132
    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGrid;->getFirstIndex()I

    .line 136
    iget v0, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstVisibleIndex:I

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v3, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-interface {v0, v3}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 139
    iget v3, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-virtual {p0, v3}, Lcom/tv/leanback/StaggeredGrid;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v3

    iget v3, v3, Lcom/tv/leanback/StaggeredGrid$Location;->offset:I

    .line 140
    iget v4, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstVisibleIndex:I

    sub-int/2addr v4, v2

    move v10, v4

    goto :goto_1

    :cond_1
    const v0, 0x7fffffff

    .line 145
    iget v3, p0, Lcom/tv/leanback/StaggeredGrid;->mStartIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/tv/leanback/StaggeredGrid;->mStartIndex:I

    move v4, v3

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGrid;->getLastIndex()I

    move-result v3

    if-gt v4, v3, :cond_a

    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGrid;->getFirstIndex()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v4, v3, :cond_3

    goto :goto_2

    .line 150
    :cond_3
    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGrid;->getFirstIndex()I

    move-result v3

    if-ge v4, v3, :cond_4

    return v1

    :cond_4
    move v10, v4

    const/4 v3, 0x0

    .line 155
    :goto_1
    iget v4, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstIndex:I

    if-lt v10, v4, :cond_9

    .line 156
    invoke-virtual {p0, v10}, Lcom/tv/leanback/StaggeredGrid;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v11

    .line 157
    iget v12, v11, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    .line 158
    iget-object v4, p0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget-object v5, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v4, v10, v1, v5}, Lcom/tv/leanback/Grid$Provider;->createItem(IZ[Ljava/lang/Object;)I

    move-result v7

    .line 159
    iget v4, v11, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    if-eq v7, v4, :cond_5

    .line 160
    iget-object p1, p0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    add-int/2addr v10, v2

    iget p2, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstIndex:I

    sub-int/2addr v10, p2

    invoke-virtual {p1, v10}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    .line 161
    iget p1, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstVisibleIndex:I

    iput p1, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstIndex:I

    .line 163
    iget-object p1, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/tv/leanback/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 164
    iput v7, p0, Lcom/tv/leanback/StaggeredGrid;->mPendingItemSize:I

    return v1

    .line 167
    :cond_5
    iput v10, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstVisibleIndex:I

    .line 168
    iget v4, p0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v4, :cond_6

    .line 169
    iput v10, p0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    .line 171
    :cond_6
    iget-object v4, p0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget-object v5, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v5, v5, v1

    sub-int v9, v0, v3

    move v6, v10

    move v8, v12

    invoke-interface/range {v4 .. v9}, Lcom/tv/leanback/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_7

    .line 172
    invoke-virtual {p0, p1}, Lcom/tv/leanback/StaggeredGrid;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 175
    :cond_7
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v0, v10}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 176
    iget v3, v11, Lcom/tv/leanback/StaggeredGrid$Location;->offset:I

    if-nez v12, :cond_8

    if-eqz p2, :cond_8

    return v2

    :cond_8
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    :cond_9
    return v1

    .line 148
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p1}, Landroidx/collection/CircularArray;->clear()V

    return v1
.end method

.method protected final prependVisibleItemToRow(III)I
    .locals 11

    .line 229
    iget v0, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstVisibleIndex:I

    if-ltz v0, :cond_1

    .line 230
    iget v0, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGrid;->getFirstIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstVisibleIndex:I

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 235
    :cond_1
    :goto_0
    iget v0, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/tv/leanback/StaggeredGrid;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 236
    :goto_1
    iget-object v2, p0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v3, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstIndex:I

    invoke-interface {v2, v3}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v2

    .line 237
    new-instance v3, Lcom/tv/leanback/StaggeredGrid$Location;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4, v4}, Lcom/tv/leanback/StaggeredGrid$Location;-><init>(III)V

    .line 238
    iget-object v5, p0, Lcom/tv/leanback/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v5, v3}, Landroidx/collection/CircularArray;->addFirst(Ljava/lang/Object;)V

    .line 240
    iget-object v5, p0, Lcom/tv/leanback/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 241
    iget v4, p0, Lcom/tv/leanback/StaggeredGrid;->mPendingItemSize:I

    iput v4, v3, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    .line 242
    iget-object v4, p0, Lcom/tv/leanback/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 243
    iput-object v1, p0, Lcom/tv/leanback/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    goto :goto_2

    .line 245
    :cond_3
    iget-object v1, p0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget-object v5, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v1, p1, v4, v5}, Lcom/tv/leanback/Grid$Provider;->createItem(IZ[Ljava/lang/Object;)I

    move-result v1

    iput v1, v3, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    .line 246
    iget-object v1, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v4, v1, v4

    :goto_2
    move-object v6, v4

    .line 248
    iput p1, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstVisibleIndex:I

    iput p1, p0, Lcom/tv/leanback/StaggeredGrid;->mFirstIndex:I

    .line 249
    iget v1, p0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v1, :cond_4

    .line 250
    iput p1, p0, Lcom/tv/leanback/StaggeredGrid;->mLastVisibleIndex:I

    .line 252
    :cond_4
    iget-boolean v1, p0, Lcom/tv/leanback/StaggeredGrid;->mReversedFlow:Z

    if-nez v1, :cond_5

    iget v1, v3, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    sub-int/2addr p3, v1

    goto :goto_3

    :cond_5
    iget v1, v3, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    add-int/2addr p3, v1

    :goto_3
    move v10, p3

    if-eqz v0, :cond_6

    sub-int/2addr v2, v10

    .line 254
    iput v2, v0, Lcom/tv/leanback/StaggeredGrid$Location;->offset:I

    .line 256
    :cond_6
    iget-object v5, p0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v8, v3, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    move v7, p1

    move v9, p2

    invoke-interface/range {v5 .. v10}, Lcom/tv/leanback/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 257
    iget p1, v3, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    return p1
.end method

.method protected final prependVisibleItems(IZ)Z
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v0}, Lcom/tv/leanback/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 109
    invoke-virtual {p0, p1}, Lcom/tv/leanback/StaggeredGrid;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 113
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tv/leanback/StaggeredGrid;->prependVisbleItemsWithCache(IZ)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    .line 118
    iget-object p2, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    .line 119
    :goto_0
    iput-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return p1

    .line 116
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/tv/leanback/StaggeredGrid;->prependVisibleItemsWithoutCache(IZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    iget-object p2, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/tv/leanback/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    .line 119
    iput-object v0, p0, Lcom/tv/leanback/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 120
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected abstract prependVisibleItemsWithoutCache(IZ)Z
.end method
