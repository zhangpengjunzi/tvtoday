.class public interface abstract Lcom/today/player/server/RequestProcess;
.super Ljava/lang/Object;
.source "RequestProcess.java"


# static fields
.field public static final KEY_ACTION_DOWN:I = 0x1

.field public static final KEY_ACTION_PRESSED:I = 0x0

.field public static final KEY_ACTION_UP:I = 0x2


# virtual methods
.method public abstract doResponse(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$IHTTPSession;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation
.end method

.method public abstract isRequest(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Z
.end method
