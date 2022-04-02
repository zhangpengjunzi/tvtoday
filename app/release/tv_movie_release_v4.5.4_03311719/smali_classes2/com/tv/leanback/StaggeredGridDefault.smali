.class final Lcom/tv/leanback/StaggeredGridDefault;
.super Lcom/tv/leanback/StaggeredGrid;
.source "StaggeredGridDefault.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/tv/leanback/StaggeredGrid;-><init>()V

    return-void
.end method

.method private findRowEdgeLimitSearchIndex(Z)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 193
    iget p1, p0, Lcom/tv/leanback/StaggeredGridDefault;->mLastVisibleIndex:I

    :goto_0
    iget v2, p0, Lcom/tv/leanback/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt p1, v2, :cond_5

    .line 194
    invoke-virtual {p0, p1}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 197
    iget v3, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_1

    return p1

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 202
    :cond_2
    iget p1, p0, Lcom/tv/leanback/StaggeredGridDefault;->mFirstVisibleIndex:I

    :goto_2
    iget v2, p0, Lcom/tv/leanback/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt p1, v2, :cond_5

    .line 203
    invoke-virtual {p0, p1}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    .line 204
    iget v3, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    return p1

    :cond_4
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method protected appendVisibleItemsWithoutCache(IZ)Z
    .locals 13

    .line 216
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v0}, Lcom/tv/leanback/Grid$Provider;->getCount()I

    move-result v0

    .line 221
    iget v1, p0, Lcom/tv/leanback/StaggeredGridDefault;->mLastVisibleIndex:I

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v1, :cond_9

    .line 222
    iget v1, p0, Lcom/tv/leanback/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGridDefault;->getLastIndex()I

    move-result v6

    if-ge v1, v6, :cond_0

    return v4

    .line 226
    :cond_0
    iget v1, p0, Lcom/tv/leanback/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/2addr v1, v5

    .line 227
    iget v6, p0, Lcom/tv/leanback/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v6}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v6

    iget v6, v6, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    .line 229
    invoke-direct {p0, v5}, Lcom/tv/leanback/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v7

    if-gez v7, :cond_3

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    .line 234
    :goto_0
    iget v9, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    if-ge v7, v9, :cond_5

    .line 235
    iget-boolean v8, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0, v7}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v7}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    :goto_1
    if-eq v8, v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 241
    :cond_3
    iget-boolean v8, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v8, :cond_4

    invoke-virtual {p0, v4, v7, v3}, Lcom/tv/leanback/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v7

    goto :goto_2

    .line 242
    :cond_4
    invoke-virtual {p0, v5, v7, v3}, Lcom/tv/leanback/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v7

    :goto_2
    move v8, v7

    .line 244
    :cond_5
    :goto_3
    iget-boolean v7, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v7, :cond_6

    invoke-virtual {p0, v6}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    if-gt v7, v8, :cond_8

    goto :goto_4

    .line 245
    :cond_6
    invoke-virtual {p0, v6}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    if-lt v7, v8, :cond_8

    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 248
    iget v7, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    if-ne v6, v7, :cond_8

    .line 251
    iget-boolean v6, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0, v4, v3}, Lcom/tv/leanback/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v6

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v5, v3}, Lcom/tv/leanback/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v6

    :goto_5
    move v8, v6

    const/4 v6, 0x0

    :cond_8
    const/4 v7, 0x1

    goto :goto_8

    .line 256
    :cond_9
    iget v1, p0, Lcom/tv/leanback/StaggeredGridDefault;->mStartIndex:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_a

    iget v1, p0, Lcom/tv/leanback/StaggeredGridDefault;->mStartIndex:I

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    .line 258
    :goto_6
    iget-object v6, p0, Lcom/tv/leanback/StaggeredGridDefault;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v6}, Landroidx/collection/CircularArray;->size()I

    move-result v6

    if-lez v6, :cond_b

    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGridDefault;->getLastIndex()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v6

    iget v6, v6, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    add-int/2addr v6, v5

    goto :goto_7

    :cond_b
    move v6, v1

    :goto_7
    iget v7, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    rem-int/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_8
    const/4 v9, 0x0

    .line 269
    :goto_9
    iget v10, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    if-ge v6, v10, :cond_1e

    if-eq v1, v0, :cond_1d

    if-nez p2, :cond_c

    .line 271
    invoke-virtual {p0, p1}, Lcom/tv/leanback/StaggeredGridDefault;->checkAppendOverLimit(I)Z

    move-result v10

    if-eqz v10, :cond_c

    goto/16 :goto_16

    .line 274
    :cond_c
    iget-boolean v9, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_d

    invoke-virtual {p0, v6}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMin(I)I

    move-result v9

    goto :goto_a

    :cond_d
    invoke-virtual {p0, v6}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMax(I)I

    move-result v9

    :goto_a
    const v10, 0x7fffffff

    if-eq v9, v10, :cond_10

    if-ne v9, v2, :cond_e

    goto :goto_d

    .line 286
    :cond_e
    iget-boolean v10, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_f

    iget v10, p0, Lcom/tv/leanback/StaggeredGridDefault;->mSpacing:I

    :goto_b
    neg-int v10, v10

    goto :goto_c

    :cond_f
    iget v10, p0, Lcom/tv/leanback/StaggeredGridDefault;->mSpacing:I

    :goto_c
    add-int/2addr v9, v10

    goto :goto_f

    :cond_10
    :goto_d
    if-nez v6, :cond_13

    .line 278
    iget-boolean v9, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_11

    iget v9, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v9, v5

    invoke-virtual {p0, v9}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMin(I)I

    move-result v9

    goto :goto_e

    :cond_11
    iget v9, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v9, v5

    invoke-virtual {p0, v9}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMax(I)I

    move-result v9

    :goto_e
    if-eq v9, v10, :cond_15

    if-eq v9, v2, :cond_15

    .line 280
    iget-boolean v10, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_12

    iget v10, p0, Lcom/tv/leanback/StaggeredGridDefault;->mSpacing:I

    goto :goto_b

    :cond_12
    iget v10, p0, Lcom/tv/leanback/StaggeredGridDefault;->mSpacing:I

    goto :goto_c

    .line 283
    :cond_13
    iget-boolean v9, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_14

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMax(I)I

    move-result v9

    goto :goto_f

    :cond_14
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMin(I)I

    move-result v9

    :cond_15
    :goto_f
    add-int/lit8 v10, v1, 0x1

    .line 288
    invoke-virtual {p0, v1, v6, v9}, Lcom/tv/leanback/StaggeredGridDefault;->appendVisibleItemToRow(III)I

    move-result v1

    if-eqz v7, :cond_1b

    .line 293
    :goto_10
    iget-boolean v11, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_16

    sub-int v11, v9, v1

    if-le v11, v8, :cond_1a

    goto :goto_11

    :cond_16
    add-int v11, v9, v1

    if-ge v11, v8, :cond_1a

    :goto_11
    if-eq v10, v0, :cond_19

    if-nez p2, :cond_17

    .line 295
    invoke-virtual {p0, p1}, Lcom/tv/leanback/StaggeredGridDefault;->checkAppendOverLimit(I)Z

    move-result v11

    if-eqz v11, :cond_17

    goto :goto_13

    .line 298
    :cond_17
    iget-boolean v11, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_18

    neg-int v1, v1

    iget v11, p0, Lcom/tv/leanback/StaggeredGridDefault;->mSpacing:I

    sub-int/2addr v1, v11

    goto :goto_12

    :cond_18
    iget v11, p0, Lcom/tv/leanback/StaggeredGridDefault;->mSpacing:I

    add-int/2addr v1, v11

    :goto_12
    add-int/2addr v9, v1

    add-int/lit8 v1, v10, 0x1

    .line 299
    invoke-virtual {p0, v10, v6, v9}, Lcom/tv/leanback/StaggeredGridDefault;->appendVisibleItemToRow(III)I

    move-result v10

    move v12, v10

    move v10, v1

    move v1, v12

    goto :goto_10

    :cond_19
    :goto_13
    return v5

    :cond_1a
    move v1, v10

    goto :goto_15

    .line 303
    :cond_1b
    iget-boolean v1, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v1, :cond_1c

    invoke-virtual {p0, v6}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMin(I)I

    move-result v1

    goto :goto_14

    :cond_1c
    invoke-virtual {p0, v6}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMax(I)I

    move-result v1

    :goto_14
    move v8, v1

    move v1, v10

    const/4 v7, 0x1

    :goto_15
    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    goto/16 :goto_9

    :cond_1d
    :goto_16
    return v9

    :cond_1e
    if-eqz p2, :cond_1f

    return v9

    .line 309
    :cond_1f
    iget-boolean v6, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v6, :cond_20

    invoke-virtual {p0, v4, v3}, Lcom/tv/leanback/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v6

    goto :goto_17

    :cond_20
    invoke-virtual {p0, v5, v3}, Lcom/tv/leanback/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v6

    :goto_17
    move v8, v6

    const/4 v6, 0x0

    goto/16 :goto_9
