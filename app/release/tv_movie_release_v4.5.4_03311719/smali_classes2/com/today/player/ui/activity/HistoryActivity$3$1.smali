.class Lcom/today/player/ui/activity/HistoryActivity$3$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/HistoryActivity$3;->onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/activity/HistoryActivity$3;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/HistoryActivity$3;I)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$3$1;->this$1:Lcom/today/player/ui/activity/HistoryActivity$3;

    iput p2, p0, Lcom/today/player/ui/activity/HistoryActivity$3$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 132
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_5

    .line 133
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$3$1;->this$1:Lcom/today/player/ui/activity/HistoryActivity$3;

    iget-object p1, p1, Lcom/today/player/ui/activity/HistoryActivity$3;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {p1, p3}, Lcom/today/player/ui/activity/HistoryActivity;->access$302(Lcom/today/player/ui/activity/HistoryActivity;Z)Z

    const/16 p1, 0x14

    const/4 v0, 0x1

    if-ne p2, p1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$3$1;->this$1:Lcom/today/player/ui/activity/HistoryActivity$3;

    iget-object p1, p1, Lcom/today/player/ui/activity/HistoryActivity$3;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HistoryActivity;->access$500(Lcom/today/player/ui/activity/HistoryActivity;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/today/player/ui/activity/HistoryActivity$3$1;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/ui/fragment/HistoryFragment;

    invoke-virtual {p1}, Lcom/today/player/ui/fragment/HistoryFragment;->isLoad()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$3$1;->this$1:Lcom/today/player/ui/activity/HistoryActivity$3;

    iget-object p1, p1, Lcom/today/player/ui/activity/HistoryActivity$3;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {p1, v0}, Lcom/today/player/ui/activity/HistoryActivity;->access$302(Lcom/today/player/ui/activity/HistoryActivity;Z)Z

    .line 137
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$3$1;->this$1:Lcom/today/player/ui/activity/HistoryActivity$3;

    iget-object p1, p1, Lcom/today/player/ui/activity/HistoryActivity$3;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {p1, v0}, Lcom/today/player/ui/activity/HistoryActivity;->access$600(Lcom/today/player/ui/activity/HistoryActivity;Z)V

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/16 p1, 0x13

    if-ne p2, p1, :cond_2

    .line 142
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$3$1;->this$1:Lcom/today/player/ui/activity/HistoryActivity$3;

    iget-object p1, p1, Lcom/today/player/ui/activity/HistoryActivity$3;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {p1, v0}, Lcom/today/player/ui/activity/HistoryActivity;->access$302(Lcom/today/player/ui/activity/HistoryActivity;Z)Z

    goto :goto_0

    :cond_2
    const/16 p1, 0x15

    if-ne p2, p1, :cond_3

    .line 143
    iget p1, p0, Lcom/today/player/ui/activity/HistoryActivity$3$1;->val$position:I

    if-eqz p1, :cond_4

    :cond_3
    const/16 p1, 0x16

    if-ne p2, p1, :cond_5

    iget p1, p0, Lcom/today/player/ui/activity/HistoryActivity$3$1;->val$position:I

    iget-object p2, p0, Lcom/today/player/ui/activity/HistoryActivity$3$1;->this$1:Lcom/today/player/ui/activity/HistoryActivity$3;

    iget-object p2, p2, Lcom/today/player/ui/activity/HistoryActivity$3;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {p2}, Lcom/today/player/ui/activity/HistoryActivity;->access$700(Lcom/today/player/ui/activity/HistoryActivity;)Lcom/today/player/ui/adapter/HistorySourceAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/today/player/ui/adapter/HistorySourceAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_5

    :cond_4
    return v0

    :cond_5
    :goto_0
    return p3
.end method
