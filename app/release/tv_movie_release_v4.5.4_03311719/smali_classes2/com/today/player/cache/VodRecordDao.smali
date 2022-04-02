.class public interface abstract Lcom/today/player/cache/VodRecordDao;
.super Ljava/lang/Object;
.source "VodRecordDao.java"


# virtual methods
.method public abstract delete(Lcom/today/player/cache/VodRecord;)I
.end method

.method public abstract getAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/cache/VodRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAll(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getVodRecord(Ljava/lang/String;I)Lcom/today/player/cache/VodRecord;
.end method

.method public abstract insert(Lcom/today/player/cache/VodRecord;)J
.end method

.method public abstract update(Lcom/today/player/cache/VodRecord;)I
.end method
