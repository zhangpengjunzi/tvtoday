.class public Lxyz/doikki/videoplayer/exo/ExoMediaPlayerFactory;
.super Lxyz/doikki/videoplayer/player/PlayerFactory;
.source "ExoMediaPlayerFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxyz/doikki/videoplayer/player/PlayerFactory<",
        "Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lxyz/doikki/videoplayer/player/PlayerFactory;-><init>()V

    return-void
.end method

.method public static create()Lxyz/doikki/videoplayer/exo/ExoMediaPlayerFactory;
    .locals 1

    .line 10
    new-instance v0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayerFactory;

    invoke-direct {v0}, Lxyz/doikki/videoplayer/exo/ExoMediaPlayerFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createPlayer(Landroid/content/Context;)Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;
    .locals 1

    .line 15
    new-instance v0, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;

    invoke-direct {v0, p1}, Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic createPlayer(Landroid/content/Context;)Lxyz/doikki/videoplayer/player/AbstractPlayer;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/exo/ExoMediaPlayerFactory;->createPlayer(Landroid/content/Context;)Lxyz/doikki/videoplayer/exo/ExoMediaPlayer;

    move-result-object p1

    return-object p1
.end method
