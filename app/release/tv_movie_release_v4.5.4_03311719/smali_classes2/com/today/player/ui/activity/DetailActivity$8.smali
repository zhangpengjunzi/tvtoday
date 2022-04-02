.class Lcom/today/player/ui/activity/DetailActivity$8;
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

    .line 369
    iput-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$8;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 372
    invoke-static {p2}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 373
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$8;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$3400(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/dialog/QuickSearchDialog;

    move-result-object p1

    iget-object p1, p1, Lcom/today/player/ui/dialog/QuickSearchDialog;->b:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 375
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$8;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$3400(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/dialog/QuickSearchDialog;

    move-result-object p1

    iget-object p1, p1, Lcom/today/player/ui/dialog/QuickSearchDialog;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$8;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$3500(Lcom/today/player/ui/activity/DetailActivity;)V

    .line 378
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$8;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$3400(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/dialog/QuickSearchDialog;

    move-result-object p1

    iget-object p1, p1, Lcom/today/player/ui/dialog/QuickSearchDialog;->d:Lcom/today/player/ui/adapter/SearchAdapter;

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/SearchAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/Movie$Video;

    .line 379
    iget-object p2, p0, Lcom/today/player/ui/activity/DetailActivity$8;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p2}, Lcom/today/player/ui/activity/DetailActivity;->access$3600(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/viewmodel/SourceViewModel;

    move-result-object p2

    iget-object p3, p1, Lcom/today/player/bean/Movie$Video;->api:Ljava/lang/String;

    iget v0, p1, Lcom/today/player/bean/Movie$Video;->id:I

    iget-object p1, p1, Lcom/today/player/bean/Movie$Video;->sourceKey:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, p1}, Lcom/today/player/viewmodel/SourceViewModel;->getDetail(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
