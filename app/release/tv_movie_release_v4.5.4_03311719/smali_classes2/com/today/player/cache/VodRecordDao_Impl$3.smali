.class Lcom/today/player/cache/VodRecordDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "VodRecordDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/cache/VodRecordDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/today/player/cache/VodRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/cache/VodRecordDao_Impl;


# direct methods
.method constructor <init>(Lcom/today/player/cache/VodRecordDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/today/player/cache/VodRecordDao_Impl$3;->this$0:Lcom/today/player/cache/VodRecordDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/today/player/cache/VodRecord;)V
    .locals 3

    .line 76
    invoke-virtual {p2}, Lcom/today/player/cache/VodRecord;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 77
    iget v0, p2, Lcom/today/player/cache/VodRecord;->vodId:I

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 78
    iget-wide v0, p2, Lcom/today/player/cache/VodRecord;->updateTime:J

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 79
    iget-object v0, p2, Lcom/today/player/cache/VodRecord;->apiUrl:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 80
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p2, Lcom/today/player/cache/VodRecord;->apiUrl:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 84
    :goto_0
    iget-object v0, p2, Lcom/today/player/cache/VodRecord;->data:[B

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 85
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 87
    :cond_1
    iget-object v0, p2, Lcom/today/player/cache/VodRecord;->data:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 89
    :goto_1
    iget-object v0, p2, Lcom/today/player/cache/VodRecord;->dataJson:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_2

    .line 90
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 92
    :cond_2
    iget-object v0, p2, Lcom/today/player/cache/VodRecord;->dataJson:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x7

    .line 94
    invoke-virtual {p2}, Lcom/today/player/cache/VodRecord;->getId()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p2, Lcom/today/player/cache/VodRecord;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/cache/VodRecordDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/today/player/cache/VodRecord;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `vodRecord` SET `id` = ?,`vodId` = ?,`updateTime` = ?,`apiUrl` = ?,`data` = ?,`dataJson` = ? WHERE `id` = ?"

    return-object v0
.end method
