.class public Lxyz/doikki/videoplayer/player/VideoViewManager;
.super Ljava/lang/Object;
.source "VideoViewManager.java"


# static fields
.field private static sConfig:Lxyz/doikki/videoplayer/player/VideoViewConfig;

.field private static sInstance:Lxyz/doikki/videoplayer/player/VideoViewManager;


# instance fields
.field private mPlayOnMobileNetwork:Z

.field private mVideoViews:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lxyz/doikki/videoplayer/player/VideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lxyz/doikki/videoplayer/player/VideoViewManager;->mVideoViews:Ljava/util/LinkedHashMap;

    .line 37
    invoke-static {}, Lxyz/doikki/videoplayer/player/VideoViewManager;->getConfig()Lxyz/doikki/videoplayer/player/VideoViewConfig;

    move-result-object v0

    iget-boolean v0, v0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mPlayOnMobileNetwork:Z

    iput-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoViewManager;->mPlayOnMobileNetwork:Z

    return-void
.end method

.method public static getConfig()Lxyz/doikki/videoplayer/player/VideoViewConfig;
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-static {v0}, Lxyz/doikki/videoplayer/player/VideoViewManager;->setConfig(Lxyz/doikki/videoplayer/player/VideoViewConfig;)V

    .line 58
    sget-object v0, Lxyz/doikki/videoplayer/player/VideoViewManager;->sConfig:Lxyz/doikki/videoplayer/player/VideoViewConfig;

    return-object v0
.end method

.method public static instance()Lxyz/doikki/videoplayer/player/VideoViewManager;
    .locals 2

    .line 76
    sget-object v0, Lxyz/doikki/videoplayer/player/VideoViewManager;->sInstance:Lxyz/doikki/videoplayer/player/VideoViewManager;

    if-nez v0, :cond_1

    .line 77
    const-class v0, Lxyz/doikki/videoplayer/player/VideoViewManager;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lxyz/doikki/videoplayer/player/VideoViewManager;->sInstance:Lxyz/doikki/videoplayer/player/VideoViewManager;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lxyz/doikki/videoplayer/player/VideoViewManager;

    invoke-direct {v1}, Lxyz/doikki/videoplayer/player/VideoViewManager;-><init>()V

    sput-object v1, Lxyz/doikki/videoplayer/player/VideoViewManager;->sInstance:Lxyz/doikki/videoplayer/player/VideoViewManager;

    .line 81
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 83
    :cond_1
    :goto_0
    sget-object v0, Lxyz/doikki/videoplayer/player/VideoViewManager;->sInstance:Lxyz/doikki/videoplayer/player/VideoViewManager;

    return-object v0
.end method

.method public static setConfig(Lxyz/doikki/videoplayer/player/VideoViewConfig;)V
    .locals 2

    .line 44
    sget-object v0, Lxyz/doikki/videoplayer/player/VideoViewManager;->sConfig:Lxyz/doikki/videoplayer/player/VideoViewConfig;

    if-nez v0, :cond_2

    .line 45
    const-class v0, Lxyz/doikki/videoplayer/player/VideoViewConfig;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lxyz/doikki/videoplayer/player/VideoViewManager;->sConfig:Lxyz/doikki/videoplayer/player/VideoViewConfig;

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    .line 47
    invoke-static {}, Lxyz/doikki/videoplayer/player/VideoViewConfig;->newBuilder()Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->build()Lxyz/doikki/videoplayer/player/VideoViewConfig;

    move-result-object p0

    :cond_0
    sput-object p0, Lxyz/doikki/videoplayer/player/VideoViewManager;->sConfig:Lxyz/doikki/videoplayer/player/VideoViewConfig;

    .line 49
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public add(Lxyz/doikki/videoplayer/player/VideoView;Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-nez v0, :cond_0

    const-string v0, "The Context of this VideoView is not an Application Context,you must remove it after release,or it will lead to memory leek."

    .line 92
    invoke-static {v0}, Lxyz/doikki/videoplayer/util/L;->w(Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-virtual {p0, p2}, Lxyz/doikki/videoplayer/player/VideoViewManager;->get(Ljava/lang/String;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    .line 98
    invoke-virtual {p0, p2}, Lxyz/doikki/videoplayer/player/VideoViewManager;->remove(Ljava/lang/String;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoViewManager;->mVideoViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/String;)Lxyz/doikki/videoplayer/player/VideoView;
    .locals 1

    .line 104
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoViewManager;->mVideoViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxyz/doikki/videoplayer/player/VideoView;

    return-object p1
.end method

.method public onBackPress(Ljava/lang/String;)Z
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/player/VideoViewManager;->get(Ljava/lang/String;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_0
    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->onBackPressed()Z

    move-result p1

    return p1
.end method

.method public playOnMobileNetwork()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoViewManager;->mPlayOnMobileNetwork:Z

    return v0
.end method

.method public releaseByTag(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, p1, v0}, Lxyz/doikki/videoplayer/player/VideoViewManager;->releaseByTag(Ljava/lang/String;Z)V

    return-void
.end method

.method public releaseByTag(Ljava/lang/String;Z)V
    .locals 1

    .line 123
    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/player/VideoViewManager;->get(Ljava/lang/String;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    if-eqz p2, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/player/VideoViewManager;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoViewManager;->mVideoViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeAll()V
    .locals 1

    .line 112
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoViewManager;->mVideoViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public setPlayOnMobileNetwork(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lxyz/doikki/videoplayer/player/VideoViewManager;->mPlayOnMobileNetwork:Z

    return-void
.end method
