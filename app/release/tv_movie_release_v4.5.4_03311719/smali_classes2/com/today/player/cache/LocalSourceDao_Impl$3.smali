.class Lcom/today/player/cache/LocalSourceDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "LocalSourceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/cache/LocalSourceDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/today/player/cache/Local;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/cache/LocalSourceDao_Impl;


# direct methods
.method constructor <init>(Lcom/today/player/cache/LocalSourceDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/today/player/cache/LocalSourceDao_Impl$3;->this$0:Lcom/today/player/cache/LocalSourceDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/today/player/cache/Local;)V
    .locals 3

    .line 78
    iget-object v0, p2, Lcom/today/player/cache/Local;->api:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 79
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p2, Lcom/today/player/cache/Local;->api:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 83
    :goto_0
    iget-object v0, p2, Lcom/today/player/cache/Local;->name:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 84
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 86
    :cond_1
    iget-object v0, p2, Lcom/today/player/cache/Local;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 88
    :goto_1
    iget-object v0, p2, Lcom/today/player/cache/Local;->playerUrl:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 89
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 91
    :cond_2
    iget-object v0, p2, Lcom/today/player/cache/Local;->playerUrl:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x4

    .line 93
    iget v1, p2, Lcom/today/player/cache/Local;->type:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 94
    iget-object v0, p2, Lcom/today/player/cache/Local;->name:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 95
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 97
    :cond_3
    iget-object p2, p2, Lcom/today/player/cache/Local;->name:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p2, Lcom/today/player/cache/Local;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/cache/LocalSourceDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/today/player/cache/Local;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `localSource` SET `api` = ?,`name` = ?,`playerUrl` = ?,`type` = ? WHERE `name` = ?"

    return-object v0
.end method
