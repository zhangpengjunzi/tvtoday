.class Lcom/today/player/ui/activity/HistoryNewActivity$4;
.super Ljava/lang/Object;
.source "HistoryNewActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/HistoryNewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/HistoryNewActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/HistoryNewActivity;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/today/player/ui/activity/HistoryNewActivity$4;->this$0:Lcom/today/player/ui/activity/HistoryNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 104
    invoke-static {p2}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 105
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryNewActivity$4;->this$0:Lcom/today/player/ui/activity/HistoryNewActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/HistoryNewActivity;->access$100(Lcom/today/player/ui/activity/HistoryNewActivity;)Lcom/today/player/ui/adapter/HistoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/HistoryAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/VodInfo;

    if-eqz p1, :cond_1

    .line 107
    iget-object p2, p0, Lcom/today/player/ui/activity/HistoryNewActivity$4;->this$0:Lcom/today/player/ui/activity/HistoryNewActivity;

    iget-boolean p2, p2, Lcom/today/player/ui/activity/HistoryNewActivity;->g:Z

    if-eqz p2, :cond_0

    .line 108
    iget-object p2, p0, Lcom/today/player/ui/activity/HistoryNewActivity$4;->this$0:Lcom/today/player/ui/activity/HistoryNewActivity;

    invoke-static {p2}, Lcom/today/player/ui/activity/HistoryNewActivity;->access$100(Lcom/today/player/ui/activity/HistoryNewActivity;)Lcom/today/player/ui/adapter/HistoryAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/today/player/ui/adapter/HistoryAdapter;->remove(I)V

    .line 109
    iget-object p2, p1, Lcom/today/player/bean/VodInfo;->apiUrl:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/today/player/cache/RoomDataManger;->deleteVodRecord(Ljava/lang/String;Lcom/today/player/bean/VodInfo;)V

    return-void

    .line 112
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 113
    iget p3, p1, Lcom/today/player/bean/VodInfo;->id:I

    const-string v0, "id"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    iget-object p3, p1, Lcom/today/player/bean/VodInfo;->apiUrl:Ljava/lang/String;

    const-string v0, "sourceUrl"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p1, p1, Lcom/today/player/bean/VodInfo;->sourceKey:Ljava/lang/String;

    const-string p3, "sourceKey"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/today/player/ui/activity/HistoryNewActivity$4;->this$0:Lcom/today/player/ui/activity/HistoryNewActivity;

    const-class p3, Lcom/today/player/ui/activity/DetailActivity;

    invoke-virtual {p1, p3, p2}, Lcom/today/player/ui/activity/HistoryNewActivity;->jumpActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
