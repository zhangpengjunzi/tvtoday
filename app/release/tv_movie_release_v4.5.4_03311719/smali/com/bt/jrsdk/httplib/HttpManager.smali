.class public Lcom/bt/jrsdk/httplib/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bt/jrsdk/httplib/HttpManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x2710

.field private static final DEFAULT_READ_TIMEOUT:I = 0x2710

.field private static final HTTP_REQ_PROPERTY_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field private static final HTTP_REQ_PROPERTY_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final HTTP_REQ_VALUE_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final HTTP_REQ_VALUE_CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bt/jrsdk/httplib/HttpManager$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/bt/jrsdk/httplib/HttpManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/bt/jrsdk/httplib/HttpManager;
    .locals 1

    .line 44
    invoke-static {}, Lcom/bt/jrsdk/httplib/HttpManager$SingletonHolder;->access$000()Lcom/bt/jrsdk/httplib/HttpManager;

    move-result-object v0

    return-object v0
.end method

.method private setRequestURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const-string v0, "GET"

    .line 129
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 130
    new-instance p4, Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    new-instance p4, Ljava/net/URL;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p4
.end method

.method private setURLConnectionCommonPara(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const/16 v0, 0x2710

    .line 138
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 139
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 141
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "POST"

    .line 142
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 143
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 144
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p2, "connection"

    const-string v0, "Keep-Alive"

    .line 145
    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setURLConnectionHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Accept-Charset"

    const-string v1, "UTF-8"

    .line 150
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    .line 151
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 152
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doRequest(Lcom/bt/jrsdk/httplib/RequestClient;)V
    .locals 9

    .line 52
    invoke-virtual {p1}, Lcom/bt/jrsdk/httplib/RequestClient;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {p1}, Lcom/bt/jrsdk/httplib/RequestClient;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {p1}, Lcom/bt/jrsdk/httplib/RequestClient;->getParams()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {p1}, Lcom/bt/jrsdk/httplib/RequestClient;->getMethod()Lcom/bt/jrsdk/httplib/config/HttpMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bt/jrsdk/httplib/config/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-virtual {p1}, Lcom/bt/jrsdk/httplib/RequestClient;->getAdapter()Lcom/bt/jrsdk/httplib/iml/IAdapter;

    move-result-object v7

    .line 57
    invoke-virtual {p1}, Lcom/bt/jrsdk/httplib/RequestClient;->getCallback()Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    move-result-object v8

    .line 58
    invoke-virtual {p1}, Lcom/bt/jrsdk/httplib/RequestClient;->getHeader()Ljava/util/Map;

    move-result-object v4

    .line 59
    new-instance p1, Lcom/bt/jrsdk/httplib/HttpManager$1;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/bt/jrsdk/httplib/HttpManager$1;-><init>(Lcom/bt/jrsdk/httplib/HttpManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/bt/jrsdk/httplib/iml/IAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V

    invoke-static {p1}, Lcom/bt/jrsdk/httplib/ThreadPoolManager;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/bt/jrsdk/httplib/iml/IAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bt/jrsdk/httplib/iml/IAdapter;",
            "Lcom/bt/jrsdk/httplib/iml/ResponseCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MAP"

    .line 73
    invoke-static {v1, p4}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/bt/jrsdk/httplib/HttpManager;->setRequestURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 77
    invoke-direct {p0, p1, p5}, Lcom/bt/jrsdk/httplib/HttpManager;->setURLConnectionCommonPara(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1, p3}, Lcom/bt/jrsdk/httplib/HttpManager;->setURLConnectionHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    const-string p2, "POST"

    .line 80
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 83
    array-length p2, v0

    if-lez p2, :cond_1

    .line 84
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 86
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 p3, 0xc8

    if-eq p2, p3, :cond_3

    .line 88
    new-instance p1, Lcom/bt/jrsdk/httplib/HttpManager$2;

    invoke-direct {p1, p0, p7, p2}, Lcom/bt/jrsdk/httplib/HttpManager$2;-><init>(Lcom/bt/jrsdk/httplib/HttpManager;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;I)V

    invoke-static {p1}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p7, :cond_2

    .line 117
    new-instance p1, Lcom/bt/jrsdk/httplib/HttpManager$5;

    invoke-direct {p1, p0, p7}, Lcom/bt/jrsdk/httplib/HttpManager$5;-><init>(Lcom/bt/jrsdk/httplib/HttpManager;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V

    invoke-static {p1}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    .line 98
    :cond_3
    :try_start_1
    invoke-interface {p6, p1, p7}, Lcom/bt/jrsdk/httplib/iml/IAdapter;->dealStream(Ljava/net/HttpURLConnection;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p7, :cond_4

    .line 117
    new-instance p1, Lcom/bt/jrsdk/httplib/HttpManager$5;

    invoke-direct {p1, p0, p7}, Lcom/bt/jrsdk/httplib/HttpManager$5;-><init>(Lcom/bt/jrsdk/httplib/HttpManager;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 108
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    new-instance p1, Lcom/bt/jrsdk/httplib/HttpManager$4;

    invoke-direct {p1, p0, p7}, Lcom/bt/jrsdk/httplib/HttpManager$4;-><init>(Lcom/bt/jrsdk/httplib/HttpManager;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V

    invoke-static {p1}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p7, :cond_4

    .line 117
    new-instance p1, Lcom/bt/jrsdk/httplib/HttpManager$5;

    invoke-direct {p1, p0, p7}, Lcom/bt/jrsdk/httplib/HttpManager$5;-><init>(Lcom/bt/jrsdk/httplib/HttpManager;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 100
    :try_start_3
    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 101
    new-instance p1, Lcom/bt/jrsdk/httplib/HttpManager$3;

    invoke-direct {p1, p0, p7}, Lcom/bt/jrsdk/httplib/HttpManager$3;-><init>(Lcom/bt/jrsdk/httplib/HttpManager;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V

    invoke-static {p1}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p7, :cond_4

    .line 117
    new-instance p1, Lcom/bt/jrsdk/httplib/HttpManager$5;

    invoke-direct {p1, p0, p7}, Lcom/bt/jrsdk/httplib/HttpManager$5;-><init>(Lcom/bt/jrsdk/httplib/HttpManager;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V

    :goto_0
    invoke-static {p1}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :goto_1
    if-eqz p7, :cond_5

    new-instance p2, Lcom/bt/jrsdk/httplib/HttpManager$5;

    invoke-direct {p2, p0, p7}, Lcom/bt/jrsdk/httplib/HttpManager$5;-><init>(Lcom/bt/jrsdk/httplib/HttpManager;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V

    invoke-static {p2}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V

    .line 124
    :cond_5
    throw p1
.end method
