.class public Lcom/today/player/ui/activity/ProjectionPlayActivity$PlayStart;
.super Ljava/lang/Object;
.source "ProjectionPlayActivity.java"

# interfaces
.implements Lcom/today/player/dkplayer/VideoAnalysis$play;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/activity/ProjectionPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayStart"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/activity/ProjectionPlayActivity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    invoke-virtual {v0}, Lcom/today/player/ui/activity/ProjectionPlayActivity;->e()V

    .line 105
    iget-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    invoke-virtual {v0}, Lcom/today/player/ui/activity/ProjectionPlayActivity;->finish()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    iget-object p2, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    iget-object p2, p2, Lcom/today/player/ui/activity/ProjectionPlayActivity;->d:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {p2, p1}, Lcom/today/player/dkplayer/SimonVideoController;->a(Ljava/lang/String;)V

    .line 95
    iget-object p2, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    iget-object p2, p2, Lcom/today/player/ui/activity/ProjectionPlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz p2, :cond_0

    .line 96
    iget-object p2, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    iget-object p2, p2, Lcom/today/player/ui/activity/ProjectionPlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {p2}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    .line 97
    iget-object p2, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    iget-object p2, p2, Lcom/today/player/ui/activity/ProjectionPlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {p2, p1}, Lxyz/doikki/videoplayer/player/VideoView;->setUrl(Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    iget-object p1, p1, Lcom/today/player/ui/activity/ProjectionPlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->start()V

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    invoke-virtual {p1}, Lcom/today/player/ui/activity/ProjectionPlayActivity;->e()V

    return-void
.end method