.end method

.method public findRowMax(ZI[I)I
    .locals 9

    .line 93
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v0, p2}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 94
    invoke-virtual {p0, p2}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v1

    .line 95
    iget v2, v1, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    .line 99
    iget-boolean v3, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    add-int/lit8 v1, p2, 0x1

    move v3, v2

    move v5, v3

    const/4 v6, 0x1

    move v2, v1

    move v1, v0

    .line 101
    :goto_0
    iget v7, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    if-ge v6, v7, :cond_5

    iget v7, p0, Lcom/tv/leanback/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v2, v7, :cond_5

    .line 102
    invoke-virtual {p0, v2}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v7

    .line 103
    iget v8, v7, Lcom/tv/leanback/StaggeredGrid$Location;->offset:I

    add-int/2addr v1, v8

    .line 104
    iget v8, v7, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    if-eq v8, v5, :cond_1

    .line 105
    iget v5, v7, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    add-int/lit8 v6, v6, 0x1

    if-eqz p1, :cond_0

    if-le v1, v0, :cond_1

    goto :goto_1

    :cond_0
    if-ge v1, v0, :cond_1

    :goto_1
    move v0, v1

    move p2, v2

    move v3, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/tv/leanback/StaggeredGridDefault;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v3, p2}, Lcom/tv/leanback/Grid$Provider;->getSize(I)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v5, p2, -0x1

    move v6, v5

    const/4 v7, 0x1

    move v5, v2

    move-object v2, v1

    move v1, v0

    move v0, v3

    move v3, v5

    .line 116
    :goto_2
    iget v8, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    if-ge v7, v8, :cond_5

    iget v8, p0, Lcom/tv/leanback/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v6, v8, :cond_5

    .line 117
    iget v2, v2, Lcom/tv/leanback/StaggeredGrid$Location;->offset:I

    sub-int/2addr v1, v2

    .line 118
    invoke-virtual {p0, v6}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v2

    .line 119
    iget v8, v2, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    if-eq v8, v5, :cond_4

    .line 120
    iget v5, v2, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    add-int/lit8 v7, v7, 0x1

    .line 122
    iget-object v8, p0, Lcom/tv/leanback/StaggeredGridDefault;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v8, v6}, Lcom/tv/leanback/Grid$Provider;->getSize(I)I

    move-result v8

    add-int/2addr v8, v1

    if-eqz p1, :cond_3

    if-le v8, v0, :cond_4

    goto :goto_3

    :cond_3
    if-ge v8, v0, :cond_4

    :goto_3
    move v3, v5

    move p2, v6

    move v0, v8

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    const/4 p1, 0x0

    .line 132
    aput v3, p3, p1

    .line 133
    aput p2, p3, v4

    :cond_6
    return v0
