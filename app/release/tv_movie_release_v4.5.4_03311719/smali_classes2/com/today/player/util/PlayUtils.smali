.class public Lcom/today/player/util/PlayUtils;
.super Ljava/lang/Object;
.source "PlayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/util/PlayUtils$bi;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 50
    array-length v0, p0

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 53
    aget-byte v3, p0, v2

    rem-int v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static a()V
    .locals 5

    const/4 v0, 0x0

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "play_type"

    invoke-static {v2, v1}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 63
    invoke-static {}, Lxyz/doikki/videoplayer/ijk/IjkPlayerFactory;->create()Lxyz/doikki/videoplayer/ijk/IjkPlayerFactory;

    move-result-object v2

    .line 65
    :try_start_0
    new-instance v4, Lcom/today/player/util/PlayUtils$2;

    invoke-direct {v4}, Lcom/today/player/util/PlayUtils$2;-><init>()V

    invoke-static {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 72
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Lxyz/doikki/videoplayer/exo/ExoMediaPlayerFactory;->create()Lxyz/doikki/videoplayer/exo/ExoMediaPlayerFactory;

    move-result-object v2

    :goto_0
    const-string v4, "play_render"

    .line 77
    invoke-static {v4, v1}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 78
    invoke-static {}, Lxyz/doikki/videoplayer/render/TextureRenderViewFactory;->create()Lxyz/doikki/videoplayer/render/TextureRenderViewFactory;

    move-result-object v1

    goto :goto_1

    .line 80
    :cond_1
    new-instance v1, Lcom/today/player/util/PlayUtils$bi;

    invoke-direct {v1}, Lcom/today/player/util/PlayUtils$bi;-><init>()V

    .line 82
    :goto_1
    invoke-static {}, Lxyz/doikki/videoplayer/player/VideoViewConfig;->newBuilder()Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->setScreenScaleType(I)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->setPlayerFactory(Lxyz/doikki/videoplayer/player/PlayerFactory;)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->setRenderViewFactory(Lxyz/doikki/videoplayer/render/RenderViewFactory;)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->build()Lxyz/doikki/videoplayer/player/VideoViewConfig;

    move-result-object v0

    invoke-static {v0}, Lxyz/doikki/videoplayer/player/VideoViewManager;->setConfig(Lxyz/doikki/videoplayer/player/VideoViewConfig;)V

    return-void
.end method

.method public static a(Lxyz/doikki/videoplayer/player/VideoView;)V
    .locals 5

    const/4 v0, 0x0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "play_type"

    invoke-static {v2, v1}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 25
    invoke-static {}, Lxyz/doikki/videoplayer/ijk/IjkPlayerFactory;->create()Lxyz/doikki/videoplayer/ijk/IjkPlayerFactory;

    move-result-object v2

    .line 27
    :try_start_0
    new-instance v4, Lcom/today/player/util/PlayUtils$1;

    invoke-direct {v4}, Lcom/today/player/util/PlayUtils$1;-><init>()V

    invoke-static {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 34
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lxyz/doikki/videoplayer/exo/ExoMediaPlayerFactory;->create()Lxyz/doikki/videoplayer/exo/ExoMediaPlayerFactory;

    move-result-object v2

    :goto_0
    const-string v4, "play_render"

    .line 39
    invoke-static {v4, v1}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 40
    invoke-static {}, Lxyz/doikki/videoplayer/render/TextureRenderViewFactory;->create()Lxyz/doikki/videoplayer/render/TextureRenderViewFactory;

    move-result-object v1

    goto :goto_1

    .line 42
    :cond_1
    new-instance v1, Lcom/today/player/util/PlayUtils$bi;

    invoke-direct {v1}, Lcom/today/player/util/PlayUtils$bi;-><init>()V

    .line 44
    :goto_1
    invoke-virtual {p0, v2}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayerFactory(Lxyz/doikki/videoplayer/player/PlayerFactory;)V

    .line 45
    invoke-virtual {p0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->setRenderViewFactory(Lxyz/doikki/videoplayer/render/RenderViewFactory;)V

    .line 46
    invoke-static {}, Lxyz/doikki/videoplayer/player/VideoViewConfig;->newBuilder()Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->setScreenScaleType(I)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->setPlayerFactory(Lxyz/doikki/videoplayer/player/PlayerFactory;)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->setRenderViewFactory(Lxyz/doikki/videoplayer/render/RenderViewFactory;)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->build()Lxyz/doikki/videoplayer/player/VideoViewConfig;

    move-result-object p0

    invoke-static {p0}, Lxyz/doikki/videoplayer/player/VideoViewManager;->setConfig(Lxyz/doikki/videoplayer/player/VideoViewConfig;)V

    return-void
.end method
