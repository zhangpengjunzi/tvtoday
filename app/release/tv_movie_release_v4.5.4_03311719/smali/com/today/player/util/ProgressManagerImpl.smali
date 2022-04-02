.class public Lcom/today/player/util/ProgressManagerImpl;
.super Lxyz/doikki/videoplayer/player/ProgressManager;
.source "ProgressManagerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lxyz/doikki/videoplayer/player/ProgressManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getSavedProgress(Ljava/lang/String;)J
    .locals 2

    .line 27
    invoke-virtual {p0, p1}, Lcom/today/player/util/ProgressManagerImpl;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/today/player/util/MD5;->string2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/today/player/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/today/player/util/MD5;->string2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/today/player/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 36
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upa/DownloadManager;->getSrcName()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/upa/DownloadManager;->getCurrentPlayerUrl()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/upa/DownloadManager;->getPlay()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 42
    :cond_0
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upa/DownloadManager;->getPlayFlag()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/today/player/api/ApiConfig;->getParseFlagList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/today/player/api/ApiConfig;->getParseFlagList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method

.method public saveProgress(Ljava/lang/String;J)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/today/player/util/ProgressManagerImpl;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/today/player/util/MD5;->string2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/today/player/cache/CacheManager;->save(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
