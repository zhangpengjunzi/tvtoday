.class Lcom/today/player/cache/CacheDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "CacheDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/cache/CacheDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/today/player/cache/Cache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/cache/CacheDao_Impl;


# direct methods
.method constructor <init>(Lcom/today/player/cache/CacheDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/today/player/cache/CacheDao_Impl$3;->this$0:Lcom/today/player/cache/CacheDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/today/player/cache/Cache;)V
    .locals 2

    .line 70
    iget-object v0, p2, Lcom/today/player/cache/Cache;->key:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 71
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p2, Lcom/today/player/cache/Cache;->key:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 75
    :goto_0
    iget-object v0, p2, Lcom/today/player/cache/Cache;->data:[B

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 76
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 78
    :cond_1
    iget-object v0, p2, Lcom/today/player/cache/Cache;->data:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 80
    :goto_1
    iget-object v0, p2, Lcom/today/player/cache/Cache;->key:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 81
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 83
    :cond_2
    iget-object p2, p2, Lcom/today/player/cache/Cache;->key:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p2, Lcom/today/player/cache/Cache;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/cache/CacheDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/today/player/cache/Cache;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `cache` SET `key` = ?,`data` = ? WHERE `key` = ?"

    return-object v0
.end method
