.class public Lxyz/doikki/videoplayer/player/AndroidMediaPlayerFactory;
.super Lxyz/doikki/videoplayer/player/PlayerFactory;
.source "AndroidMediaPlayerFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxyz/doikki/videoplayer/player/PlayerFactory<",
        "Lxyz/doikki/videoplayer/player/AndroidMediaPlayer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lxyz/doikki/videoplayer/player/PlayerFactory;-><init>()V

    return-void
.end method

.method public static create()Lxyz/doikki/videoplayer/player/AndroidMediaPlayerFactory;
    .locals 1

    .line 11
    new-instance v0, Lxyz/doikki/videoplayer/player/AndroidMediaPlayerFactory;

    invoke-direct {v0}, Lxyz/doikki/videoplayer/player/AndroidMediaPlayerFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createPlayer(Landroid/content/Context;)Lxyz/doikki/videoplayer/player/AbstractPlayer;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/player/AndroidMediaPlayerFactory;->createPlayer(Landroid/content/Context;)Lxyz/doikki/videoplayer/player/AndroidMediaPlayer;

    move-result-object p1

    return-object p1
.end method

.method public createPlayer(Landroid/content/Context;)Lxyz/doikki/videoplayer/player/AndroidMediaPlayer;
    .locals 1

    .line 16
    new-instance v0, Lxyz/doikki/videoplayer/player/AndroidMediaPlayer;

    invoke-direct {v0, p1}, Lxyz/doikki/videoplayer/player/AndroidMediaPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
