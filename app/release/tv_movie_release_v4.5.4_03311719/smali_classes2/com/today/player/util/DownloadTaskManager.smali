.class public Lcom/today/player/util/DownloadTaskManager;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;,
        Lcom/today/player/util/DownloadTaskManager$SingletonHolder;
    }
.end annotation


# instance fields
.field private nowDownloadTasks:I

.field private final okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/today/player/util/DownloadTaskManager;->nowDownloadTasks:I

    .line 36
    new-instance v0, Lcom/today/player/http/HttpLoggingInterceptor;

    invoke-direct {v0}, Lcom/today/player/http/HttpLoggingInterceptor;-><init>()V

    .line 37
    sget-object v1, Lcom/today/player/http/HttpLoggingInterceptor$Level;->NONE:Lcom/today/player/http/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lcom/today/player/http/HttpLoggingInterceptor;->setLevel(Lcom/today/player/http/HttpLoggingInterceptor$Level;)Lcom/today/player/http/HttpLoggingInterceptor;

    .line 38
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    .line 45
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 47
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/util/DownloadTaskManager;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method synthetic constructor <init>(Lcom/today/player/util/DownloadTaskManager$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/today/player/util/DownloadTaskManager;-><init>()V

    return-void
.end method

.method static synthetic access$210(Lcom/today/player/util/DownloadTaskManager;)I
    .locals 2

    .line 18
    iget v0, p0, Lcom/today/player/util/DownloadTaskManager;->nowDownloadTasks:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/today/player/util/DownloadTaskManager;->nowDownloadTasks:I

    return v0
.end method

.method private canDownload()Z
    .locals 2

    .line 28
    iget v0, p0, Lcom/today/player/util/DownloadTaskManager;->nowDownloadTasks:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getInstance()Lcom/today/player/util/DownloadTaskManager;
    .locals 1

    .line 23
    invoke-static {}, Lcom/today/player/util/DownloadTaskManager$SingletonHolder;->access$000()Lcom/today/player/util/DownloadTaskManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public downLoad(Ljava/lang/String;ILcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;)V
    .locals 3

    .line 53
    iget v0, p0, Lcom/today/player/util/DownloadTaskManager;->nowDownloadTasks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/today/player/util/DownloadTaskManager;->nowDownloadTasks:I

    .line 54
    invoke-direct {p0}, Lcom/today/player/util/DownloadTaskManager;->canDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-interface {p3, p1, p2}, Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;->onTooManyTasks(Ljava/lang/String;I)V

    .line 56
    iget p1, p0, Lcom/today/player/util/DownloadTaskManager;->nowDownloadTasks:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/today/player/util/DownloadTaskManager;->nowDownloadTasks:I

    return-void

    .line 59
    :cond_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "GET"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/today/player/util/DownloadTaskManager;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/today/player/util/DownloadTaskManager$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/today/player/util/DownloadTaskManager$1;-><init>(Lcom/today/player/util/DownloadTaskManager;Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
