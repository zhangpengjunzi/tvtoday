.class public interface abstract Lcom/today/player/server/DataReceiver;
.super Ljava/lang/Object;
.source "DataReceiver.java"


# virtual methods
.method public abstract onCustomWebReceived(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onKeyEventReceived(Ljava/lang/String;I)V
.end method

.method public abstract onProjectionReceived(Ljava/lang/String;)V
.end method

.method public abstract onTextReceived(Ljava/lang/String;)V
.end method
