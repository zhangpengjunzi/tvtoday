.class Lcom/tv/leanback/BaseGridView$1;
.super Ljava/lang/Object;
.source "BaseGridView.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tv/leanback/BaseGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tv/leanback/BaseGridView;


# direct methods
.method constructor <init>(Lcom/tv/leanback/BaseGridView;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/tv/leanback/BaseGridView$1;->this$0:Lcom/tv/leanback/BaseGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView$1;->this$0:Lcom/tv/leanback/BaseGridView;

    iget-object v0, v0, Lcom/tv/leanback/BaseGridView;->mLayoutManager:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/tv/leanback/GridLayoutManager;->onChildRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 213
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView$1;->this$0:Lcom/tv/leanback/BaseGridView;

    iget-object v0, v0, Lcom/tv/leanback/BaseGridView;->mChainedRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/tv/leanback/BaseGridView$1;->this$0:Lcom/tv/leanback/BaseGridView;

    iget-object v0, v0, Lcom/tv/leanback/BaseGridView;->mChainedRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method
