.class public interface abstract Lcom/orhanobut/hawk/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# virtual methods
.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract count()J
.end method

.method public abstract delete(Ljava/lang/String;)Z
.end method

.method public abstract deleteAll()Z
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation
.end method
