.class Lcom/tv/leanback/BaseGridView$2;
.super Lcom/tv/leanback/OnChildViewHolderSelectedListener;
.source "BaseGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tv/leanback/BaseGridView;->setSelectedPositionSmooth(ILcom/tv/leanback/ViewHolderTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tv/leanback/BaseGridView;

.field final synthetic val$position:I

.field final synthetic val$task:Lcom/tv/leanback/ViewHolderTask;


# direct methods
.method constructor <init>(Lcom/tv/leanback/BaseGridView;ILcom/tv/leanback/ViewHolderTask;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/tv/leanback/BaseGridView$2;->this$0:Lcom/tv/leanback/BaseGridView;

    iput p2, p0, Lcom/tv/leanback/BaseGridView$2;->val$position:I

    iput-object p3, p0, Lcom/tv/leanback/BaseGridView$2;->val$task:Lcom/tv/leanback/ViewHolderTask;

    invoke-direct {p0}, Lcom/tv/leanback/OnChildViewHolderSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 0

    .line 640
    iget p1, p0, Lcom/tv/leanback/BaseGridView$2;->val$position:I

    if-ne p3, p1, :cond_0

    .line 641
    iget-object p1, p0, Lcom/tv/leanback/BaseGridView$2;->this$0:Lcom/tv/leanback/BaseGridView;

    invoke-virtual {p1, p0}, Lcom/tv/leanback/BaseGridView;->removeOnChildViewHolderSelectedListener(Lcom/tv/leanback/OnChildViewHolderSelectedListener;)V

    .line 642
    iget-object p1, p0, Lcom/tv/leanback/BaseGridView$2;->val$task:Lcom/tv/leanback/ViewHolderTask;

    invoke-interface {p1, p2}, Lcom/tv/leanback/ViewHolderTask;->run(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method
