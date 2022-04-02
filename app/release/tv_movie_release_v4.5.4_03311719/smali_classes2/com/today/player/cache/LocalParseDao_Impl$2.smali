.class Lcom/today/player/cache/LocalParseDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "LocalParseDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/cache/LocalParseDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/today/player/cache/LocalParse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/cache/LocalParseDao_Impl;


# direct methods
.method constructor <init>(Lcom/today/player/cache/LocalParseDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/today/player/cache/LocalParseDao_Impl$2;->this$0:Lcom/today/player/cache/LocalParseDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/today/player/cache/LocalParse;)V
    .locals 2

    .line 55
    iget-object v0, p2, Lcom/today/player/cache/LocalParse;->name:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 56
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object p2, p2, Lcom/today/player/cache/LocalParse;->name:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Lcom/today/player/cache/LocalParse;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/cache/LocalParseDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/today/player/cache/LocalParse;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `localParse` WHERE `name` = ?"

    return-object v0
.end method
