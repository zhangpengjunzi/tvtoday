.class public abstract Lcom/today/player/data/AppDataBase;
.super Landroidx/room/RoomDatabase;
.source "AppDataBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCacheDao()Lcom/today/player/cache/CacheDao;
.end method

.method public abstract getLocalLive()Lcom/today/player/cache/LocalLiveDao;
.end method

.method public abstract getLocalParse()Lcom/today/player/cache/LocalParseDao;
.end method

.method public abstract getLocalSource()Lcom/today/player/cache/LocalSourceDao;
.end method

.method public abstract getSourceStateDao()Lcom/today/player/cache/SourceStateDao;
.end method

.method public abstract getVodRecordDao()Lcom/today/player/cache/VodRecordDao;
.end method
