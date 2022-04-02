.class public final Lcom/today/player/cache/SourceStateDao_Impl;
.super Ljava/lang/Object;
.source "SourceStateDao_Impl.java"

# interfaces
.implements Lcom/today/player/cache/SourceStateDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfSourceState:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/today/player/cache/SourceState;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfSourceState:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/today/player/cache/SourceState;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfSourceState:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/today/player/cache/SourceState;",
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
    iput-object p1, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 29
    new-instance v0, Lcom/today/player/cache/SourceStateDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/today/player/cache/SourceStateDao_Impl$1;-><init>(Lcom/today/player/cache/SourceStateDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__insertionAdapterOfSourceState:Landroidx/room/EntityInsertionAdapter;

    .line 55
    new-instance v0, Lcom/today/player/cache/SourceStateDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/today/player/cache/SourceStateDao_Impl$2;-><init>(Lcom/today/player/cache/SourceStateDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__deletionAdapterOfSourceState:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 70
    new-instance v0, Lcom/today/player/cache/SourceStateDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/today/player/cache/SourceStateDao_Impl$3;-><init>(Lcom/today/player/cache/SourceStateDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__updateAdapterOfSourceState:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method


# virtual methods
.method public delete(Lcom/today/player/cache/SourceState;)I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 120
    iget-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__deletionAdapterOfSourceState:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 123
    iget-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 127
    throw p1
.end method

.method public getAll()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/cache/SourceState;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from sourceState"

    const/4 v1, 0x0

    .line 147
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 149
    iget-object v2, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "active"

    .line 151
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "home"

    .line 152
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "sourceKey"

    .line 153
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "tidSort"

    .line 154
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 155
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 158
    new-instance v8, Lcom/today/player/cache/SourceState;

    invoke-direct {v8}, Lcom/today/player/cache/SourceState;-><init>()V

    .line 160
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 161
    :goto_1
    iput-boolean v9, v8, Lcom/today/player/cache/SourceState;->active:Z

    .line 163
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    .line 164
    :goto_2
    iput-boolean v10, v8, Lcom/today/player/cache/SourceState;->home:Z

    .line 165
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/today/player/cache/SourceState;->sourceKey:Ljava/lang/String;

    .line 166
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/today/player/cache/SourceState;->tidSort:Ljava/lang/String;

    .line 167
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 171
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 172
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v7

    :catchall_0
    move-exception v1

    .line 171
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 172
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 173
    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public insert(Lcom/today/player/cache/SourceState;)J
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 106
    iget-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__insertionAdapterOfSourceState:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 109
    iget-object p1, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p1, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 113
    throw p1
.end method

.method public update(Lcom/today/player/cache/SourceState;)I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 134
    iget-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__updateAdapterOfSourceState:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 137
    iget-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/today/player/cache/SourceStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 141
    throw p1
.end method
