.class public abstract Lxyz/doikki/videoplayer/player/AbstractPlayer;
.super Ljava/lang/Object;
.source "AbstractPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;
    }
.end annotation


# static fields
.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_ROTATION_CHANGED:I = 0x2711


# instance fields
.field protected mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBufferedPercentage()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getSpeed()F
.end method

.method public abstract getTcpSpeed()J
.end method

.method public abstract initPlayer()V
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract prepareAsync()V
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setDataSource(Landroid/content/res/AssetFileDescriptor;)V
.end method

.method public abstract setDataSource(Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method public abstract setDisplay(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setOptions()V
.end method

.method public setPlayerEventListener(Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lxyz/doikki/videoplayer/player/AbstractPlayer;->mPlayerEventListener:Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;

    return-void
.end method

.method public abstract setSpeed(F)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
