.class Lcom/today/player/ui/activity/DetailActivity$9;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/DetailActivity;->quickSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/DetailActivity;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$9;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 390
    invoke-static {p2}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 391
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$9;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$3400(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/dialog/QuickSearchDialog;

    move-result-object p1

    iget-object p1, p1, Lcom/today/player/ui/dialog/QuickSearchDialog;->d:Lcom/today/player/ui/adapter/SearchAdapter;

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/SearchAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 392
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$9;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$3400(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/dialog/QuickSearchDialog;

    move-result-object p1

    iget-object p1, p1, Lcom/today/player/ui/dialog/QuickSearchDialog;->d:Lcom/today/player/ui/adapter/SearchAdapter;

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/SearchAdapter;->notifyDataSetChanged()V

    .line 393
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$9;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/today/player/ui/activity/DetailActivity;->access$902(Lcom/today/player/ui/activity/DetailActivity;I)I

    .line 394
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$9;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$3400(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/dialog/QuickSearchDialog;

    move-result-object p2

    iget-object p2, p2, Lcom/today/player/ui/dialog/QuickSearchDialog;->c:Lcom/today/player/ui/adapter/QuickSearchAdapter;

    invoke-virtual {p2}, Lcom/today/player/ui/adapter/QuickSearchAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/today/player/ui/activity/DetailActivity;->access$1002(Lcom/today/player/ui/activity/DetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$9;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$3700(Lcom/today/player/ui/activity/DetailActivity;)V

    return-void
.end method
