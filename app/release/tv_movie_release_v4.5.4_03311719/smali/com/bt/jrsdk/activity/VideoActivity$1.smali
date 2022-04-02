.class Lcom/bt/jrsdk/activity/VideoActivity$1;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Lxyz/doikki/videoplayer/player/VideoView$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/activity/VideoActivity;->initVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/activity/VideoActivity;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/activity/VideoActivity;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayStateChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/VideoActivity;->access$000(Lcom/bt/jrsdk/activity/VideoActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/VideoActivity;->access$100(Lcom/bt/jrsdk/activity/VideoActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 83
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/VideoActivity;->access$100(Lcom/bt/jrsdk/activity/VideoActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lxyz/doikki/videoplayer/player/VideoView;->setVisibility(I)V

    .line 86
    :cond_1
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 87
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onShow()V

    goto/16 :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/VideoActivity;->access$000(Lcom/bt/jrsdk/activity/VideoActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/VideoActivity;->access$100(Lcom/bt/jrsdk/activity/VideoActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lxyz/doikki/videoplayer/player/VideoView;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_3
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 93
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    .line 94
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bt/jrsdk/activity/VideoActivity;->access$202(Lcom/bt/jrsdk/activity/VideoActivity;Z)Z

    .line 96
    :cond_4
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/VideoActivity;->access$100(Lcom/bt/jrsdk/activity/VideoActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lxyz/doikki/videoplayer/player/VideoView;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/VideoActivity;->access$000(Lcom/bt/jrsdk/activity/VideoActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_5
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 102
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    const/16 v0, 0x7535

    const-string v1, "video_error"

    invoke-interface {p1, v1, v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onError(Ljava/lang/String;I)V

    .line 103
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    .line 105
    :cond_6
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$1;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-virtual {p1}, Lcom/bt/jrsdk/activity/VideoActivity;->finish()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onPlayerStateChanged(I)V
    .locals 0

    return-void
.end method