.end method

.method public findRowMin(ZI[I)I
    .locals 9

    .line 145
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v0, p2}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 146
    invoke-virtual {p0, p2}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v1

    .line 147
    iget v2, v1, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    .line 151
    iget-boolean v3, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 152
    iget-object v3, p0, Lcom/tv/leanback/StaggeredGridDefault;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v3, p2}, Lcom/tv/leanback/Grid$Provider;->getSize(I)I

    move-result v3

    sub-int v3, v0, v3

    add-int/lit8 v5, p2, -0x1

    move v6, v5

    const/4 v7, 0x1

    move v5, v3

    move v3, v2

    .line 153
    :goto_0
    iget v8, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    if-ge v7, v8, :cond_6

    iget v8, p0, Lcom/tv/leanback/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v6, v8, :cond_6

    .line 154
    iget v1, v1, Lcom/tv/leanback/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v1

    .line 155
    invoke-virtual {p0, v6}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v1

    .line 156
    iget v8, v1, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    if-eq v8, v3, :cond_1

    .line 157
    iget v3, v1, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    add-int/lit8 v7, v7, 0x1

    .line 159
    iget-object v8, p0, Lcom/tv/leanback/StaggeredGridDefault;->mProvider:Lcom/tv/leanback/Grid$Provider;

    invoke-interface {v8, v6}, Lcom/tv/leanback/Grid$Provider;->getSize(I)I

    move-result v8

    sub-int v8, v0, v8

    if-eqz p1, :cond_0

    if-le v8, v5, :cond_1

    goto :goto_1

    :cond_0
    if-ge v8, v5, :cond_1

    :goto_1
    move v2, v3

    move p2, v6

    move v5, v8

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p2, 0x1

    move v3, v2

    move v5, v3

    const/4 v6, 0x1

    move v2, v1

    move v1, v0

    .line 169
    :goto_2
    iget v7, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    if-ge v6, v7, :cond_5

    iget v7, p0, Lcom/tv/leanback/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v2, v7, :cond_5

    .line 170
    invoke-virtual {p0, v2}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v7

    .line 171
    iget v8, v7, Lcom/tv/leanback/StaggeredGrid$Location;->offset:I

    add-int/2addr v1, v8

    .line 172
    iget v8, v7, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    if-eq v8, v5, :cond_4

    .line 173
    iget v5, v7, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    add-int/lit8 v6, v6, 0x1

    if-eqz p1, :cond_3

    if-le v1, v0, :cond_4

    goto :goto_3

    :cond_3
    if-ge v1, v0, :cond_4

    :goto_3
    move v0, v1

    move p2, v2

    move v3, v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v5, v0

    move v2, v3

    :cond_6
    if-eqz p3, :cond_7

    const/4 p1, 0x0

    .line 184
    aput v2, p3, p1

    .line 185
    aput p2, p3, v4

    :cond_7
    return v5
