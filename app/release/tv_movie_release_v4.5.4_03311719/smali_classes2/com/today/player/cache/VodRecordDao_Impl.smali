.class public final Lcom/today/player/cache/VodRecordDao_Impl;
.super Ljava/lang/Object;
.source "VodRecordDao_Impl.java"

# interfaces
.implements Lcom/today/player/cache/VodRecordDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfVodRecord:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/today/player/cache/VodRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfVodRecord:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/today/player/cache/VodRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfVodRecord:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/today/player/cache/VodRecord;",
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
    iput-object p1, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 29
    new-instance v0, Lcom/today/player/cache/VodRecordDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/today/player/cache/VodRecordDao_Impl$1;-><init>(Lcom/today/player/cache/VodRecordDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__insertionAdapterOfVodRecord:Landroidx/room/EntityInsertionAdapter;

    .line 57
    new-instance v0, Lcom/today/player/cache/VodRecordDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/today/player/cache/VodRecordDao_Impl$2;-><init>(Lcom/today/player/cache/VodRecordDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__deletionAdapterOfVodRecord:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 68
    new-instance v0, Lcom/today/player/cache/VodRecordDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/today/player/cache/VodRecordDao_Impl$3;-><init>(Lcom/today/player/cache/VodRecordDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__updateAdapterOfVodRecord:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method


# virtual methods
.method public delete(Lcom/today/player/cache/VodRecord;)I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 116
    iget-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__deletionAdapterOfVodRecord:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 119
    iget-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 123
    throw p1
.end method

.method public getAll()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/cache/VodRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from vodRecord  order by updateTime desc"

    const/4 v1, 0x0

    .line 183
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 184
    iget-object v2, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 185
    iget-object v2, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "id"

    .line 187
    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "vodId"

    .line 188
    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "updateTime"

    .line 189
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "apiUrl"

    .line 190
    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "data"

    .line 191
    invoke-static {v1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "dataJson"

    .line 192
    invoke-static {v1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 193
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 196
    new-instance v9, Lcom/today/player/cache/VodRecord;

    invoke-direct {v9}, Lcom/today/player/cache/VodRecord;-><init>()V

    .line 198
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 199
    invoke-virtual {v9, v10}, Lcom/today/player/cache/VodRecord;->setId(I)V

    .line 200
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v9, Lcom/today/player/cache/VodRecord;->vodId:I

    .line 201
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/today/player/cache/VodRecord;->updateTime:J

    .line 202
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/today/player/cache/VodRecord;->apiUrl:Ljava/lang/String;

    .line 203
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    iput-object v10, v9, Lcom/today/player/cache/VodRecord;->data:[B

    .line 204
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/today/player/cache/VodRecord;->dataJson:Ljava/lang/String;

    .line 205
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 210
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v8

    :catchall_0
    move-exception v2

    .line 209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 210
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 211
    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/today/player/cache/VodRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from vodRecord where `apiUrl`=? order by updateTime desc"

    const/4 v1, 0x1

    .line 143
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 146
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 150
    :goto_0
    iget-object p1, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 151
    iget-object p1, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "id"

    .line 153
    invoke-static {p1, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "vodId"

    .line 154
    invoke-static {p1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "updateTime"

    .line 155
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "apiUrl"

    .line 156
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "data"

    .line 157
    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "dataJson"

    .line 158
    invoke-static {p1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 159
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 162
    new-instance v8, Lcom/today/player/cache/VodRecord;

    invoke-direct {v8}, Lcom/today/player/cache/VodRecord;-><init>()V

    .line 164
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 165
    invoke-virtual {v8, v9}, Lcom/today/player/cache/VodRecord;->setId(I)V

    .line 166
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v8, Lcom/today/player/cache/VodRecord;->vodId:I

    .line 167
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/today/player/cache/VodRecord;->updateTime:J

    .line 168
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/today/player/cache/VodRecord;->apiUrl:Ljava/lang/String;

    .line 169
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    iput-object v9, v8, Lcom/today/player/cache/VodRecord;->data:[B

    .line 170
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/today/player/cache/VodRecord;->dataJson:Ljava/lang/String;

    .line 171
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 175
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 176
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v7

    :catchall_0
    move-exception v1

    .line 175
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 176
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 177
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public getVodRecord(Ljava/lang/String;I)Lcom/today/player/cache/VodRecord;
    .locals 8

    const-string v0, "select *from vodRecord where `apiUrl`=? and `vodId`=?"

    const/4 v1, 0x2

    .line 217
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 220
    invoke-virtual {v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    int-to-long p1, p2

    .line 225
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 226
    iget-object p1, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 227
    iget-object p1, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "id"

    .line 229
    invoke-static {p1, p2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v2, "vodId"

    .line 230
    invoke-static {p1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "updateTime"

    .line 231
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "apiUrl"

    .line 232
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "data"

    .line 233
    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "dataJson"

    .line 234
    invoke-static {p1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 236
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 237
    new-instance v1, Lcom/today/player/cache/VodRecord;

    invoke-direct {v1}, Lcom/today/player/cache/VodRecord;-><init>()V

    .line 239
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 240
    invoke-virtual {v1, p2}, Lcom/today/player/cache/VodRecord;->setId(I)V

    .line 241
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, v1, Lcom/today/player/cache/VodRecord;->vodId:I

    .line 242
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/today/player/cache/VodRecord;->updateTime:J

    .line 243
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/today/player/cache/VodRecord;->apiUrl:Ljava/lang/String;

    .line 244
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2

    iput-object p2, v1, Lcom/today/player/cache/VodRecord;->data:[B

    .line 245
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/today/player/cache/VodRecord;->dataJson:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 252
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception p2

    .line 251
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 252
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 253
    throw p2
.end method

.method public insert(Lcom/today/player/cache/VodRecord;)J
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 102
    iget-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__insertionAdapterOfVodRecord:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 105
    iget-object p1, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object p1, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 109
    throw p1
.end method

.method public update(Lcom/today/player/cache/VodRecord;)I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 130
    iget-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__updateAdapterOfVodRecord:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 133
    iget-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/today/player/cache/VodRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 137
    throw p1
.end method
