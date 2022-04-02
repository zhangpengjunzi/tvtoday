.class Lcom/today/player/ui/activity/HistoryActivity$3;
.super Lcom/tv/leanback/OnChildViewHolderSelectedListener;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/HistoryActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/HistoryActivity;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$3;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-direct {p0}, Lcom/tv/leanback/OnChildViewHolderSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 0

    if-eqz p2, :cond_0

    .line 126
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$3;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    iget-object p4, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p4}, Lcom/today/player/ui/activity/HistoryActivity;->access$402(Lcom/today/player/ui/activity/HistoryActivity;Landroid/view/View;)Landroid/view/View;

    .line 128
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$3;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HistoryActivity;->access$400(Lcom/today/player/ui/activity/HistoryActivity;)Landroid/view/View;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/today/player/ui/activity/HistoryActivity$3$1;

    invoke-direct {p2, p0, p3}, Lcom/today/player/ui/activity/HistoryActivity$3$1;-><init>(Lcom/today/player/ui/activity/HistoryActivity$3;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method
