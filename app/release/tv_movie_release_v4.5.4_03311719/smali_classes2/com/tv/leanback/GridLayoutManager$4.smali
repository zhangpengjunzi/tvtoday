.class Lcom/tv/leanback/GridLayoutManager$4;
.super Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tv/leanback/GridLayoutManager;->startPositionSmoothScroller(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tv/leanback/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/tv/leanback/GridLayoutManager;)V
    .locals 0

    .line 2454
    iput-object p1, p0, Lcom/tv/leanback/GridLayoutManager$4;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-direct {p0, p1}, Lcom/tv/leanback/GridLayoutManager$GridLinearSmoothScroller;-><init>(Lcom/tv/leanback/GridLayoutManager;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 4

    .line 2457
    invoke-virtual {p0}, Lcom/tv/leanback/GridLayoutManager$4;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2460
    :cond_0
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$4;->this$0:Lcom/tv/leanback/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tv/leanback/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tv/leanback/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 2463
    iget-object v2, p0, Lcom/tv/leanback/GridLayoutManager$4;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-boolean v2, v2, Lcom/tv/leanback/GridLayoutManager;->mReverseFlowPrimary:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_1
    if-ge p1, v0, :cond_2

    :goto_0
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    const/4 v3, -0x1

    .line 2466
    :cond_3
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$4;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget p1, p1, Lcom/tv/leanback/GridLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2467
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v3

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 2469
    :cond_4
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v3

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method
