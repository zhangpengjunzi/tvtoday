.class public Lcom/today/player/http/AwesomeHttp;
.super Ljava/lang/Object;
.source "AwesomeHttp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/http/AwesomeHttp$SingletonHolder;
    }
.end annotation


# instance fields
.field private okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/today/player/http/HttpLoggingInterceptor;

    invoke-direct {v0}, Lcom/today/player/http/HttpLoggingInterceptor;-><init>()V

    .line 31
    sget-object v1, Lcom/today/player/http/HttpLoggingInterceptor$Level;->NONE:Lcom/today/player/http/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lcom/today/player/http/HttpLoggingInterceptor;->setLevel(Lcom/today/player/http/HttpLoggingInterceptor$Level;)Lcom/today/player/http/HttpLoggingInterceptor;

    .line 34
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    .line 41
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 43
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/http/AwesomeHttp;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method synthetic constructor <init>(Lcom/today/player/http/AwesomeHttp$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/today/player/http/AwesomeHttp;-><init>()V

    return-void
.end method

.method private enqueue(Lokhttp3/Call;Lcom/today/player/http/ResponseCallback;)V
    .locals 1

    .line 87
    new-instance v0, Lcom/today/player/http/AwesomeHttp$1;

    invoke-direct {v0, p0, p2}, Lcom/today/player/http/AwesomeHttp$1;-><init>(Lcom/today/player/http/AwesomeHttp;Lcom/today/player/http/ResponseCallback;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static getInstance()Lcom/today/player/http/AwesomeHttp;
    .locals 1

    .line 50
    invoke-static {}, Lcom/today/player/http/AwesomeHttp$SingletonHolder;->access$000()Lcom/today/player/http/AwesomeHttp;

    move-result-object v0

    return-object v0
.end method

.method private getRequest(Ljava/lang/String;Ljava/util/Map;Lcom/today/player/http/ResponseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/today/player/http/ResponseCallback;",
            ")V"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p2, :cond_1

    .line 124
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 125
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 130
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    const/4 v0, 0x0

    const-string v1, "GET"

    invoke-virtual {p2, v1, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 131
    iget-object p2, p0, Lcom/today/player/http/AwesomeHttp;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 132
    invoke-direct {p0, p1, p3}, Lcom/today/player/http/AwesomeHttp;->enqueue(Lokhttp3/Call;Lcom/today/player/http/ResponseCallback;)V

    return-void
.end method

.method private postRequest(Ljava/lang/String;Ljava/util/Map;Lcom/today/player/http/ResponseCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/today/player/http/ResponseCallback;",
            ")V"
        }
    .end annotation

    .line 72
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    if-eqz p2, :cond_1

    .line 75
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 81
    :goto_1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 82
    iget-object p2, p0, Lcom/today/player/http/AwesomeHttp;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 83
    invoke-direct {p0, p1, p3}, Lcom/today/player/http/AwesomeHttp;->enqueue(Lokhttp3/Call;Lcom/today/player/http/ResponseCallback;)V

    return-void
.end method


# virtual methods
.method public request(Lcom/today/player/http/RequestClient;)V
    .locals 5

    .line 58
    invoke-virtual {p1}, Lcom/today/player/http/RequestClient;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/today/player/http/RequestClient;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lcom/today/player/http/RequestClient;->getParams()Ljava/util/Map;

    move-result-object v2

    .line 61
    invoke-virtual {p1}, Lcom/today/player/http/RequestClient;->getMethod()Lcom/today/player/http/HttpMethod;

    move-result-object v3

    .line 62
    invoke-virtual {p1}, Lcom/today/player/http/RequestClient;->getCallback()Lcom/today/player/http/ResponseCallback;

    move-result-object v4

    .line 63
    invoke-virtual {p1}, Lcom/today/player/http/RequestClient;->getHeader()Ljava/util/Map;

    .line 64
    invoke-virtual {v3}, Lcom/today/player/http/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/today/player/http/HttpMethod;->GET:Lcom/today/player/http/HttpMethod;

    invoke-virtual {v3}, Lcom/today/player/http/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v4}, Lcom/today/player/http/AwesomeHttp;->getRequest(Ljava/lang/String;Ljava/util/Map;Lcom/today/player/http/ResponseCallback;)V

    goto :goto_0

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v4}, Lcom/today/player/http/AwesomeHttp;->postRequest(Ljava/lang/String;Ljava/util/Map;Lcom/today/player/http/ResponseCallback;)V

    :goto_0
    return-void
.end method
