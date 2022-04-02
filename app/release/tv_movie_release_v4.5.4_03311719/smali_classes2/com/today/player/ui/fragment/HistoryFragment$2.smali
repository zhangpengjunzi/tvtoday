.class Lcom/today/player/ui/fragment/HistoryFragment$2;
.super Lcom/tv/leanback/OnChildViewHolderSelectedListener;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/fragment/HistoryFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/fragment/HistoryFragment;


# direct methods
.method constructor <init>(Lcom/today/player/ui/fragment/HistoryFragment;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/today/player/ui/fragment/HistoryFragment$2;->this$0:Lcom/today/player/ui/fragment/HistoryFragment;

    invoke-direct {p0}, Lcom/tv/leanback/OnChildViewHolderSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 0

    if-eqz p2, :cond_1

    .line 83
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    if-ge p3, p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/today/player/ui/fragment/HistoryFragment$2;->this$0:Lcom/today/player/ui/fragment/HistoryFragment;

    const/4 p4, 0x1

    invoke-static {p1, p4}, Lcom/today/player/ui/fragment/HistoryFragment;->access$002(Lcom/today/player/ui/fragment/HistoryFragment;Z)Z

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/fragment/HistoryFragment$2;->this$0:Lcom/today/player/ui/fragment/HistoryFragment;

    const/4 p4, 0x0

    invoke-static {p1, p4}, Lcom/today/player/ui/fragment/HistoryFragment;->access$002(Lcom/today/player/ui/fragment/HistoryFragment;Z)Z

    .line 89
    :goto_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/today/player/ui/fragment/HistoryFragment$2$1;

    invoke-direct {p2, p0, p3}, Lcom/today/player/ui/fragment/HistoryFragment$2$1;-><init>(Lcom/today/player/ui/fragment/HistoryFragment$2;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    return-void
.end method
