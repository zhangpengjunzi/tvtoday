.class public final Lcom/today/player/cache/LocalSourceDao_Impl;
.super Ljava/lang/Object;
.source "LocalSourceDao_Impl.java"

# interfaces
.implements Lcom/today/player/cache/LocalSourceDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfLocal:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/today/player/cache/Local;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfLocal:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/today/player/cache/Local;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfLocal:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/today/player/cache/Local;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 29
    new-instance v0, Lcom/today/player/cache/LocalSourceDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/today/player/cache/LocalSourceDao_Impl$1;-><init>(Lcom/today/player/cache/LocalSourceDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__insertionAdapterOfLocal:Landroidx/room/EntityInsertionAdapter;

    .line 55
    new-instance v0, Lcom/today/player/cache/LocalSourceDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/today/player/cache/LocalSourceDao_Impl$2;-><init>(Lcom/today/player/cache/LocalSourceDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__deletionAdapterOfLocal:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 70
    new-instance v0, Lcom/today/player/cache/LocalSourceDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/today/player/cache/LocalSourceDao_Impl$3;-><init>(Lcom/today/player/cache/LocalSourceDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__updateAdapterOfLocal:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method


# virtual methods
.method public delete(Lcom/today/player/cache/Local;)I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 120
    iget-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__deletionAdapterOfLocal:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 123
    iget-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 127
    throw p1
.end method

.method public getAll()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/cache/Local;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from localSource"

    const/4 v1, 0x0

    .line 147
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 149
    iget-object v2, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "api"

    .line 151
    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "name"

    .line 152
    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "playerUrl"

    .line 153
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "type"

    .line 154
    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 155
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 158
    new-instance v7, Lcom/today/player/cache/Local;

    invoke-direct {v7}, Lcom/today/player/cache/Local;-><init>()V

    .line 159
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/today/player/cache/Local;->api:Ljava/lang/String;

    .line 160
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/today/player/cache/Local;->name:Ljava/lang/String;

    .line 161
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/today/player/cache/Local;->playerUrl:Ljava/lang/String;

    .line 162
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/today/player/cache/Local;->type:I

    .line 163
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 168
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v6

    :catchall_0
    move-exception v2

    .line 167
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 168
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 169
    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public insert(Lcom/today/player/cache/Local;)J
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 106
    iget-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__insertionAdapterOfLocal:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 109
    iget-object p1, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p1, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 113
    throw p1
.end method

.method public update(Lcom/today/player/cache/Local;)I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 134
    iget-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__updateAdapterOfLocal:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 137
    iget-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/today/player/cache/LocalSourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 141
    throw p1
.end method
