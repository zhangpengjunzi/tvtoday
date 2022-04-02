.class Lxyz/doikki/videoplayer/ijk/IjkPlayer$1;
.super Ljava/lang/Thread;
.source "IjkPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxyz/doikki/videoplayer/ijk/IjkPlayer;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxyz/doikki/videoplayer/ijk/IjkPlayer;


# direct methods
.method constructor <init>(Lxyz/doikki/videoplayer/ijk/IjkPlayer;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer$1;->this$0:Lxyz/doikki/videoplayer/ijk/IjkPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 156
    :try_start_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer$1;->this$0:Lxyz/doikki/videoplayer/ijk/IjkPlayer;

    iget-object v0, v0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
