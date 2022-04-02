.class Lcom/today/player/ui/activity/PlayActivity$5$2;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/PlayActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/activity/PlayActivity$5;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/PlayActivity$5;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/today/player/ui/activity/PlayActivity$5$2;->this$1:Lcom/today/player/ui/activity/PlayActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 487
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$5$2;->this$1:Lcom/today/player/ui/activity/PlayActivity$5;

    iget-object v0, v0, Lcom/today/player/ui/activity/PlayActivity$5;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/PlayActivity;->access$1100(Lcom/today/player/ui/activity/PlayActivity;)Lcom/today/player/dkplayer/VideoAnalysis;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$5$2;->this$1:Lcom/today/player/ui/activity/PlayActivity$5;

    iget-object v0, v0, Lcom/today/player/ui/activity/PlayActivity$5;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/PlayActivity;->access$1100(Lcom/today/player/ui/activity/PlayActivity;)Lcom/today/player/dkplayer/VideoAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity$5$2;->this$1:Lcom/today/player/ui/activity/PlayActivity$5;

    iget-object v1, v1, Lcom/today/player/ui/activity/PlayActivity$5;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v1}, Lcom/today/player/ui/activity/PlayActivity;->access$1200(Lcom/today/player/ui/activity/PlayActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/today/player/ui/activity/PlayActivity$5$2;->this$1:Lcom/today/player/ui/activity/PlayActivity$5;

    iget-object v2, v2, Lcom/today/player/ui/activity/PlayActivity$5;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/PlayActivity;->access$1300(Lcom/today/player/ui/activity/PlayActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    iget-object v3, p0, Lcom/today/player/ui/activity/PlayActivity$5$2;->this$1:Lcom/today/player/ui/activity/PlayActivity$5;

    iget-object v3, v3, Lcom/today/player/ui/activity/PlayActivity$5;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v3}, Lcom/today/player/ui/activity/PlayActivity;->access$1300(Lcom/today/player/ui/activity/PlayActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v3

    iget v3, v3, Lcom/today/player/bean/VodInfo;->playFlag:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/today/player/bean/VodInfo$VodFrom;

    iget-object v2, v2, Lcom/today/player/bean/VodInfo$VodFrom;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/today/player/ui/activity/PlayActivity$5$2;->this$1:Lcom/today/player/ui/activity/PlayActivity$5;

    iget-object v3, v3, Lcom/today/player/ui/activity/PlayActivity$5;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v3}, Lcom/today/player/ui/activity/PlayActivity;->access$1000(Lcom/today/player/ui/activity/PlayActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/today/player/ui/activity/PlayActivity$PlayStart;

    iget-object v5, p0, Lcom/today/player/ui/activity/PlayActivity$5$2;->this$1:Lcom/today/player/ui/activity/PlayActivity$5;

    iget-object v5, v5, Lcom/today/player/ui/activity/PlayActivity$5;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-direct {v4, v5}, Lcom/today/player/ui/activity/PlayActivity$PlayStart;-><init>(Lcom/today/player/ui/activity/PlayActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/today/player/dkplayer/VideoAnalysis;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/today/player/dkplayer/VideoAnalysis$play;)V

    :cond_0
    return-void
.end method
