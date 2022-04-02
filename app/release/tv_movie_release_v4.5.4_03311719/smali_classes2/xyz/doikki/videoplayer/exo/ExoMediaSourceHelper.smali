.class public final Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;
.super Ljava/lang/Object;
.source "ExoMediaSourceHelper.java"


# static fields
.field private static sInstance:Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private mHttpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mAppContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method private getCacheDataSourceFactory()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 2

    .line 108
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->newCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 111
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;-><init>()V

    iget-object v1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object v0

    .line 113
    invoke-direct {p0}, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->getDataSourceFactory()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setUpstreamDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object v0

    const/4 v1, 0x2

    .line 114
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setFlags(I)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method private getDataSourceFactory()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 3

    .line 130
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->getHttpDataSourceFactory()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method private getHttpDataSourceFactory()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 2

    .line 139
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mHttpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    iget-object v1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mUserAgent:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/4 v1, 0x1

    .line 142
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    iput-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mHttpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    .line 144
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mHttpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;
    .locals 2

    .line 45
    sget-object v0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->sInstance:Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->sInstance:Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;

    invoke-direct {v1, p0}, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->sInstance:Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 52
    :cond_1
    :goto_0
    sget-object p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->sInstance:Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;

    return-object p0
.end method

.method private inferContentType(Ljava/lang/String;)I
    .locals 1

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".mpd"

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, ".m3u8"

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x4

    return p1
.end method

.method private newCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 5

    .line 118
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mAppContext:Landroid/content/Context;

    .line 119
    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "exo-video-cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;

    const-wide/32 v3, 0x20000000

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;-><init>(J)V

    new-instance v3, Lcom/google/android/exoplayer2/database/ExoDatabaseProvider;

    iget-object v4, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/database/ExoDatabaseProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/database/DatabaseProvider;)V

    return-object v0
.end method

.method private setHeaders(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 148
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "User-Agent"

    .line 150
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    :try_start_0
    iget-object v1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mHttpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "userAgent"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 156
    iget-object v2, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mHttpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :catch_0
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mHttpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    :cond_1
    return-void
.end method


# virtual methods
.method public getMediaSource(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0, p1, v0, v1}, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->getMediaSource(Ljava/lang/String;Ljava/util/Map;Z)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    return-object p1
.end method

.method public getMediaSource(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/MediaSource;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, p2, v0}, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->getMediaSource(Ljava/lang/String;Ljava/util/Map;Z)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    return-object p1
.end method

.method public getMediaSource(Ljava/lang/String;Ljava/util/Map;Z)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/google/android/exoplayer2/source/MediaSource;"
        }
    .end annotation

    .line 68
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rtmp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    new-instance p2, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSourceFactory;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 71
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p1

    return-object p1

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rtsp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;-><init>()V

    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    move-result-object p1

    return-object p1

    .line 75
    :cond_1
    invoke-direct {p0, p1}, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->inferContentType(Ljava/lang/String;)I

    move-result p1

    if-eqz p3, :cond_2

    .line 78
    invoke-direct {p0}, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->getCacheDataSourceFactory()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p3

    goto :goto_0

    .line 80
    :cond_2
    invoke-direct {p0}, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->getDataSourceFactory()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p3

    .line 82
    :goto_0
    iget-object v1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mHttpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    if-eqz v1, :cond_3

    .line 83
    invoke-direct {p0, p2}, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->setHeaders(Ljava/util/Map;)V

    :cond_3
    if-eqz p1, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    .line 92
    new-instance p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p1

    return-object p1

    .line 89
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1

    .line 87
    :cond_5
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public getMediaSource(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, v0, p2}, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->getMediaSource(Ljava/lang/String;Ljava/util/Map;Z)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    return-object p1
.end method

.method public setCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lxyz/doikki/videoplayer/exo/ExoMediaSourceHelper;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-void
.end method
