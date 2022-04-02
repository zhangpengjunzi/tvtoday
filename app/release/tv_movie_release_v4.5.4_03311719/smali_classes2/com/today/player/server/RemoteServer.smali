.class public Lcom/today/player/server/RemoteServer;
.super Lfi/iki/elonen/NanoHTTPD;
.source "RemoteServer.java"


# static fields
.field public static serverPort:I = 0x26fa


# instance fields
.field private getRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/today/player/server/RequestProcess;",
            ">;"
        }
    .end annotation
.end field

.field private isStarted:Z

.field private mContext:Landroid/content/Context;

.field private mDataReceiver:Lcom/today/player/server/DataReceiver;

.field private postRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/today/player/server/RequestProcess;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(I)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/today/player/server/RemoteServer;->isStarted:Z

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/today/player/server/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/today/player/server/RemoteServer;->postRequestList:Ljava/util/ArrayList;

    .line 40
    iput-object p2, p0, Lcom/today/player/server/RemoteServer;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/today/player/server/RemoteServer;->addGetRequestProcess()V

    .line 42
    invoke-direct {p0}, Lcom/today/player/server/RemoteServer;->addPostRequestProcess()V

    return-void
.end method

.method private addGetRequestProcess()V
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/today/player/server/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    new-instance v1, Lcom/today/player/server/RawRequestProcess;

    iget-object v2, p0, Lcom/today/player/server/RemoteServer;->mContext:Landroid/content/Context;

    const-string v3, "/index.html"

    const v4, 0x7f0d0002

    const-string v5, "text/html"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/today/player/server/RawRequestProcess;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/today/player/server/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    new-instance v1, Lcom/today/player/server/RawRequestProcess;

    iget-object v2, p0, Lcom/today/player/server/RemoteServer;->mContext:Landroid/content/Context;

    const-string v3, "/style.css"

    const v4, 0x7f0d0006

    const-string v5, "text/css"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/today/player/server/RawRequestProcess;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/today/player/server/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    new-instance v1, Lcom/today/player/server/RawRequestProcess;

    iget-object v2, p0, Lcom/today/player/server/RemoteServer;->mContext:Landroid/content/Context;

    const-string v3, "/jquery_min.js"

    const v4, 0x7f0d0003

    const-string v5, "application/x-javascript"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/today/player/server/RawRequestProcess;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/today/player/server/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    new-instance v1, Lcom/today/player/server/RawRequestProcess;

    iget-object v2, p0, Lcom/today/player/server/RemoteServer;->mContext:Landroid/content/Context;

    const-string v3, "/ime_core.js"

    const v4, 0x7f0d0001

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/today/player/server/RawRequestProcess;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/today/player/server/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    new-instance v1, Lcom/today/player/server/RawRequestProcess;

    iget-object v2, p0, Lcom/today/player/server/RemoteServer;->mContext:Landroid/content/Context;

    const-string v3, "/keys.png"

    const v4, 0x7f0d0004

    const-string v5, "image/png"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/today/player/server/RawRequestProcess;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/today/player/server/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    new-instance v1, Lcom/today/player/server/RawRequestProcess;

    iget-object v2, p0, Lcom/today/player/server/RemoteServer;->mContext:Landroid/content/Context;

    const-string v3, "/favicon.ico"

    const v4, 0x7f07005c

    const-string v5, "image/x-icon"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/today/player/server/RawRequestProcess;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPostRequestProcess()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/today/player/server/RemoteServer;->postRequestList:Ljava/util/ArrayList;

    new-instance v1, Lcom/today/player/server/InputRequestProcess;

    invoke-direct {v1, p0}, Lcom/today/player/server/InputRequestProcess;-><init>(Lcom/today/player/server/RemoteServer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static createJSONResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    const-string v0, "application/json"

    .line 131
    invoke-static {p0, v0, p1}, Lcom/today/player/server/RemoteServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p0

    return-object p0
.end method

.method public static createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    const-string v0, "text/plain"

    .line 127
    invoke-static {p0, v0, p1}, Lcom/today/player/server/RemoteServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalIPAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "wifi"

    .line 136
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 137
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    if-nez p0, :cond_4

    .line 140
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    .line 141
    :cond_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 143
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eth0"

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "wlan0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    :cond_1
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .line 146
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 148
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_2

    .line 149
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    const-string p0, "0.0.0.0"

    return-object p0

    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%d.%d.%d.%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getServerAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 122
    invoke-static {p0}, Lcom/today/player/server/RemoteServer;->getLocalIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/today/player/server/RemoteServer;->serverPort:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDataReceiver()Lcom/today/player/server/DataReceiver;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/today/player/server/RemoteServer;->mDataReceiver:Lcom/today/player/server/DataReceiver;

    return-object v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/today/player/server/RemoteServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/today/player/server/RemoteServer;->getServerAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStarting()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/today/player/server/RemoteServer;->isStarted:Z

    return v0
.end method

.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 7

    .line 73
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/today/player/event/ServerEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/today/player/event/ServerEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 74
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 75
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3f

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v3

    sget-object v4, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    if-ne v3, v4, :cond_2

    .line 80
    iget-object v3, p0, Lcom/today/player/server/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/today/player/server/RequestProcess;

    .line 81
    invoke-interface {v4, p1, v0}, Lcom/today/player/server/RequestProcess;->isRequest(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v4, p1, v0, v1, v2}, Lcom/today/player/server/RequestProcess;->doResponse(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 85
    :cond_2
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v3

    sget-object v4, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    if-ne v3, v4, :cond_4

    .line 86
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 88
    :try_start_0
    invoke-interface {p1, v3}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    iget-object v4, p0, Lcom/today/player/server/RemoteServer;->postRequestList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/today/player/server/RequestProcess;

    .line 95
    invoke-interface {v5, p1, v0}, Lcom/today/player/server/RequestProcess;->isRequest(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 96
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v5, p1, v0, v1, v3}, Lcom/today/player/server/RequestProcess;->doResponse(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v0

    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/today/player/server/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 90
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/today/player/server/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/today/player/server/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/server/RequestProcess;

    const-string v1, ""

    invoke-interface {v0, p1, v1, v2, v2}, Lcom/today/player/server/RequestProcess;->doResponse(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method public setDataReceiver(Lcom/today/player/server/DataReceiver;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/today/player/server/RemoteServer;->mDataReceiver:Lcom/today/player/server/DataReceiver;

    return-void
.end method

.method public start(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/today/player/server/RemoteServer;->isStarted:Z

    .line 61
    invoke-super {p0, p1, p2}, Lfi/iki/elonen/NanoHTTPD;->start(IZ)V

    .line 62
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/today/player/event/ServerEvent;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/today/player/event/ServerEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 67
    invoke-super {p0}, Lfi/iki/elonen/NanoHTTPD;->stop()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/today/player/server/RemoteServer;->isStarted:Z

    return-void
.end method
