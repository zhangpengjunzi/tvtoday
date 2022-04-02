.class public Lcom/today/player/http/RequestClient$Builder;
.super Ljava/lang/Object;
.source "RequestClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/http/RequestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Lcom/today/player/http/RequestClient;
    .locals 2

    .line 93
    new-instance v0, Lcom/today/player/http/RequestClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/today/player/http/RequestClient;-><init>(Lcom/today/player/http/RequestClient$1;)V

    .line 94
    iget-object v1, p0, Lcom/today/player/http/RequestClient$Builder;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/today/player/http/RequestClient;->access$102(Lcom/today/player/http/RequestClient;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/today/player/http/RequestClient$Builder;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/today/player/http/RequestClient;->access$202(Lcom/today/player/http/RequestClient;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/today/player/http/RequestClient$Builder;->params:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/today/player/http/RequestClient;->access$302(Lcom/today/player/http/RequestClient;Ljava/util/Map;)Ljava/util/Map;

    .line 97
    iget-object v1, p0, Lcom/today/player/http/RequestClient$Builder;->method:Lcom/today/player/http/HttpMethod;

    invoke-static {v0, v1}, Lcom/today/player/http/RequestClient;->access$402(Lcom/today/player/http/RequestClient;Lcom/today/player/http/HttpMethod;)Lcom/today/player/http/HttpMethod;

    .line 98
    iget-object v1, p0, Lcom/today/player/http/RequestClient$Builder;->callback:Lcom/today/player/http/ResponseCallback;

    invoke-static {v0, v1}, Lcom/today/player/http/RequestClient;->access$502(Lcom/today/player/http/RequestClient;Lcom/today/player/http/ResponseCallback;)Lcom/today/player/http/ResponseCallback;

    .line 99
    iget-object v1, p0, Lcom/today/player/http/RequestClient$Builder;->header:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/today/player/http/RequestClient;->access$602(Lcom/today/player/http/RequestClient;Ljava/util/Map;)Ljava/util/Map;

    return-object v0
.end method

.method public setCallback(Lcom/today/player/http/ResponseCallback;)Lcom/today/player/http/RequestClient$Builder;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/today/player/http/RequestClient$Builder;->callback:Lcom/today/player/http/ResponseCallback;

    return-object p0
.end method

.method public setHeader(Ljava/util/Map;)Lcom/today/player/http/RequestClient$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/today/player/http/RequestClient$Builder;"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/today/player/http/RequestClient$Builder;->header:Ljava/util/Map;

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/today/player/http/RequestClient$Builder;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/today/player/http/RequestClient$Builder;->host:Ljava/lang/String;

    return-object p0
.end method

.method public setMethod(Lcom/today/player/http/HttpMethod;)Lcom/today/player/http/RequestClient$Builder;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/today/player/http/RequestClient$Builder;->method:Lcom/today/player/http/HttpMethod;

    return-object p0
.end method

.method public setParams(Ljava/util/Map;)Lcom/today/player/http/RequestClient$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/today/player/http/RequestClient$Builder;"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/today/player/http/RequestClient$Builder;->params:Ljava/util/Map;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/today/player/http/RequestClient$Builder;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/today/player/http/RequestClient$Builder;->path:Ljava/lang/String;

    return-object p0
.end method
