.class public Lcom/tv/leanback/WindowAlignment$Axis;
.super Ljava/lang/Object;
.source "WindowAlignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tv/leanback/WindowAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axis"
.end annotation


# instance fields
.field private mMaxEdge:I

.field private mMaxScroll:I

.field private mMinEdge:I

.field private mMinScroll:I

.field private mName:Ljava/lang/String;

.field private mPaddingHigh:I

.field private mPaddingLow:I

.field private mReversedFlow:Z

.field private mScrollCenter:F

.field private mSize:I

.field private mWindowAlignment:I

.field private mWindowAlignmentOffset:I

.field private mWindowAlignmentOffsetPercent:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 42
    iput v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignment:I

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    const/high16 v0, 0x42480000    # 50.0f

    .line 46
    iput v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    .line 59
    invoke-virtual {p0}, Lcom/tv/leanback/WindowAlignment$Axis;->reset()V

    .line 60
    iput-object p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getClientSize()I
    .locals 2

    .line 182
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mSize:I

    iget v1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mPaddingLow:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mPaddingHigh:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getMaxEdge()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMaxEdge:I

    return v0
.end method

.method public final getMaxScroll()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMaxScroll:I

    return v0
.end method

.method public final getMinEdge()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMinEdge:I

    return v0
.end method

.method public final getMinScroll()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMinScroll:I

    return v0
.end method

.method public final getPaddingHigh()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mPaddingHigh:I

    return v0
.end method

.method public final getPaddingLow()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mPaddingLow:I

    return v0
.end method

.method public final getScrollCenter()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mScrollCenter:F

    float-to-int v0, v0

    return v0
.end method

.method public final getSize()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mSize:I

    return v0
.end method

.method public final getSystemScrollPos(IZZ)I
    .locals 8

    .line 191
    iget-boolean v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mReversedFlow:Z

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v0, :cond_1

    .line 192
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    if-ltz v0, :cond_0

    .line 193
    iget v3, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mPaddingLow:I

    sub-int/2addr v0, v3

    goto :goto_0

    .line 195
    :cond_0
    iget v3, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mSize:I

    add-int/2addr v3, v0

    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mPaddingLow:I

    sub-int v0, v3, v0

    .line 197
    :goto_0
    iget v3, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    .line 198
    iget v2, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mSize:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    div-float/2addr v2, v1

    float-to-int v1, v2

    add-int/2addr v0, v1

    goto :goto_2

    .line 201
    :cond_1
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    if-ltz v0, :cond_2

    .line 202
    iget v3, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mSize:I

    sub-int/2addr v3, v0

    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mPaddingLow:I

    sub-int/2addr v3, v0

    move v0, v3

    goto :goto_1

    :cond_2
    neg-int v0, v0

    .line 204
    iget v3, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mPaddingLow:I

    sub-int/2addr v0, v3

    .line 206
    :goto_1
    iget v3, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    .line 207
    iget v2, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mSize:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    div-float/2addr v2, v1

    float-to-int v1, v2

    sub-int/2addr v0, v1

    .line 210
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/tv/leanback/WindowAlignment$Axis;->getClientSize()I

    move-result v1

    sub-int v2, v1, v0

    .line 212
    invoke-virtual {p0}, Lcom/tv/leanback/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v3

    .line 213
    invoke-virtual {p0}, Lcom/tv/leanback/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v4

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    .line 214
    iget v5, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignment:I

    const/4 v6, 0x3

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_5

    .line 216
    iget v5, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMaxEdge:I

    iget v6, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMinEdge:I

    sub-int v7, v5, v6

    if-gt v7, v1, :cond_5

    .line 219
    iget-boolean p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mReversedFlow:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mPaddingLow:I

    sub-int/2addr v5, p1

    sub-int/2addr v5, v1

    goto :goto_3

    :cond_4
    iget p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mPaddingLow:I

    sub-int v5, v6, p1

    :goto_3
    return v5

    :cond_5
    if-nez v3, :cond_8

    .line 224
    iget-boolean v3, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v3, :cond_6

    iget v3, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_6
    iget v3, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    :goto_4
    if-nez p2, :cond_7

    iget p2, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMinEdge:I

    sub-int p2, p1, p2

    if-gt p2, v0, :cond_8

    .line 229
    :cond_7
    iget p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMinEdge:I

    iget p2, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mPaddingLow:I

    sub-int/2addr p1, p2

    return p1

    :cond_8
    if-nez v4, :cond_b

    .line 233
    iget-boolean p2, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez p2, :cond_9

    iget p2, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_b

    goto :goto_5

    :cond_9
    iget p2, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_b

    :goto_5
    if-nez p3, :cond_a

    iget p2, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMaxEdge:I

    sub-int/2addr p2, p1

    if-gt p2, v2, :cond_b

    .line 238
    :cond_a
    iget p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMaxEdge:I

    iget p2, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mPaddingLow:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, v1

    return p1

    :cond_b
    sub-int/2addr p1, v0

    .line 242
    iget p2, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mPaddingLow:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public final getSystemScrollPos(ZZ)I
    .locals 1

    .line 186
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mScrollCenter:F

    float-to-int v0, v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/tv/leanback/WindowAlignment$Axis;->getSystemScrollPos(IZZ)I

    move-result p1

    return p1
.end method

.method public final getWindowAlignment()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignment:I

    return v0
.end method

.method public final getWindowAlignmentOffset()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    return v0
.end method

.method public final getWindowAlignmentOffsetPercent()F
    .locals 1

    .line 88
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    return v0
.end method

.method public final invalidateScrollMax()V
    .locals 1

    const v0, 0x7fffffff

    .line 137
    iput v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMaxEdge:I

    .line 138
    iput v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMaxScroll:I

    return-void
.end method

.method public final invalidateScrollMin()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 114
    iput v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMinEdge:I

    .line 115
    iput v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMinScroll:I

    return-void
.end method

.method public final isMaxUnknown()Z
    .locals 2

    .line 157
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMaxEdge:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isMinUnknown()Z
    .locals 2

    .line 153
    iget v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMinEdge:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reset()V
    .locals 1

    const/high16 v0, -0x31000000

    .line 147
    iput v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mScrollCenter:F

    const/high16 v0, -0x80000000

    .line 148
    iput v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMinEdge:I

    const v0, 0x7fffffff

    .line 149
    iput v0, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMaxEdge:I

    return-void
.end method

.method public final setMaxEdge(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMaxEdge:I

    return-void
.end method

.method public final setMaxScroll(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMaxScroll:I

    return-void
.end method

.method public final setMinEdge(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMinEdge:I

    return-void
.end method

.method public final setMinScroll(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMinScroll:I

    return-void
.end method

.method public final setPadding(II)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mPaddingLow:I

    .line 170
    iput p2, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mPaddingHigh:I

    return-void
.end method

.method public final setReversedFlow(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mReversedFlow:Z

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mSize:I

    return-void
.end method

.method public final setWindowAlignment(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignment:I

    return-void
.end method

.method public final setWindowAlignmentOffset(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    return-void
.end method

.method public final setWindowAlignmentOffsetPercent(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 84
    :cond_1
    iput p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    return-void

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "center: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mScrollCenter:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMinEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mMaxEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateScrollCenter(F)F
    .locals 0

    .line 142
    iput p1, p0, Lcom/tv/leanback/WindowAlignment$Axis;->mScrollCenter:F

    return p1
.end method
