.class public final Lcom/today/player/cache/LocalParseDao_Impl;
.super Ljava/lang/Object;
.source "LocalParseDao_Impl.java"

# interfaces
.implements Lcom/today/player/cache/LocalParseDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfLocalParse:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/today/player/cache/LocalParse;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfLocalParse:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/today/player/cache/LocalParse;",
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
    iput-object p1, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 27
    new-instance v0, Lcom/today/player/cache/LocalParseDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/today/player/cache/LocalParseDao_Impl$1;-><init>(Lcom/today/player/cache/LocalParseDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__insertionAdapterOfLocalParse:Landroidx/room/EntityInsertionAdapter;

    .line 47
    new-instance v0, Lcom/today/player/cache/LocalParseDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/today/player/cache/LocalParseDao_Impl$2;-><init>(Lcom/today/player/cache/LocalParseDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__deletionAdapterOfLocalParse:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method


# virtual methods
.method public delete(Lcom/today/player/cache/LocalParse;)I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 81
    iget-object v0, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__deletionAdapterOfLocalParse:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 84
    iget-object v0, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v0, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 88
    throw p1
.end method

.method public getAll()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/cache/LocalParse;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from localParse"

    const/4 v1, 0x0

    .line 94
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 95
    iget-object v2, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 96
    iget-object v2, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "name"

    .line 98
    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "url"

    .line 99
    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    new-instance v5, Lcom/today/player/cache/LocalParse;

    invoke-direct {v5}, Lcom/today/player/cache/LocalParse;-><init>()V

    .line 104
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/today/player/cache/LocalParse;->name:Ljava/lang/String;

    .line 105
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/today/player/cache/LocalParse;->url:Ljava/lang/String;

    .line 106
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 111
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_0
    move-exception v2

    .line 110
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 111
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 112
    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public insert(Lcom/today/player/cache/LocalParse;)J
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 67
    iget-object v0, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__insertionAdapterOfLocalParse:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 70
    iget-object p1, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object p1, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/today/player/cache/LocalParseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 74
    throw p1
.end method
