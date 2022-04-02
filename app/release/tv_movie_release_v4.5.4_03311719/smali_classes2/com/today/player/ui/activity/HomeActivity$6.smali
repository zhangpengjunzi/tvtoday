.class Lcom/today/player/ui/activity/HomeActivity$6;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/HomeActivity;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/today/player/bean/AbsSortXml;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/HomeActivity;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$6;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/today/player/bean/AbsSortXml;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity$6;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/HomeActivity;->access$1100(Lcom/today/player/ui/activity/HomeActivity;)V

    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p1, Lcom/today/player/bean/AbsSortXml;->movieSort:Lcom/today/player/bean/MovieSort;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/today/player/bean/AbsSortXml;->movieSort:Lcom/today/player/bean/MovieSort;

    iget-object v0, v0, Lcom/today/player/bean/MovieSort;->sortList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/today/player/ui/activity/HomeActivity$6;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/HomeActivity;->access$400(Lcom/today/player/ui/activity/HomeActivity;)Lcom/today/player/ui/adapter/SortAdapter;

    move-result-object v0

    iget-object p1, p1, Lcom/today/player/bean/AbsSortXml;->movieSort:Lcom/today/player/bean/MovieSort;

    iget-object p1, p1, Lcom/today/player/bean/MovieSort;->sortList:Ljava/util/List;

    invoke-static {p1}, Lcom/today/player/util/DefaultConfig;->adjustSort(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/today/player/ui/adapter/SortAdapter;->setNewData(Ljava/util/List;)V

    .line 222
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$6;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$1200(Lcom/today/player/ui/activity/HomeActivity;)Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/today/player/ui/activity/HomeActivity;->access$1300(Lcom/today/player/ui/activity/HomeActivity;Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$6;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$400(Lcom/today/player/ui/activity/HomeActivity;)Lcom/today/player/ui/adapter/SortAdapter;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/today/player/util/DefaultConfig;->adjustSort(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/today/player/ui/adapter/SortAdapter;->setNewData(Ljava/util/List;)V

    .line 225
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$6;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$1400(Lcom/today/player/ui/activity/HomeActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 226
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$6;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$1400(Lcom/today/player/ui/activity/HomeActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 228
    :goto_0
    iget-object p1, p0, Lcom/today/player/ui/activity/HomeActivity$6;->this$0:Lcom/today/player/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HomeActivity;->access$1500(Lcom/today/player/ui/activity/HomeActivity;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 216
    check-cast p1, Lcom/today/player/bean/AbsSortXml;

    invoke-virtual {p0, p1}, Lcom/today/player/ui/activity/HomeActivity$6;->onChanged(Lcom/today/player/bean/AbsSortXml;)V

    return-void
.end method
