.class Lcom/today/player/ui/fragment/HistoryFragment$3;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


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

    .line 104
    iput-object p1, p0, Lcom/today/player/ui/fragment/HistoryFragment$3;->this$0:Lcom/today/player/ui/fragment/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 107
    invoke-static {p2}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 108
    iget-object p1, p0, Lcom/today/player/ui/fragment/HistoryFragment$3;->this$0:Lcom/today/player/ui/fragment/HistoryFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/HistoryFragment;->access$100(Lcom/today/player/ui/fragment/HistoryFragment;)Lcom/today/player/ui/adapter/HistoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/HistoryAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/VodInfo;

    if-eqz p1, :cond_0

    .line 110
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 111
    iget p1, p1, Lcom/today/player/bean/VodInfo;->id:I

    const-string p3, "id"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    iget-object p1, p0, Lcom/today/player/ui/fragment/HistoryFragment$3;->this$0:Lcom/today/player/ui/fragment/HistoryFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/HistoryFragment;->access$200(Lcom/today/player/ui/fragment/HistoryFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "sourceUrl"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/today/player/ui/fragment/HistoryFragment$3;->this$0:Lcom/today/player/ui/fragment/HistoryFragment;

    const-class p3, Lcom/today/player/ui/activity/DetailActivity;

    invoke-virtual {p1, p3, p2}, Lcom/today/player/ui/fragment/HistoryFragment;->jumpActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
