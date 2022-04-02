.class public Lcom/bt/jrsdk/httplib/RequestClient$Builder;
.super Ljava/lang/Object;
.source "RequestClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bt/jrsdk/httplib/RequestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adapter:Lcom/bt/jrsdk/httplib/iml/IAdapter;

.field private callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

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

.field private intercepter:Lcom/bt/jrsdk/httplib/iml/IIntercepter;

.field private method:Lcom/bt/jrsdk/httplib/config/HttpMethod;

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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Lcom/bt/jrsdk/httplib/RequestClient;
    .locals 2

    .line 123
    new-instance v0, Lcom/bt/jrsdk/httplib/RequestClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient;-><init>(Lcom/bt/jrsdk/httplib/RequestClient$1;)V

    .line 124
    iget-object v1, p0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->intercepter:Lcom/bt/jrsdk/httplib/iml/IIntercepter;

    invoke-static {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient;->access$102(Lcom/bt/jrsdk/httplib/RequestClient;Lcom/bt/jrsdk/httplib/iml/IIntercepter;)Lcom/bt/jrsdk/httplib/iml/IIntercepter;

    .line 125
    iget-object v1, p0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient;->access$202(Lcom/bt/jrsdk/httplib/RequestClient;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient;->access$302(Lcom/bt/jrsdk/httplib/RequestClient;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->params:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient;->access$402(Lcom/bt/jrsdk/httplib/RequestClient;Ljava/util/Map;)Ljava/util/Map;

    .line 128
    iget-object v1, p0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->method:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    invoke-static {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient;->access$502(Lcom/bt/jrsdk/httplib/RequestClient;Lcom/bt/jrsdk/httplib/config/HttpMethod;)Lcom/bt/jrsdk/httplib/config/HttpMethod;

    .line 129
    iget-object v1, p0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    invoke-static {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient;->access$602(Lcom/bt/jrsdk/httplib/RequestClient;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    .line 130
    iget-object v1, p0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->adapter:Lcom/bt/jrsdk/httplib/iml/IAdapter;

    invoke-static {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient;->access$702(Lcom/bt/jrsdk/httplib/RequestClient;Lcom/bt/jrsdk/httplib/iml/IAdapter;)Lcom/bt/jrsdk/httplib/iml/IAdapter;

    .line 131
    iget-object v1, p0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->header:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient;->access$802(Lcom/bt/jrsdk/httplib/RequestClient;Ljava/util/Map;)Ljava/util/Map;

    return-object v0
.end method

.method public setAdapter(Lcom/bt/jrsdk/httplib/iml/IAdapter;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->adapter:Lcom/bt/jrsdk/httplib/iml/IAdapter;

    return-object p0
.end method

.method public setCallback(Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    return-object p0
.end method

.method public setHeader(Ljava/util/Map;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bt/jrsdk/httplib/RequestClient$Builder;"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->header:Ljava/util/Map;

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->host:Ljava/lang/String;

    return-object p0
.end method

.method public setIntercepter(Lcom/bt/jrsdk/httplib/iml/IIntercepter;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->intercepter:Lcom/bt/jrsdk/httplib/iml/IIntercepter;

    return-object p0
.end method

.method public setMethod(Lcom/bt/jrsdk/httplib/config/HttpMethod;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->method:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    return-object p0
.end method

.method public setParams(Ljava/util/Map;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bt/jrsdk/httplib/RequestClient$Builder;"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->params:Ljava/util/Map;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->path:Ljava/lang/String;

    return-object p0
.end method
