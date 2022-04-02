.class Lcom/bt/jrsdk/util/VideoTimeUtil$1$1;
.super Ljava/lang/Object;
.source "VideoTimeUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/util/VideoTimeUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/util/VideoTimeUtil$1;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/util/VideoTimeUtil$1;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/bt/jrsdk/util/VideoTimeUtil$1$1;->this$0:Lcom/bt/jrsdk/util/VideoTimeUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/bt/jrsdk/util/VideoTimeUtil$1$1;->this$0:Lcom/bt/jrsdk/util/VideoTimeUtil$1;

    iget-object v0, v0, Lcom/bt/jrsdk/util/VideoTimeUtil$1;->val$listener:Lcom/bt/jrsdk/util/VideoTimeUtil$CountDownListener;

    iget-object v1, p0, Lcom/bt/jrsdk/util/VideoTimeUtil$1$1;->this$0:Lcom/bt/jrsdk/util/VideoTimeUtil$1;

    iget-object v1, v1, Lcom/bt/jrsdk/util/VideoTimeUtil$1;->val$videoView:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v1}, Lxyz/doikki/videoplayer/player/VideoView;->getCurrentPosition()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/bt/jrsdk/util/VideoTimeUtil$CountDownListener;->currentTime(J)V

    return-void
.end method
