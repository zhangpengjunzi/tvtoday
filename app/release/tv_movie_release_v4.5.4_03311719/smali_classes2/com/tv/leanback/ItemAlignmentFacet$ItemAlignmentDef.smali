.class public Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;
.super Ljava/lang/Object;
.source "ItemAlignmentFacet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tv/leanback/ItemAlignmentFacet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemAlignmentDef"
.end annotation


# instance fields
.field private mAlignToBaseline:Z

.field mFocusViewId:I

.field mOffset:I

.field mOffsetPercent:F

.field mOffsetWithPadding:Z

.field mViewId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    .line 33
    iput v0, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mFocusViewId:I

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    const/high16 v1, 0x42480000    # 50.0f

    .line 35
    iput v1, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    .line 36
    iput-boolean v0, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    return-void
.end method


# virtual methods
.method public final getItemAlignmentFocusViewId()I
    .locals 2

    .line 124
    iget v0, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mFocusViewId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    :goto_0
    return v0
.end method

.method public final getItemAlignmentOffset()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    return v0
.end method

.method public final getItemAlignmentOffsetPercent()F
    .locals 1

    .line 90
    iget v0, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    return v0
.end method

.method public final getItemAlignmentViewId()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    return v0
.end method

.method public isAlignedToTextViewBaseLine()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mAlignToBaseline:Z

    return v0
.end method

.method public final isItemAlignmentOffsetWithPadding()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    return v0
.end method

.method public final setAlignedToTextViewBaseline(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mAlignToBaseline:Z

    return-void
.end method

.method public final setItemAlignmentFocusViewId(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mFocusViewId:I

    return-void
.end method

.method public final setItemAlignmentOffset(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    return-void
.end method

.method public final setItemAlignmentOffsetPercent(F)V
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

    .line 81
    :cond_1
    iput p1, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    return-void

    .line 79
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final setItemAlignmentOffsetWithPadding(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    return-void
.end method

.method public final setItemAlignmentViewId(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    return-void
.end method
