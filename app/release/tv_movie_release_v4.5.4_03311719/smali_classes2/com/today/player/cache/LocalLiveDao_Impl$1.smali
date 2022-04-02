.class Lcom/today/player/cache/LocalLiveDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "LocalLiveDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/cache/LocalLiveDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/today/player/cache/LocalLive;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/cache/LocalLiveDao_Impl;


# direct methods
.method constructor <init>(Lcom/today/player/cache/LocalLiveDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/today/player/cache/LocalLiveDao_Impl$1;->this$0:Lcom/today/player/cache/LocalLiveDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/today/player/cache/LocalLive;)V
    .locals 2

    .line 35
    iget-object v0, p2, Lcom/today/player/cache/LocalLive;->name:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 36
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p2, Lcom/today/player/cache/LocalLive;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 40
    :goto_0
    iget-object v0, p2, Lcom/today/player/cache/LocalLive;->url:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 41
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 43
    :cond_1
    iget-object p2, p2, Lcom/today/player/cache/LocalLive;->url:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lcom/today/player/cache/LocalLive;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/cache/LocalLiveDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/today/player/cache/LocalLive;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `localLive` (`name`,`url`) VALUES (?,?)"

    return-object v0
.end method
