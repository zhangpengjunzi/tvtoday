.class Lcom/tv/leanback/ItemAlignmentFacetHelper;
.super Ljava/lang/Object;
.source "ItemAlignmentFacetHelper.java"


# static fields
.field private static sRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/tv/leanback/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAlignmentPosition(Landroid/view/View;Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;I)I
    .locals 5

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;

    .line 27
    iget v1, p1, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    if-eqz v1, :cond_0

    .line 28
    iget v1, p1, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p0

    .line 33
    :cond_1
    iget v2, p1, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, -0x40800000    # -1.0f

    if-nez p2, :cond_6

    .line 35
    iget p2, p1, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    if-ltz p2, :cond_2

    .line 36
    iget-boolean p2, p1, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz p2, :cond_3

    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr v2, p2

    goto :goto_0

    .line 40
    :cond_2
    iget-boolean p2, p1, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz p2, :cond_3

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr v2, p2

    .line 44
    :cond_3
    :goto_0
    iget p2, p1, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float p2, p2, v4

    if-eqz p2, :cond_5

    int-to-float p2, v2

    if-ne v1, p0, :cond_4

    .line 45
    invoke-virtual {v0, v1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result v2

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_1
    int-to-float v2, v2

    iget p1, p1, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    mul-float v2, v2, p1

    div-float/2addr v2, v3

    add-float/2addr p2, v2

    float-to-int v2, p2

    :cond_5
    if-eq p0, v1, :cond_c

    .line 49
    sget-object p1, Lcom/tv/leanback/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 50
    check-cast p0, Landroid/view/ViewGroup;

    sget-object p1, Lcom/tv/leanback/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 51
    sget-object p0, Lcom/tv/leanback/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getOpticalLeftInset()I

    move-result p1

    sub-int v2, p0, p1

    goto :goto_4

    .line 54
    :cond_6
    iget p2, p1, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    if-ltz p2, :cond_7

    .line 55
    iget-boolean p2, p1, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz p2, :cond_8

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr v2, p2

    goto :goto_2

    .line 59
    :cond_7
    iget-boolean p2, p1, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz p2, :cond_8

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr v2, p2

    .line 63
    :cond_8
    :goto_2
    iget p2, p1, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float p2, p2, v4

    if-eqz p2, :cond_a

    int-to-float p2, v2

    if-ne v1, p0, :cond_9

    .line 64
    invoke-virtual {v0, v1}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getOpticalHeight(Landroid/view/View;)I

    move-result v2

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_3
    int-to-float v2, v2

    iget v4, p1, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    mul-float v2, v2, v4

    div-float/2addr v2, v3

    add-float/2addr p2, v2

    float-to-int v2, p2

    :cond_a
    if-eq p0, v1, :cond_b

    .line 68
    sget-object p2, Lcom/tv/leanback/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 69
    check-cast p0, Landroid/view/ViewGroup;

    sget-object p2, Lcom/tv/leanback/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 70
    sget-object p0, Lcom/tv/leanback/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->getOpticalTopInset()I

    move-result p2

    sub-int/2addr p0, p2

    move v2, p0

    .line 72
    :cond_b
    instance-of p0, v1, Landroid/widget/TextView;

    if-eqz p0, :cond_c

    invoke-virtual {p1}, Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;->isAlignedToTextViewBaseLine()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 73
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int p0, p0

    add-int/2addr v2, p0

    :cond_c
    :goto_4
    return v2
.end method
