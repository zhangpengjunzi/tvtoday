.class public interface abstract Lcom/today/player/cache/LocalSourceDao;
.super Ljava/lang/Object;
.source "LocalSourceDao.java"


# virtual methods
.method public abstract delete(Lcom/today/player/cache/Local;)I
.end method

.method public abstract getAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/cache/Local;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/today/player/cache/Local;)J
.end method

.method public abstract update(Lcom/today/player/cache/Local;)I
.end method