.end method

.method getRowMax(I)I
    .locals 5

    .line 17
    iget v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mFirstVisibleIndex:I

    const/high16 v1, -0x80000000

    if-gez v0, :cond_0

    return v1

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v2, p0, Lcom/tv/leanback/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-interface {v0, v2}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 22
    iget v2, p0, Lcom/tv/leanback/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v2}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    if-ne v2, p1, :cond_1

    return v0

    .line 25
    :cond_1
    iget v2, p0, Lcom/tv/leanback/StaggeredGridDefault;->mFirstVisibleIndex:I

    :goto_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGridDefault;->getLastIndex()I

    move-result v3

    if-gt v2, v3, :cond_6

    .line 26
    invoke-virtual {p0, v2}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v3

    .line 27
    iget v4, v3, Lcom/tv/leanback/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v4

    .line 28
    iget v3, v3, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_2

    return v0

    :cond_2
    goto :goto_0

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v2, p0, Lcom/tv/leanback/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-interface {v0, v2}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 34
    iget v2, p0, Lcom/tv/leanback/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v2}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v2

    .line 35
    iget v3, v2, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_4

    .line 36
    iget p1, v2, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    :goto_1
    add-int/2addr v0, p1

    return v0

    .line 38
    :cond_4
    iget v3, p0, Lcom/tv/leanback/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v3, v3, -0x1

    :goto_2
    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGridDefault;->getFirstIndex()I

    move-result v4

    if-lt v3, v4, :cond_6

    .line 39
    iget v2, v2, Lcom/tv/leanback/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v2

    .line 40
    invoke-virtual {p0, v3}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v2

    .line 41
    iget v4, v2, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    if-ne v4, p1, :cond_5

    .line 42
    iget p1, v2, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    return v1
.end method

.method getRowMin(I)I
    .locals 5

    .line 54
    iget v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mFirstVisibleIndex:I

    const v1, 0x7fffffff

    if-gez v0, :cond_0

    return v1

    .line 57
    :cond_0
    iget-boolean v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v2, p0, Lcom/tv/leanback/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-interface {v0, v2}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 59
    iget v2, p0, Lcom/tv/leanback/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v2}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v2

    .line 60
    iget v3, v2, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_1

    .line 61
    iget p1, v2, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    :goto_0
    sub-int/2addr v0, p1

    return v0

    .line 63
    :cond_1
    iget v3, p0, Lcom/tv/leanback/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v3, v3, -0x1

    :goto_1
    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGridDefault;->getFirstIndex()I

    move-result v4

    if-lt v3, v4, :cond_6

    .line 64
    iget v2, v2, Lcom/tv/leanback/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v2

    .line 65
    invoke-virtual {p0, v3}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v2

    .line 66
    iget v4, v2, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    if-ne v4, p1, :cond_2

    .line 67
    iget p1, v2, Lcom/tv/leanback/StaggeredGrid$Location;->size:I

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mProvider:Lcom/tv/leanback/Grid$Provider;

    iget v2, p0, Lcom/tv/leanback/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-interface {v0, v2}, Lcom/tv/leanback/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 72
    iget v2, p0, Lcom/tv/leanback/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v2}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    if-ne v2, p1, :cond_4

    return v0

    .line 75
    :cond_4
    iget v2, p0, Lcom/tv/leanback/StaggeredGridDefault;->mFirstVisibleIndex:I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGridDefault;->getLastIndex()I

    move-result v3

    if-gt v2, v3, :cond_6

    .line 76
    invoke-virtual {p0, v2}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v3

    .line 77
    iget v4, v3, Lcom/tv/leanback/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v4

    .line 78
    iget v3, v3, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_5

    return v0

    :cond_5
    goto :goto_2

    :cond_6
    return v1
