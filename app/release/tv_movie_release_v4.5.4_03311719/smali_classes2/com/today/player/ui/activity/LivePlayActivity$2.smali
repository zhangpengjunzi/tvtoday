.class Lcom/today/player/ui/activity/LivePlayActivity$2;
.super Ljava/lang/Object;
.source "LivePlayActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/LivePlayActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/LivePlayActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/LivePlayActivity;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/today/player/ui/activity/LivePlayActivity$2;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 220
    invoke-static {p2}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 221
    iget-object p1, p0, Lcom/today/player/ui/activity/LivePlayActivity$2;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    .line 222
    iget-object p2, p1, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/today/player/bean/PlayerModel$LiveDTO;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Lcom/today/player/bean/PlayerModel$LiveDTO;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 223
    iget-object p2, p1, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    iget-object p1, p1, Lcom/today/player/ui/activity/LivePlayActivity;->l:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
