.class public Lcom/tv/widget/FixedSpeedScroller;
.super Landroid/widget/Scroller;
.source "FixedSpeedScroller.java"


# instance fields
.field private mDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x9c4

    .line 14
    iput p1, p0, Lcom/tv/widget/FixedSpeedScroller;->mDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x9c4

    .line 14
    iput p1, p0, Lcom/tv/widget/FixedSpeedScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method public getmDuration()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/tv/widget/FixedSpeedScroller;->mDuration:I

    return v0
.end method

.method public setmDuration(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/tv/widget/FixedSpeedScroller;->mDuration:I

    return-void
.end method

.method public startScroll(IIII)V
    .locals 6

    .line 33
    iget v5, p0, Lcom/tv/widget/FixedSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    .line 27
    iget v5, p0, Lcom/tv/widget/FixedSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
