.class Lxyz/doikki/videoplayer/player/AndroidMediaPlayer$1;
.super Ljava/lang/Thread;
.source "AndroidMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxyz/doikki/videoplayer/player/AndroidMediaPlayer;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxyz/doikki/videoplayer/player/AndroidMediaPlayer;

.field final synthetic val$mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lxyz/doikki/videoplayer/player/AndroidMediaPlayer;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lxyz/doikki/videoplayer/player/AndroidMediaPlayer$1;->this$0:Lxyz/doikki/videoplayer/player/AndroidMediaPlayer;

    iput-object p2, p0, Lxyz/doikki/videoplayer/player/AndroidMediaPlayer$1;->val$mediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 137
    :try_start_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/AndroidMediaPlayer$1;->val$mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
