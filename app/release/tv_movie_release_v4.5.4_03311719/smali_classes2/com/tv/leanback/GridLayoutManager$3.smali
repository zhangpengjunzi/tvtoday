.class Lcom/tv/leanback/GridLayoutManager$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tv/leanback/GridLayoutManager;->slideIn()V
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

    .line 1744
    iput-object p1, p0, Lcom/tv/leanback/GridLayoutManager$3;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 1748
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$3;->this$0:Lcom/tv/leanback/GridLayoutManager;

    iget-object p1, p1, Lcom/tv/leanback/GridLayoutManager;->mBaseGridView:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {p1, p0}, Lcom/tv/leanback/BaseGridView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1749
    iget-object p1, p0, Lcom/tv/leanback/GridLayoutManager$3;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {p1}, Lcom/tv/leanback/GridLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method
