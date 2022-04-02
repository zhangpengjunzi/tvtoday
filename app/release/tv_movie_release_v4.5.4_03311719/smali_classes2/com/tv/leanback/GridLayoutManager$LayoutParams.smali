.class final Lcom/tv/leanback/GridLayoutManager$LayoutParams;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tv/leanback/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LayoutParams"
.end annotation


# instance fields
.field private mAlignMultiple:[I

.field private mAlignX:I

.field private mAlignY:I

.field private mAlignmentFacet:Lcom/tv/leanback/ItemAlignmentFacet;

.field mBottomInset:I

.field mLeftInset:I

.field mRightInset:I

.field mTopInset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Lcom/tv/leanback/GridLayoutManager$LayoutParams;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-void
.end method


# virtual methods
.method calculateItemAlignments(ILandroid/view/View;)V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mAlignmentFacet:Lcom/tv/leanback/ItemAlignmentFacet;

    invoke-virtual {v0}, Lcom/tv/leanback/ItemAlignmentFacet;->getAlignmentDefs()[Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 150
    :cond_0
    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 152
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 153
    iget-object v3, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget-object v4, v0, v2

    .line 154
    invoke-static {p2, v4, p1}, Lcom/tv/leanback/ItemAlignmentFacetHelper;->getAlignmentPosition(Landroid/view/View;Lcom/tv/leanback/ItemAlignmentFacet$ItemAlignmentDef;I)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 157
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget p1, p1, v1

    iput p1, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mAlignX:I

    goto :goto_1

    .line 159
    :cond_3
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget p1, p1, v1

    iput p1, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mAlignY:I

    :goto_1
    return-void
.end method

.method getAlignMultiple()[I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    return-object v0
.end method

.method getAlignX()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mAlignX:I

    return v0
.end method

.method getAlignY()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mAlignY:I

    return v0
.end method

.method getItemAlignmentFacet()Lcom/tv/leanback/ItemAlignmentFacet;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mAlignmentFacet:Lcom/tv/leanback/ItemAlignmentFacet;

    return-object v0
.end method

.method getOpticalBottom(Landroid/view/View;)I
    .locals 1

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr p1, v0

    return p1
.end method

.method getOpticalBottomInset()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mBottomInset:I

    return v0
.end method

.method getOpticalHeight(Landroid/view/View;)I
    .locals 1

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mTopInset:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr p1, v0

    return p1
.end method

.method getOpticalLeft(Landroid/view/View;)I
    .locals 1

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr p1, v0

    return p1
.end method

.method getOpticalLeftInset()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mLeftInset:I

    return v0
.end method

.method getOpticalRight(Landroid/view/View;)I
    .locals 1

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr p1, v0

    return p1
.end method

.method getOpticalRightInset()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mRightInset:I

    return v0
.end method

.method getOpticalTop(Landroid/view/View;)I
    .locals 1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr p1, v0

    return p1
.end method

.method getOpticalTopInset()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mTopInset:I

    return v0
.end method

.method getOpticalWidth(Landroid/view/View;)I
    .locals 1

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mLeftInset:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr p1, v0

    return p1
.end method

.method setAlignX(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mAlignX:I

    return-void
.end method

.method setAlignY(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mAlignY:I

    return-void
.end method

.method setItemAlignmentFacet(Lcom/tv/leanback/ItemAlignmentFacet;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mAlignmentFacet:Lcom/tv/leanback/ItemAlignmentFacet;

    return-void
.end method

.method setOpticalInsets(IIII)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mLeftInset:I

    .line 169
    iput p2, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mTopInset:I

    .line 170
    iput p3, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mRightInset:I

    .line 171
    iput p4, p0, Lcom/tv/leanback/GridLayoutManager$LayoutParams;->mBottomInset:I

    return-void
.end method
