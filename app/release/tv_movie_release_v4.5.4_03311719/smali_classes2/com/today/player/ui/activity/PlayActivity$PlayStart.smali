.class public Lcom/today/player/ui/activity/PlayActivity$PlayStart;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lcom/today/player/dkplayer/VideoAnalysis$play;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/activity/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayStart"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/PlayActivity;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/activity/PlayActivity;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/today/player/ui/activity/PlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-virtual {v0}, Lcom/today/player/ui/activity/PlayActivity;->finish()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    .line 344
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/PlayActivity;->access$900(Lcom/today/player/ui/activity/PlayActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/PlayActivity;->access$900(Lcom/today/player/ui/activity/PlayActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    if-eqz p2, :cond_0

    .line 347
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/PlayActivity;->access$900(Lcom/today/player/ui/activity/PlayActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lxyz/doikki/videoplayer/player/VideoView;->setUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 349
    :cond_0
    iget-object p2, p0, Lcom/today/player/ui/activity/PlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {p2}, Lcom/today/player/ui/activity/PlayActivity;->access$900(Lcom/today/player/ui/activity/PlayActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lxyz/doikki/videoplayer/player/VideoView;->setUrl(Ljava/lang/String;)V

    .line 351
    :goto_0
    iget-object p1, p0, Lcom/today/player/ui/activity/PlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/PlayActivity;->access$900(Lcom/today/player/ui/activity/PlayActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->start()V

    .line 353
    :cond_1
    iget-object p1, p0, Lcom/today/player/ui/activity/PlayActivity$PlayStart;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-virtual {p1}, Lcom/today/player/ui/activity/PlayActivity;->f()V

    return-void
.end method
