.class public Lcom/today/player/server/InputRequestProcess;
.super Ljava/lang/Object;
.source "InputRequestProcess.java"

# interfaces
.implements Lcom/today/player/server/RequestProcess;


# instance fields
.field private remoteServer:Lcom/today/player/server/RemoteServer;


# direct methods
.method public constructor <init>(Lcom/today/player/server/RemoteServer;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/today/player/server/InputRequestProcess;->remoteServer:Lcom/today/player/server/RemoteServer;

    return-void
.end method


# virtual methods
.method public doResponse(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 7
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

    .line 39
    iget-object p1, p0, Lcom/today/player/server/InputRequestProcess;->remoteServer:Lcom/today/player/server/RemoteServer;

    invoke-virtual {p1}, Lcom/today/player/server/RemoteServer;->getDataReceiver()Lcom/today/player/server/DataReceiver;

    move-result-object p1

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p4, "/custom"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_1
    const-string p4, "/keyUp"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_2
    const-string p4, "/text"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_3
    const-string p4, "/key"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_4
    const-string p4, "/keyDown"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_5
    const-string p4, "/projection"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    const-string p4, "text"

    const-string v6, "ok"

    if-eqz p2, :cond_b

    if-eq p2, v5, :cond_9

    const-string p4, "code"

    if-eq p2, v4, :cond_7

    if-eq p2, v3, :cond_5

    if-eq p2, v2, :cond_3

    if-eq p2, v1, :cond_1

    .line 72
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p2, "Error 404, file not found."

    invoke-static {p1, p2}, Lcom/today/player/server/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    .line 68
    invoke-interface {p1, p3}, Lcom/today/player/server/DataReceiver;->onCustomWebReceived(Ljava/util/Map;)V

    .line 70
    :cond_2
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {p1, v6}, Lcom/today/player/server/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 62
    :cond_3
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 63
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2, v5}, Lcom/today/player/server/DataReceiver;->onKeyEventReceived(Ljava/lang/String;I)V

    .line 65
    :cond_4
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {p1, v6}, Lcom/today/player/server/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 57
    :cond_5
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 58
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2, v4}, Lcom/today/player/server/DataReceiver;->onKeyEventReceived(Ljava/lang/String;I)V

    .line 60
    :cond_6
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {p1, v6}, Lcom/today/player/server/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 52
    :cond_7
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 53
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/today/player/server/DataReceiver;->onKeyEventReceived(Ljava/lang/String;I)V

    .line 55
    :cond_8
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {p1, v6}, Lcom/today/player/server/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 47
    :cond_9
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_a

    if-eqz p1, :cond_a

    .line 48
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/today/player/server/DataReceiver;->onTextReceived(Ljava/lang/String;)V

    .line 50
    :cond_a
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {p1, v6}, Lcom/today/player/server/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 42
    :cond_b
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_c

    if-eqz p1, :cond_c

    .line 43
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/today/player/server/DataReceiver;->onProjectionReceived(Ljava/lang/String;)V

    .line 45
    :cond_c
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {p1, v6}, Lcom/today/player/server/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x1f6e6442 -> :sswitch_5
        -0x1e4ad36e -> :sswitch_4
        0x16fbd0 -> :sswitch_3
        0x2cc95dc -> :sswitch_2
        0x5647528b -> :sswitch_1
        0x65db6c60 -> :sswitch_0
    .end sparse-switch
.end method

.method public isRequest(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Z
    .locals 7

    .line 23
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object p1

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    .line 24
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "/custom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "/keyUp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "/text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "/key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "/keyDown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "/projection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    goto :goto_1

    :cond_1
    return v6

    :cond_2
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1f6e6442 -> :sswitch_5
        -0x1e4ad36e -> :sswitch_4
        0x16fbd0 -> :sswitch_3
        0x2cc95dc -> :sswitch_2
        0x5647528b -> :sswitch_1
        0x65db6c60 -> :sswitch_0
    .end sparse-switch
.end method
