.class public Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;
.super Lxyz/doikki/videoplayer/player/AbstractPlayer;
.source "ExoMediaPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# instance fields
.field protected mAppContext:Landroid/content/Context;

.field protected mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private mIsPreparing:Z

.field private mLoadControl:Lcom/google/android/exoplayer2/LoadControl;

.field protected mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field protected mMediaSourceHelper:Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;

.field private mRenderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

.field private mSpeedPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private mTrackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mAppContext:Landroid/content/Context;

    .line 50
    invoke-static {p1}, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->getInstance(Landroid/content/Context;)Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;

    move-result-object p1

    iput-object p1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mMediaSourceHelper:Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;

    return-void
.end method


# virtual methods
.method public getBufferedPercentage()I
    .locals 1

    .line 191
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 177
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 179
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 184
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 186
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpeed()F
    .locals 1

    .line 238
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mSpeedPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    if-eqz v0, :cond_0

    .line 239
    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getTcpSpeed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public initPlayer()V
    .locals 9

    .line 55
    new-instance v8, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    iget-object v1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mAppContext:Landroid/content/Context;

    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mRenderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mRenderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

    :cond_0
    move-object v2, v0

    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v3, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    :cond_1
    move-object v3, v0

    new-instance v4, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mLoadControl:Lcom/google/android/exoplayer2/LoadControl;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    iput-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mLoadControl:Lcom/google/android/exoplayer2/LoadControl;

    :cond_2
    move-object v5, v0

    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mAppContext:Landroid/content/Context;

    .line 61
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getSingletonInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object v6

    new-instance v7, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;-><init>(Lcom/google/android/exoplayer2/util/Clock;)V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/source/MediaSourceFactory;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)V

    .line 63
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 64
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->setOptions()V

    .line 67
    invoke-static {}, Lxyz/doikki/videoplayer/player/VideoViewManager;->getConfig()Lxyz/doikki/videoplayer/player/VideoViewConfig;

    move-result-object v0

    iget-boolean v0, v0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mIsEnableLog:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    instance-of v1, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    if-eqz v1, :cond_3

    .line 68
    iget-object v1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v2, Lcom/google/android/exoplayer2/util/EventLogger;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    const-string v3, "ExoPlayer"

    invoke-direct {v2, v0, v3}, Lcom/google/android/exoplayer2/util/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 71
    :cond_3
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 3

    .line 142
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 144
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return v1

    .line 148
    :cond_1
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/device/DeviceInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/device/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;IZ)V

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 2

    .line 252
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mIsPreparing:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_1

    .line 255
    iget-object p1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    invoke-interface {p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onPrepared()V

    .line 256
    iget-object p1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onInfo(II)V

    .line 257
    iput-boolean v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mIsPreparing:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 269
    :cond_3
    iget-object p1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    invoke-interface {p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onCompletion()V

    goto :goto_0

    .line 266
    :cond_4
    iget-object p1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    const/16 v0, 0x2be

    invoke-virtual {p0}, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->getBufferedPercentage()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onInfo(II)V

    goto :goto_0

    .line 263
    :cond_5
    iget-object p1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    const/16 v0, 0x2bd

    invoke-virtual {p0}, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->getBufferedPercentage()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onInfo(II)V

    :goto_0
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    .line 276
    iget-object p1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    if-eqz p1, :cond_0

    .line 277
    iget-object p1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    invoke-interface {p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onError()V

    :cond_0
    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$EventListener;ZI)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onStaticMetadataChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onStaticMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(IIIF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/VideoListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoListener;IIIF)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 3

    .line 283
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    iget v1, p1, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    iget v2, p1, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    invoke-interface {v0, v1, v2}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onVideoSizeChanged(II)V

    .line 285
    iget v0, p1, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    if-lez v0, :cond_0

    .line 286
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    const/16 v1, 0x2711

    iget p1, p1, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    invoke-interface {v0, v1, p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;->onInfo(II)V

    :cond_0
    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;F)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 105
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public prepareAsync()V
    .locals 2

    .line 119
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-nez v1, :cond_1

    return-void

    .line 122
    :cond_1
    iget-object v1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mSpeedPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_2
    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mIsPreparing:Z

    .line 126
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 127
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 165
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 167
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 168
    iput-object v1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :cond_0
    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mIsPreparing:Z

    .line 172
    iput-object v1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mSpeedPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-void
.end method

.method public reset()V
    .locals 2

    .line 132
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 134
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearMediaItems()V

    .line 135
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mIsPreparing:Z

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 158
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
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

    .line 88
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mMediaSourceHelper:Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;

    invoke-virtual {v0, p1, p2}, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->getMediaSource(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    iput-object p1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 204
    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mLoadControl:Lcom/google/android/exoplayer2/LoadControl;

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 217
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 218
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    :cond_1
    return-void
.end method

.method public setOptions()V
    .locals 2

    .line 224
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public setRenderersFactory(Lcom/google/android/exoplayer2/RenderersFactory;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mRenderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 229
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    .line 230
    iput-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mSpeedPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 231
    iget-object p1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 211
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    add-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 212
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 98
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 100
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 112
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    return-void
.end method
