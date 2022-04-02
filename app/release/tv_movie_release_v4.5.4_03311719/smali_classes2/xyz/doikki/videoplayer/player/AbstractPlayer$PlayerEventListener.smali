.class public interface abstract Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;
.super Ljava/lang/Object;
.source "AbstractPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/doikki/videoplayer/player/AbstractPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerEventListener"
.end annotation


# virtual methods
.method public abstract onCompletion()V
.end method

.method public abstract onError()V
.end method

.method public abstract onInfo(II)V
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onVideoSizeChanged(II)V
.end method
