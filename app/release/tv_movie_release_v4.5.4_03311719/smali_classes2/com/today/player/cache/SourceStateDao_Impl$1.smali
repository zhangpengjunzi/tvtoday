.class Lcom/today/player/cache/SourceStateDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceStateDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/cache/SourceStateDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/today/player/cache/SourceState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/cache/SourceStateDao_Impl;


# direct methods
.method constructor <init>(Lcom/today/player/cache/SourceStateDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/today/player/cache/SourceStateDao_Impl$1;->this$0:Lcom/today/player/cache/SourceStateDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/today/player/cache/SourceState;)V
    .locals 4

    .line 38
    iget-boolean v0, p2, Lcom/today/player/cache/SourceState;->active:Z

    const/4 v1, 0x1

    int-to-long v2, v0

    .line 39
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 41
    iget-boolean v0, p2, Lcom/today/player/cache/SourceState;->home:Z

    const/4 v1, 0x2

    int-to-long v2, v0

    .line 42
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 43
    iget-object v0, p2, Lcom/today/player/cache/SourceState;->sourceKey:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 44
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p2, Lcom/today/player/cache/SourceState;->sourceKey:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 48
    :goto_0
    iget-object v0, p2, Lcom/today/player/cache/SourceState;->tidSort:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 49
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 51
    :cond_1
    iget-object p2, p2, Lcom/today/player/cache/SourceState;->tidSort:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Lcom/today/player/cache/SourceState;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/cache/SourceStateDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/today/player/cache/SourceState;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `sourceState` (`active`,`home`,`sourceKey`,`tidSort`) VALUES (?,?,?,?)"

    return-object v0
.end method
