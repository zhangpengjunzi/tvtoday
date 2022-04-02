.class final Lcom/bt/jrsdk/util/VideoTimeUtil$1;
.super Ljava/util/TimerTask;
.source "VideoTimeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/util/VideoTimeUtil;->countDown(Lxyz/doikki/videoplayer/player/VideoView;Lcom/bt/jrsdk/util/VideoTimeUtil$CountDownListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/bt/jrsdk/util/VideoTimeUtil$CountDownListener;

.field final synthetic val$videoView:Lxyz/doikki/videoplayer/player/VideoView;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/util/VideoTimeUtil$CountDownListener;Lxyz/doikki/videoplayer/player/VideoView;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/bt/jrsdk/util/VideoTimeUtil$1;->val$listener:Lcom/bt/jrsdk/util/VideoTimeUtil$CountDownListener;

    iput-object p2, p0, Lcom/bt/jrsdk/util/VideoTimeUtil$1;->val$videoView:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/bt/jrsdk/util/VideoTimeUtil$1;->val$listener:Lcom/bt/jrsdk/util/VideoTimeUtil$CountDownListener;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/bt/jrsdk/util/VideoTimeUtil$1;->val$videoView:Lxyz/doikki/videoplayer/player/VideoView;

    new-instance v1, Lcom/bt/jrsdk/util/VideoTimeUtil$1$1;

    invoke-direct {v1, p0}, Lcom/bt/jrsdk/util/VideoTimeUtil$1$1;-><init>(Lcom/bt/jrsdk/util/VideoTimeUtil$1;)V

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
