.class public Lxyz/doikki/videoplayer/render/MeasureHelper;
.super Ljava/lang/Object;
.source "MeasureHelper.java"


# instance fields
.field private mCurrentScreenScale:I

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doMeasure(II)[I
    .locals 10

    .line 34
    iget v0, p0, Lxyz/doikki/videoplayer/render/MeasureHelper;->mVideoRotationDegree:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    add-int/2addr p1, p2

    sub-int p2, p1, p2

    sub-int/2addr p1, p2

    .line 40
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 41
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 43
    iget v2, p0, Lxyz/doikki/videoplayer/render/MeasureHelper;->mVideoHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v2, :cond_d

    iget v6, p0, Lxyz/doikki/videoplayer/render/MeasureHelper;->mVideoWidth:I

    if-nez v6, :cond_2

    goto/16 :goto_3

    .line 48
    :cond_2
    iget v7, p0, Lxyz/doikki/videoplayer/render/MeasureHelper;->mCurrentScreenScale:I

    if-eq v7, v4, :cond_a

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq v7, v5, :cond_8

    if-eq v7, v9, :cond_c

    if-eq v7, v8, :cond_7

    const/4 p1, 0x5

    if-eq v7, p1, :cond_5

    mul-int p1, v6, v1

    mul-int p2, v0, v2

    if-ge p1, p2, :cond_3

    mul-int v6, v6, v1

    .line 52
    div-int p1, v6, v2

    goto :goto_0

    :cond_3
    mul-int p1, v6, v1

    mul-int p2, v0, v2

    if-le p1, p2, :cond_4

    mul-int v2, v2, v0

    .line 54
    div-int p2, v2, v6

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_0
    move p2, v1

    goto :goto_2

    :cond_5
    mul-int p1, v6, v1

    mul-int p2, v0, v2

    if-le p1, p2, :cond_6

    mul-int v6, v6, v1

    .line 81
    div-int p1, v6, v2

    goto :goto_0

    :cond_6
    mul-int v2, v2, v0

    .line 83
    div-int p2, v2, v6

    goto :goto_1

    :cond_7
    move p2, v2

    move p1, v6

    goto :goto_2

    .line 69
    :cond_8
    div-int/lit8 p1, v0, 0x4

    mul-int/lit8 p2, p1, 0x3

    if-le v1, p2, :cond_9

    goto :goto_1

    .line 72
    :cond_9
    div-int/lit8 p1, v1, 0x3

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 62
    :cond_a
    div-int/lit8 p1, v0, 0x10

    mul-int/lit8 p2, p1, 0x9

    if-le v1, p2, :cond_b

    :goto_1
    move p1, v0

    goto :goto_2

    .line 65
    :cond_b
    div-int/lit8 p1, v1, 0x9

    mul-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_c
    :goto_2
    new-array v0, v5, [I

    aput p1, v0, v3

    aput p2, v0, v4

    return-object v0

    :cond_d
    :goto_3
    new-array p1, v5, [I

    aput v0, p1, v3

    aput v1, p1, v4

    return-object p1
.end method

.method public setScreenScale(I)V
    .locals 0

    .line 27
    iput p1, p0, Lxyz/doikki/videoplayer/render/MeasureHelper;->mCurrentScreenScale:I

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 0

    .line 18
    iput p1, p0, Lxyz/doikki/videoplayer/render/MeasureHelper;->mVideoRotationDegree:I

    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    .line 22
    iput p1, p0, Lxyz/doikki/videoplayer/render/MeasureHelper;->mVideoWidth:I

    .line 23
    iput p2, p0, Lxyz/doikki/videoplayer/render/MeasureHelper;->mVideoHeight:I

    return-void
.end method
