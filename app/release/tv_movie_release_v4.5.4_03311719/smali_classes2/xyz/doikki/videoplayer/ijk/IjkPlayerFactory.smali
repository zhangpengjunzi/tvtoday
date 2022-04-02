.class public Lxyz/doikki/videoplayer/ijk/IjkPlayerFactory;
.super Lxyz/doikki/videoplayer/player/PlayerFactory;
.source "IjkPlayerFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxyz/doikki/videoplayer/player/PlayerFactory<",
        "Lxyz/doikki/videoplayer/ijk/IjkPlayer;",
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

.method public static create()Lxyz/doikki/videoplayer/ijk/IjkPlayerFactory;
    .locals 1

    .line 10
    new-instance v0, Lxyz/doikki/videoplayer/ijk/IjkPlayerFactory;

    invoke-direct {v0}, Lxyz/doikki/videoplayer/ijk/IjkPlayerFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createPlayer(Landroid/content/Context;)Lxyz/doikki/videoplayer/ijk/IjkPlayer;
    .locals 1

    .line 15
    new-instance v0, Lxyz/doikki/videoplayer/ijk/IjkPlayer;

    invoke-direct {v0, p1}, Lxyz/doikki/videoplayer/ijk/IjkPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic createPlayer(Landroid/content/Context;)Lxyz/doikki/videoplayer/player/AbstractPlayer;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/ijk/IjkPlayerFactory;->createPlayer(Landroid/content/Context;)Lxyz/doikki/videoplayer/ijk/IjkPlayer;

    move-result-object p1

    return-object p1
.end method
