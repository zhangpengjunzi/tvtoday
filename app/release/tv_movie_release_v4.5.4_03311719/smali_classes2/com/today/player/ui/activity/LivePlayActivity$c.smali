.class public Lcom/today/player/ui/activity/LivePlayActivity$c;
.super Ljava/lang/Object;
.source "LivePlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/activity/LivePlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/LivePlayActivity;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/activity/LivePlayActivity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/today/player/ui/activity/LivePlayActivity$c;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 99
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity$c;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    iget-object v0, v0, Lcom/today/player/ui/activity/LivePlayActivity;->f167p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity$c;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    .line 101
    iget-object v1, v0, Lcom/today/player/ui/activity/LivePlayActivity;->f167p:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 104
    :goto_0
    iget-object v4, v0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 108
    :cond_0
    iget-object v4, v0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/today/player/bean/PlayerModel$LiveDTO;

    .line 109
    invoke-virtual {v4}, Lcom/today/player/bean/PlayerModel$LiveDTO;->getChannelNum()I

    move-result v5

    if-ne v5, v1, :cond_2

    move-object v1, v4

    :goto_1
    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Lcom/today/player/bean/PlayerModel$LiveDTO;Z)Z

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity$c;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    const-string v1, ""

    iput-object v1, v0, Lcom/today/player/ui/activity/LivePlayActivity;->f167p:Ljava/lang/String;

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity$c;->this$0:Lcom/today/player/ui/activity/LivePlayActivity;

    .line 120
    iget-object v1, v0, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    iget-object v0, v0, Lcom/today/player/ui/activity/LivePlayActivity;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
