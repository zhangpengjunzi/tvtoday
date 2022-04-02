.class public final Lcom/today/player/cache/CacheDao_Impl;
.super Ljava/lang/Object;
.source "CacheDao_Impl.java"

# interfaces
.implements Lcom/today/player/cache/CacheDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfCache:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/today/player/cache/Cache;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfCache:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/today/player/cache/Cache;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfCache:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/today/player/cache/Cache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 27
    new-instance v0, Lcom/today/player/cache/CacheDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/today/player/cache/CacheDao_Impl$1;-><init>(Lcom/today/player/cache/CacheDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__insertionAdapterOfCache:Landroidx/room/EntityInsertionAdapter;

    .line 47
    new-instance v0, Lcom/today/player/cache/CacheDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/today/player/cache/CacheDao_Impl$2;-><init>(Lcom/today/player/cache/CacheDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__deletionAdapterOfCache:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 62
    new-instance v0, Lcom/today/player/cache/CacheDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/today/player/cache/CacheDao_Impl$3;-><init>(Lcom/today/player/cache/CacheDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__updateAdapterOfCache:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method


# virtual methods
.method public delete(Lcom/today/player/cache/Cache;)I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 106
    iget-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__deletionAdapterOfCache:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 109
    iget-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 113
    throw p1
.end method

.method public getCache(Ljava/lang/String;)Lcom/today/player/cache/Cache;
    .locals 5

    const-string v0, "select *from cache where `key`=?"

    const/4 v1, 0x1

    .line 133
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 136
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 140
    :goto_0
    iget-object p1, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 141
    iget-object p1, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "key"

    .line 143
    invoke-static {p1, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "data"

    .line 144
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 146
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    new-instance v2, Lcom/today/player/cache/Cache;

    invoke-direct {v2}, Lcom/today/player/cache/Cache;-><init>()V

    .line 148
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/today/player/cache/Cache;->key:Ljava/lang/String;

    .line 149
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v2, Lcom/today/player/cache/Cache;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 156
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 155
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 156
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 157
    throw v1
.end method

.method public save(Lcom/today/player/cache/Cache;)J
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 92
    iget-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__insertionAdapterOfCache:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 95
    iget-object p1, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object p1, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 99
    throw p1
.end method

.method public update(Lcom/today/player/cache/Cache;)I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 120
    iget-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__updateAdapterOfCache:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 123
    iget-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/today/player/cache/CacheDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 127
    throw p1
.end method
