.class public Lcom/today/player/http/RequestClient;
.super Ljava/lang/Object;
.source "RequestClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/http/RequestClient$Builder;
    }
.end annotation


# instance fields
.field private callback:Lcom/today/player/http/ResponseCallback;

.field private header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private method:Lcom/today/player/http/HttpMethod;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/today/player/http/RequestClient$1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/today/player/http/RequestClient;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/today/player/http/RequestClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/today/player/http/RequestClient;->host:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/today/player/http/RequestClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/today/player/http/RequestClient;->path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/today/player/http/RequestClient;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/today/player/http/RequestClient;->params:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$402(Lcom/today/player/http/RequestClient;Lcom/today/player/http/HttpMethod;)Lcom/today/player/http/HttpMethod;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/today/player/http/RequestClient;->method:Lcom/today/player/http/HttpMethod;

    return-object p1
.end method

.method static synthetic access$502(Lcom/today/player/http/RequestClient;Lcom/today/player/http/ResponseCallback;)Lcom/today/player/http/ResponseCallback;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/today/player/http/RequestClient;->callback:Lcom/today/player/http/ResponseCallback;

    return-object p1
.end method

.method static synthetic access$602(Lcom/today/player/http/RequestClient;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/today/player/http/RequestClient;->header:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public getCallback()Lcom/today/player/http/ResponseCallback;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/today/player/http/RequestClient;->callback:Lcom/today/player/http/ResponseCallback;

    return-object v0
.end method

.method public getHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/today/player/http/RequestClient;->header:Ljava/util/Map;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/today/player/http/RequestClient;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lcom/today/player/http/HttpMethod;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/today/player/http/RequestClient;->method:Lcom/today/player/http/HttpMethod;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/today/player/http/RequestClient;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/today/player/http/RequestClient;->path:Ljava/lang/String;

    return-object v0
.end method
