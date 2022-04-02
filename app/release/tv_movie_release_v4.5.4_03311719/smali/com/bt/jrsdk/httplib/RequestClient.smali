.class public Lcom/bt/jrsdk/httplib/RequestClient;
.super Ljava/lang/Object;
.source "RequestClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bt/jrsdk/httplib/RequestClient$Builder;
    }
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

.field private out:Ljava/lang/StringBuffer;

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
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/bt/jrsdk/httplib/RequestClient;->out:Ljava/lang/StringBuffer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bt/jrsdk/httplib/RequestClient$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/bt/jrsdk/httplib/RequestClient;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/bt/jrsdk/httplib/RequestClient;Lcom/bt/jrsdk/httplib/iml/IIntercepter;)Lcom/bt/jrsdk/httplib/iml/IIntercepter;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/RequestClient;->intercepter:Lcom/bt/jrsdk/httplib/iml/IIntercepter;

    return-object p1
.end method

.method static synthetic access$202(Lcom/bt/jrsdk/httplib/RequestClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/RequestClient;->host:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/bt/jrsdk/httplib/RequestClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/RequestClient;->path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/bt/jrsdk/httplib/RequestClient;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/RequestClient;->params:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$502(Lcom/bt/jrsdk/httplib/RequestClient;Lcom/bt/jrsdk/httplib/config/HttpMethod;)Lcom/bt/jrsdk/httplib/config/HttpMethod;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/RequestClient;->method:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    return-object p1
.end method

.method static synthetic access$602(Lcom/bt/jrsdk/httplib/RequestClient;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)Lcom/bt/jrsdk/httplib/iml/ResponseCallback;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/RequestClient;->callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    return-object p1
.end method

.method static synthetic access$702(Lcom/bt/jrsdk/httplib/RequestClient;Lcom/bt/jrsdk/httplib/iml/IAdapter;)Lcom/bt/jrsdk/httplib/iml/IAdapter;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/RequestClient;->adapter:Lcom/bt/jrsdk/httplib/iml/IAdapter;

    return-object p1
.end method

.method static synthetic access$802(Lcom/bt/jrsdk/httplib/RequestClient;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/RequestClient;->header:Ljava/util/Map;

    return-object p1
.end method

.method private getIntercepter()Lcom/bt/jrsdk/httplib/iml/IIntercepter;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/bt/jrsdk/httplib/RequestClient;->intercepter:Lcom/bt/jrsdk/httplib/iml/IIntercepter;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/bt/jrsdk/httplib/intercepter/HttpIntercepter;

    invoke-direct {v0}, Lcom/bt/jrsdk/httplib/intercepter/HttpIntercepter;-><init>()V

    iput-object v0, p0, Lcom/bt/jrsdk/httplib/RequestClient;->intercepter:Lcom/bt/jrsdk/httplib/iml/IIntercepter;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/bt/jrsdk/httplib/RequestClient;->intercepter:Lcom/bt/jrsdk/httplib/iml/IIntercepter;

    return-object v0
.end method


# virtual methods
.method public getAdapter()Lcom/bt/jrsdk/httplib/iml/IAdapter;
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/bt/jrsdk/httplib/RequestClient;->getIntercepter()Lcom/bt/jrsdk/httplib/iml/IIntercepter;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/httplib/RequestClient;->adapter:Lcom/bt/jrsdk/httplib/iml/IAdapter;

    invoke-interface {v0, v1}, Lcom/bt/jrsdk/httplib/iml/IIntercepter;->requestAdapterIntercept(Lcom/bt/jrsdk/httplib/iml/IAdapter;)Lcom/bt/jrsdk/httplib/iml/IAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getCallback()Lcom/bt/jrsdk/httplib/iml/ResponseCallback;
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/bt/jrsdk/httplib/RequestClient;->getIntercepter()Lcom/bt/jrsdk/httplib/iml/IIntercepter;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/httplib/RequestClient;->callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    invoke-interface {v0, v1}, Lcom/bt/jrsdk/httplib/iml/IIntercepter;->requestCallbackIntercept(Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/bt/jrsdk/httplib/RequestClient;->getIntercepter()Lcom/bt/jrsdk/httplib/iml/IIntercepter;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/httplib/RequestClient;->header:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/bt/jrsdk/httplib/iml/IIntercepter;->requestHeaderIntercept(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/bt/jrsdk/httplib/RequestClient;->getIntercepter()Lcom/bt/jrsdk/httplib/iml/IIntercepter;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/httplib/RequestClient;->host:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bt/jrsdk/httplib/iml/IIntercepter;->requestHostIntercept(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Lcom/bt/jrsdk/httplib/config/HttpMethod;
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/bt/jrsdk/httplib/RequestClient;->getIntercepter()Lcom/bt/jrsdk/httplib/iml/IIntercepter;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/httplib/RequestClient;->method:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    invoke-interface {v0, v1}, Lcom/bt/jrsdk/httplib/iml/IIntercepter;->requestMethodIntercept(Lcom/bt/jrsdk/httplib/config/HttpMethod;)Lcom/bt/jrsdk/httplib/config/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/lang/String;
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/bt/jrsdk/httplib/RequestClient;->params:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/bt/jrsdk/httplib/RequestClient;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lcom/bt/jrsdk/httplib/RequestClient;->out:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/bt/jrsdk/httplib/RequestClient;->out:Ljava/lang/StringBuffer;

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/bt/jrsdk/httplib/RequestClient;->out:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/bt/jrsdk/httplib/RequestClient;->params:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/bt/jrsdk/httplib/RequestClient;->getIntercepter()Lcom/bt/jrsdk/httplib/iml/IIntercepter;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/httplib/RequestClient;->out:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bt/jrsdk/httplib/iml/IIntercepter;->requestParamsIntercept(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/bt/jrsdk/httplib/RequestClient;->getIntercepter()Lcom/bt/jrsdk/httplib/iml/IIntercepter;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/httplib/RequestClient;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bt/jrsdk/httplib/iml/IIntercepter;->requestPathIntercept(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
