.class public Lxyz/doikki/videoplayer/ijk/IjkPlayer;
.super Lxyz/doikki/videoplayer/player/AbstractPlayer;
.source "IjkPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
.implements Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mBufferedPercent:I

.field protected mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;-><init>()V

    .line 31
    iput-object p1, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method private isVideo()Z
    .locals 6

    .line 246
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 248
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 249
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->getTrackType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public getBufferedPercentage()I
    .locals 1

    .line 176
    iget v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mBufferedPercent:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 166
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 171
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpeed()F
    .locals 2

    .line 206
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getSpeed(F)F

    move-result v0

    return v0
.end method

.method public getTcpSpeed()J
    .locals 2

    .line 211
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTcpSpeed()J

    move-result-wide v0

    return-wide v0
.end method

.method public initPlayer()V
    .locals 1

    .line 36
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    iput-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 38
    invoke-static {}, Lxyz/doikki/videoplayer/player/VideoViewManager;->getConfig()Lxyz/doikki/videoplayer/player/VideoViewConfig;

    move-result-object v0

    iget-boolean v0, v0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mIsEnableLog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    .line 39
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->setOptions()V

    .line 40
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 41
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 42
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 43
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 44
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 45
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 46
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnNativeInvokeListener(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 0

    .line 233
    iput p2, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mBufferedPercent:I

    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    .line 222
    iget-object p1, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    invoke-interface {p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onCompletion()V

    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 0

    .line 216
    iget-object p1, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    invoke-interface {p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onError()V

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 0

    .line 227
    iget-object p1, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    invoke-interface {p1, p2, p3}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onInfo(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onNativeInvoke(ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .line 238
    iget-object p1, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    invoke-interface {p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onPrepared()V

    .line 240
    invoke-direct {p0}, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->isVideo()Z

    move-result p1

    if-nez p1, :cond_0

    .line 241
    iget-object p1, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onInfo(II)V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 0

    .line 258
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result p2

    .line 259
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 261
    iget-object p3, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    invoke-interface {p3, p2, p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 90
    :try_start_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    invoke-interface {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onError()V

    :goto_0
    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .line 117
    :try_start_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    invoke-interface {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onError()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 146
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 147
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 148
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 149
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 150
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 151
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 152
    new-instance v0, Lxyz/doikki/videoplayer/ijk/IjkPlayer$1;

    invoke-direct {v0, p0}, Lxyz/doikki/videoplayer/ijk/IjkPlayer$1;-><init>(Lxyz/doikki/videoplayer/ijk/IjkPlayer;)V

    .line 161
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/ijk/IjkPlayer$1;->start()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 125
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->reset()V

    .line 126
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 127
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->setOptions()V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 138
    :try_start_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    long-to-int p2, p1

    int-to-long p1, p2

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    iget-object p1, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    invoke-interface {p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onError()V

    :goto_0
    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2

    .line 81
    :try_start_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    new-instance v1, Lxyz/doikki/videoplayer/ijk/RawDataSourceProvider;

    invoke-direct {v1, p1}, Lxyz/doikki/videoplayer/ijk/RawDataSourceProvider;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    iget-object p1, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    invoke-interface {p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onError()V

    :goto_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
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

    const-string v0, "User-Agent"

    .line 57
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.resource"

    .line 58
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object p2, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mAppContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lxyz/doikki/videoplayer/ijk/RawDataSourceProvider;->create(Landroid/content/Context;Landroid/net/Uri;)Lxyz/doikki/videoplayer/ijk/RawDataSourceProvider;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p2, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 64
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    iget-object v2, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v3, 0x1

    const-string v4, "user_agent"

    invoke-virtual {v2, v3, v4, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_1
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v1, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    iget-object p1, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    invoke-interface {p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onError()V

    :goto_0
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 196
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setOptions()V
    .locals 0

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 201
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSpeed(F)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 191
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 99
    :try_start_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    invoke-interface {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onError()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 108
    :try_start_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    invoke-interface {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onError()V

    :goto_0
    return-void
.end method
