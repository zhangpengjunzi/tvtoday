.class public final Lcom/today/player/data/AppDataBase_Impl;
.super Lcom/today/player/data/AppDataBase;
.source "AppDataBase_Impl.java"


# instance fields
.field private volatile _cacheDao:Lcom/today/player/cache/CacheDao;

.field private volatile _localLiveDao:Lcom/today/player/cache/LocalLiveDao;

.field private volatile _localParseDao:Lcom/today/player/cache/LocalParseDao;

.field private volatile _localSourceDao:Lcom/today/player/cache/LocalSourceDao;

.field private volatile _sourceStateDao:Lcom/today/player/cache/SourceStateDao;

.field private volatile _vodRecordDao:Lcom/today/player/cache/VodRecordDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/today/player/data/AppDataBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/data/AppDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/today/player/data/AppDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/today/player/data/AppDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/today/player/data/AppDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/today/player/data/AppDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/today/player/data/AppDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/today/player/data/AppDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/today/player/data/AppDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/today/player/data/AppDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/today/player/data/AppDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/today/player/data/AppDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/today/player/data/AppDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/today/player/data/AppDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/today/player/data/AppDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/today/player/data/AppDataBase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/today/player/data/AppDataBase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lcom/today/player/data/AppDataBase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/today/player/data/AppDataBase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lcom/today/player/data/AppDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/today/player/data/AppDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/today/player/data/AppDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/today/player/data/AppDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 211
    invoke-super {p0}, Lcom/today/player/data/AppDataBase;->assertNotMainThread()V

    .line 212
    invoke-super {p0}, Lcom/today/player/data/AppDataBase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 214
    :try_start_0
    invoke-super {p0}, Lcom/today/player/data/AppDataBase;->beginTransaction()V

    const-string v3, "DELETE FROM `cache`"

    .line 215
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `vodRecord`"

    .line 216
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `sourceState`"

    .line 217
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `localSource`"

    .line 218
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `localParse`"

    .line 219
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `localLive`"

    .line 220
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    invoke-super {p0}, Lcom/today/player/data/AppDataBase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-super {p0}, Lcom/today/player/data/AppDataBase;->endTransaction()V

    .line 224
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 225
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 223
    invoke-super {p0}, Lcom/today/player/data/AppDataBase;->endTransaction()V

    .line 224
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 225
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 9

    .line 204
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 205
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 206
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "cache"

    const-string v4, "vodRecord"

    const-string v5, "sourceState"

    const-string v6, "localSource"

    const-string v7, "localParse"

    const-string v8, "localLive"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 52
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/today/player/data/AppDataBase_Impl$1;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/today/player/data/AppDataBase_Impl$1;-><init>(Lcom/today/player/data/AppDataBase_Impl;I)V

    const-string v2, "3159ca523eaa79c8e35b6b48b4b22d54"

    const-string v3, "200913f339c4da5805767b30882a5f92"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 195
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 196
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 198
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public getCacheDao()Lcom/today/player/cache/CacheDao;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_cacheDao:Lcom/today/player/cache/CacheDao;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_cacheDao:Lcom/today/player/cache/CacheDao;

    return-object v0

    .line 236
    :cond_0
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_cacheDao:Lcom/today/player/cache/CacheDao;

    if-nez v0, :cond_1

    .line 238
    new-instance v0, Lcom/today/player/cache/CacheDao_Impl;

    invoke-direct {v0, p0}, Lcom/today/player/cache/CacheDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_cacheDao:Lcom/today/player/cache/CacheDao;

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_cacheDao:Lcom/today/player/cache/CacheDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 241
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocalLive()Lcom/today/player/cache/LocalLiveDao;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_localLiveDao:Lcom/today/player/cache/LocalLiveDao;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_localLiveDao:Lcom/today/player/cache/LocalLiveDao;

    return-object v0

    .line 306
    :cond_0
    monitor-enter p0

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_localLiveDao:Lcom/today/player/cache/LocalLiveDao;

    if-nez v0, :cond_1

    .line 308
    new-instance v0, Lcom/today/player/cache/LocalLiveDao_Impl;

    invoke-direct {v0, p0}, Lcom/today/player/cache/LocalLiveDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_localLiveDao:Lcom/today/player/cache/LocalLiveDao;

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_localLiveDao:Lcom/today/player/cache/LocalLiveDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 311
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocalParse()Lcom/today/player/cache/LocalParseDao;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_localParseDao:Lcom/today/player/cache/LocalParseDao;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_localParseDao:Lcom/today/player/cache/LocalParseDao;

    return-object v0

    .line 292
    :cond_0
    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_localParseDao:Lcom/today/player/cache/LocalParseDao;

    if-nez v0, :cond_1

    .line 294
    new-instance v0, Lcom/today/player/cache/LocalParseDao_Impl;

    invoke-direct {v0, p0}, Lcom/today/player/cache/LocalParseDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_localParseDao:Lcom/today/player/cache/LocalParseDao;

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_localParseDao:Lcom/today/player/cache/LocalParseDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 297
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocalSource()Lcom/today/player/cache/LocalSourceDao;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_localSourceDao:Lcom/today/player/cache/LocalSourceDao;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_localSourceDao:Lcom/today/player/cache/LocalSourceDao;

    return-object v0

    .line 278
    :cond_0
    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_localSourceDao:Lcom/today/player/cache/LocalSourceDao;

    if-nez v0, :cond_1

    .line 280
    new-instance v0, Lcom/today/player/cache/LocalSourceDao_Impl;

    invoke-direct {v0, p0}, Lcom/today/player/cache/LocalSourceDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_localSourceDao:Lcom/today/player/cache/LocalSourceDao;

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_localSourceDao:Lcom/today/player/cache/LocalSourceDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 283
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSourceStateDao()Lcom/today/player/cache/SourceStateDao;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_sourceStateDao:Lcom/today/player/cache/SourceStateDao;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_sourceStateDao:Lcom/today/player/cache/SourceStateDao;

    return-object v0

    .line 264
    :cond_0
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_sourceStateDao:Lcom/today/player/cache/SourceStateDao;

    if-nez v0, :cond_1

    .line 266
    new-instance v0, Lcom/today/player/cache/SourceStateDao_Impl;

    invoke-direct {v0, p0}, Lcom/today/player/cache/SourceStateDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_sourceStateDao:Lcom/today/player/cache/SourceStateDao;

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_sourceStateDao:Lcom/today/player/cache/SourceStateDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 269
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVodRecordDao()Lcom/today/player/cache/VodRecordDao;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_vodRecordDao:Lcom/today/player/cache/VodRecordDao;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_vodRecordDao:Lcom/today/player/cache/VodRecordDao;

    return-object v0

    .line 250
    :cond_0
    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_vodRecordDao:Lcom/today/player/cache/VodRecordDao;

    if-nez v0, :cond_1

    .line 252
    new-instance v0, Lcom/today/player/cache/VodRecordDao_Impl;

    invoke-direct {v0, p0}, Lcom/today/player/cache/VodRecordDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_vodRecordDao:Lcom/today/player/cache/VodRecordDao;

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/today/player/data/AppDataBase_Impl;->_vodRecordDao:Lcom/today/player/cache/VodRecordDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 255
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
