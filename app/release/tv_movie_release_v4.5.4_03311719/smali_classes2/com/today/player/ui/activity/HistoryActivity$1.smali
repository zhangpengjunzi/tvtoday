.class Lcom/today/player/ui/activity/HistoryActivity$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


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

    .line 83
    iput-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$1;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 86
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0802ca

    if-ne p1, v0, :cond_0

    .line 87
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 89
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$1;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {p1, p3}, Lcom/today/player/ui/activity/HistoryActivity;->access$002(Lcom/today/player/ui/activity/HistoryActivity;I)I

    .line 90
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$1;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HistoryActivity;->access$000(Lcom/today/player/ui/activity/HistoryActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/today/player/ui/activity/HistoryActivity$1;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {p2}, Lcom/today/player/ui/activity/HistoryActivity;->access$100(Lcom/today/player/ui/activity/HistoryActivity;)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 91
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryActivity$1;->this$0:Lcom/today/player/ui/activity/HistoryActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HistoryActivity;->access$000(Lcom/today/player/ui/activity/HistoryActivity;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/today/player/ui/activity/HistoryActivity;->access$102(Lcom/today/player/ui/activity/HistoryActivity;I)I

    :cond_0
    return-void
.end method
