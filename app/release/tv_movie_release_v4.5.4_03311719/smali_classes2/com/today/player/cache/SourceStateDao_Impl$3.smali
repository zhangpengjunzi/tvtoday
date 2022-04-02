.class Lcom/today/player/cache/SourceStateDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/today/player/cache/SourceState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/cache/SourceStateDao_Impl;


# direct methods
.method constructor <init>(Lcom/today/player/cache/SourceStateDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/today/player/cache/SourceStateDao_Impl$3;->this$0:Lcom/today/player/cache/SourceStateDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/today/player/cache/SourceState;)V
    .locals 4

    .line 79
    iget-boolean v0, p2, Lcom/today/player/cache/SourceState;->active:Z

    const/4 v1, 0x1

    int-to-long v2, v0

    .line 80
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 82
    iget-boolean v0, p2, Lcom/today/player/cache/SourceState;->home:Z

    const/4 v1, 0x2

    int-to-long v2, v0

    .line 83
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 84
    iget-object v0, p2, Lcom/today/player/cache/SourceState;->sourceKey:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 85
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p2, Lcom/today/player/cache/SourceState;->sourceKey:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 89
    :goto_0
    iget-object v0, p2, Lcom/today/player/cache/SourceState;->tidSort:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 90
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 92
    :cond_1
    iget-object v0, p2, Lcom/today/player/cache/SourceState;->tidSort:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 94
    :goto_1
    iget-object v0, p2, Lcom/today/player/cache/SourceState;->sourceKey:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 95
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 97
    :cond_2
    iget-object p2, p2, Lcom/today/player/cache/SourceState;->sourceKey:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p2, Lcom/today/player/cache/SourceState;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/cache/SourceStateDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/today/player/cache/SourceState;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `sourceState` SET `active` = ?,`home` = ?,`sourceKey` = ?,`tidSort` = ? WHERE `sourceKey` = ?"

    return-object v0
.end method