.end method

.method protected prependVisibleItemsWithoutCache(IZ)Z
    .locals 12

    .line 321
    iget v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mFirstVisibleIndex:I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v0, :cond_9

    .line 322
    iget v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGridDefault;->getFirstIndex()I

    move-result v5

    if-le v0, v5, :cond_0

    return v3

    .line 326
    :cond_0
    iget v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mFirstVisibleIndex:I

    sub-int/2addr v0, v4

    .line 327
    iget v5, p0, Lcom/tv/leanback/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v5}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    .line 329
    invoke-direct {p0, v3}, Lcom/tv/leanback/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v6

    if-gez v6, :cond_3

    add-int/lit8 v5, v5, -0x1

    .line 335
    iget v6, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v6, v4

    const v7, 0x7fffffff

    :goto_0
    if-ltz v6, :cond_5

    .line 336
    iget-boolean v7, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0, v6}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v6}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    :goto_1
    if-eq v7, v1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 342
    :cond_3
    iget-boolean v7, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0, v4, v6, v2}, Lcom/tv/leanback/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v6

    goto :goto_2

    .line 343
    :cond_4
    invoke-virtual {p0, v3, v6, v2}, Lcom/tv/leanback/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v6

    :goto_2
    move v7, v6

    .line 345
    :cond_5
    :goto_3
    iget-boolean v6, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v6, :cond_6

    invoke-virtual {p0, v5}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMax(I)I

    move-result v6

    if-lt v6, v7, :cond_8

    goto :goto_4

    .line 346
    :cond_6
    invoke-virtual {p0, v5}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMin(I)I

    move-result v6

    if-gt v6, v7, :cond_8

    :goto_4
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_8

    .line 351
    iget v5, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v5, v4

    .line 352
    iget-boolean v6, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0, v4, v2}, Lcom/tv/leanback/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v6

    goto :goto_5

    .line 353
    :cond_7
    invoke-virtual {p0, v3, v2}, Lcom/tv/leanback/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v6

    :goto_5
    move v7, v6

    :cond_8
    const/4 v6, 0x1

    goto :goto_8

    .line 358
    :cond_9
    iget v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mStartIndex:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_a

    iget v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mStartIndex:I

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    .line 360
    :goto_6
    iget-object v5, p0, Lcom/tv/leanback/StaggeredGridDefault;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v5}, Landroidx/collection/CircularArray;->size()I

    move-result v5

    if-ltz v5, :cond_b

    invoke-virtual {p0}, Lcom/tv/leanback/StaggeredGridDefault;->getFirstIndex()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/tv/leanback/StaggeredGridDefault;->getLocation(I)Lcom/tv/leanback/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Lcom/tv/leanback/StaggeredGrid$Location;->row:I

    iget v6, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    goto :goto_7

    :cond_b
    move v5, v0

    :goto_7
    iget v6, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    rem-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_8
    const/4 v8, 0x0

    :goto_9
    if-ltz v5, :cond_1e

    if-ltz v0, :cond_1d

    if-nez p2, :cond_c

    .line 372
    invoke-virtual {p0, p1}, Lcom/tv/leanback/StaggeredGridDefault;->checkPrependOverLimit(I)Z

    move-result v9

    if-eqz v9, :cond_c

    goto/16 :goto_16

    .line 375
    :cond_c
    iget-boolean v8, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v8, :cond_d

    invoke-virtual {p0, v5}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    goto :goto_a

    :cond_d
    invoke-virtual {p0, v5}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    :goto_a
    const/high16 v9, -0x80000000

    if-eq v8, v1, :cond_10

    if-ne v8, v9, :cond_e

    goto :goto_d

    .line 387
    :cond_e
    iget-boolean v9, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_f

    iget v9, p0, Lcom/tv/leanback/StaggeredGridDefault;->mSpacing:I

    goto :goto_c

    :cond_f
    iget v9, p0, Lcom/tv/leanback/StaggeredGridDefault;->mSpacing:I

    :goto_b
    neg-int v9, v9

    :goto_c
    add-int/2addr v8, v9

    goto :goto_f

    .line 378
    :cond_10
    :goto_d
    iget v8, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v8, v4

    if-ne v5, v8, :cond_13

    .line 379
    iget-boolean v8, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v8, :cond_11

    invoke-virtual {p0, v3}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    goto :goto_e

    :cond_11
    invoke-virtual {p0, v3}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    :goto_e
    if-eq v8, v1, :cond_15

    if-eq v8, v9, :cond_15

    .line 381
    iget-boolean v9, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_12

    iget v9, p0, Lcom/tv/leanback/StaggeredGridDefault;->mSpacing:I

    goto :goto_c

    :cond_12
    iget v9, p0, Lcom/tv/leanback/StaggeredGridDefault;->mSpacing:I

    goto :goto_b

    .line 384
    :cond_13
    iget-boolean v8, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v8, :cond_14

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    goto :goto_f

    :cond_14
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    :cond_15
    :goto_f
    add-int/lit8 v9, v0, -0x1

    .line 389
    invoke-virtual {p0, v0, v5, v8}, Lcom/tv/leanback/StaggeredGridDefault;->prependVisibleItemToRow(III)I

    move-result v0

    if-eqz v6, :cond_1b

    .line 395
    :goto_10
    iget-boolean v10, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_16

    add-int v10, v8, v0

    if-ge v10, v7, :cond_1a

    goto :goto_11

    :cond_16
    sub-int v10, v8, v0

    if-le v10, v7, :cond_1a

    :goto_11
    if-ltz v9, :cond_19

    if-nez p2, :cond_17

    .line 397
    invoke-virtual {p0, p1}, Lcom/tv/leanback/StaggeredGridDefault;->checkPrependOverLimit(I)Z

    move-result v10

    if-eqz v10, :cond_17

    goto :goto_13

    .line 400
    :cond_17
    iget-boolean v10, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_18

    iget v10, p0, Lcom/tv/leanback/StaggeredGridDefault;->mSpacing:I

    add-int/2addr v0, v10

    goto :goto_12

    :cond_18
    neg-int v0, v0

    iget v10, p0, Lcom/tv/leanback/StaggeredGridDefault;->mSpacing:I

    sub-int/2addr v0, v10

    :goto_12
    add-int/2addr v8, v0

    add-int/lit8 v0, v9, -0x1

    .line 401
    invoke-virtual {p0, v9, v5, v8}, Lcom/tv/leanback/StaggeredGridDefault;->prependVisibleItemToRow(III)I

    move-result v9

    move v11, v9

    move v9, v0

    move v0, v11

    goto :goto_10

    :cond_19
    :goto_13
    return v4

    :cond_1a
    move v0, v9

    goto :goto_15

    .line 405
    :cond_1b
    iget-boolean v0, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0, v5}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMax(I)I

    move-result v0

    goto :goto_14

    :cond_1c
    invoke-virtual {p0, v5}, Lcom/tv/leanback/StaggeredGridDefault;->getRowMin(I)I

    move-result v0

    :goto_14
    move v7, v0

    move v0, v9

    const/4 v6, 0x1

    :goto_15
    add-int/lit8 v5, v5, -0x1

    const/4 v8, 0x1

    goto/16 :goto_9

    :cond_1d
    :goto_16
    return v8

    :cond_1e
    if-eqz p2, :cond_1f

    return v8

    .line 411
    :cond_1f
    iget-boolean v5, p0, Lcom/tv/leanback/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v5, :cond_20

    invoke-virtual {p0, v4, v2}, Lcom/tv/leanback/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v5

    goto :goto_17

    :cond_20
    invoke-virtual {p0, v3, v2}, Lcom/tv/leanback/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v5

    :goto_17
    move v7, v5

    .line 413
    iget v5, p0, Lcom/tv/leanback/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v5, v4

    goto/16 :goto_9
.end method
