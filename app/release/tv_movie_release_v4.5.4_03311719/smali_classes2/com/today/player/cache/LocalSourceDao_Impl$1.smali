.class Lcom/today/player/cache/LocalSourceDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
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
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/today/player/cache/Local;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/cache/LocalSourceDao_Impl;


# direct methods
.method constructor <init>(Lcom/today/player/cache/LocalSourceDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/today/player/cache/LocalSourceDao_Impl$1;->this$0:Lcom/today/player/cache/LocalSourceDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/today/player/cache/Local;)V
    .locals 3

    .line 37
    iget-object v0, p2, Lcom/today/player/cache/Local;->api:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 38
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p2, Lcom/today/player/cache/Local;->api:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 42
    :goto_0
    iget-object v0, p2, Lcom/today/player/cache/Local;->name:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 43
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p2, Lcom/today/player/cache/Local;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 47
    :goto_1
    iget-object v0, p2, Lcom/today/player/cache/Local;->playerUrl:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 50
    :cond_2
    iget-object v0, p2, Lcom/today/player/cache/Local;->playerUrl:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x4

    .line 52
    iget p2, p2, Lcom/today/player/cache/Local;->type:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Lcom/today/player/cache/Local;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/cache/LocalSourceDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/today/player/cache/Local;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `localSource` (`api`,`name`,`playerUrl`,`type`) VALUES (?,?,?,?)"

    return-object v0
.end method
