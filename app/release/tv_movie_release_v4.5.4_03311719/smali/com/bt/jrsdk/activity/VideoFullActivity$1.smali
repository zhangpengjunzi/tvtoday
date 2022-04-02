.class Lcom/bt/jrsdk/activity/VideoFullActivity$1;
.super Ljava/lang/Object;
.source "VideoFullActivity.java"

# interfaces
.implements Lxyz/doikki/videoplayer/player/VideoView$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/activity/VideoFullActivity;->initVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/activity/VideoFullActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayStateChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-static {v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->access$200(Lcom/bt/jrsdk/activity/VideoFullActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-static {v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->access$100(Lcom/bt/jrsdk/activity/VideoFullActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-static {v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->access$100(Lcom/bt/jrsdk/activity/VideoFullActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lxyz/doikki/videoplayer/player/VideoView;->setVisibility(I)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-static {v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->access$300(Lcom/bt/jrsdk/activity/VideoFullActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 93
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-static {v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->access$300(Lcom/bt/jrsdk/activity/VideoFullActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-static {v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->access$400(Lcom/bt/jrsdk/activity/VideoFullActivity;)V

    .line 96
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    iget-object v1, v1, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 97
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    iget-object v1, v1, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onShow()V

    goto :goto_0

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-static {v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->access$100(Lcom/bt/jrsdk/activity/VideoFullActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lxyz/doikki/videoplayer/player/VideoView;->getDuration()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bt/jrsdk/activity/VideoFullActivity;->access$002(Lcom/bt/jrsdk/activity/VideoFullActivity;J)J

    goto :goto_0

    .line 105
    :cond_4
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    iget-object v1, v1, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 106
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    iget-object v1, v1, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    const/16 v1, 0x7535

    const-string v2, "video_error"

    invoke-interface {v0, v2, v1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onError(Ljava/lang/String;I)V

    .line 107
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    iget-object v1, v1, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onFinish()V

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-virtual {v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->finish()V

    .line 112
    :cond_6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_playState"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlayerStateChanged(I)V
    .locals 0

    return-void
.end method
