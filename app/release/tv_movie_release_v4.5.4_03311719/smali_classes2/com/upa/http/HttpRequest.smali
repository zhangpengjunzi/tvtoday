.class public Lcom/upa/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field private static final RETRY_COUNT:I = 0x3

.field private static ourInstance:Lcom/upa/http/HttpRequest;


# instance fields
.field private mDownDir:Ljava/io/File;

.field private mainHandler:Landroid/os/Handler;

.field public threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/upa/http/HttpRequest;->mainHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v8, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    const/4 v3, 0x5

    const/16 v4, 0x8

    const-wide/16 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/upa/http/HttpRequest;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/upa/http/HttpRequest;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/upa/http/HttpRequest;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/upa/http/HttpRequest;)Ljava/io/File;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/upa/http/HttpRequest;->mDownDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcom/upa/http/HttpRequest;Ljava/net/URL;Ljava/net/HttpURLConnection;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/upa/http/HttpRequest;->setHttpHeader(Ljava/net/URL;Ljava/net/HttpURLConnection;II)V

    return-void
.end method

.method public static getByteMD5([B)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "MD5"

    .line 489
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 490
    array-length v1, p0

    const/4 v2, 0x0

    .line 491
    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    .line 497
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/upa/http/HttpRequest;
    .locals 2

    .line 64
    sget-object v0, Lcom/upa/http/HttpRequest;->ourInstance:Lcom/upa/http/HttpRequest;

    if-nez v0, :cond_1

    .line 65
    const-class v0, Lcom/upa/http/HttpRequest;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/upa/http/HttpRequest;->ourInstance:Lcom/upa/http/HttpRequest;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/upa/http/HttpRequest;

    invoke-direct {v1}, Lcom/upa/http/HttpRequest;-><init>()V

    sput-object v1, Lcom/upa/http/HttpRequest;->ourInstance:Lcom/upa/http/HttpRequest;

    .line 70
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 72
    :cond_1
    :goto_0
    sget-object v0, Lcom/upa/http/HttpRequest;->ourInstance:Lcom/upa/http/HttpRequest;

    return-object v0
.end method

.method private setHttpHeader(Ljava/net/URL;Ljava/net/HttpURLConnection;II)V
    .locals 0

    :try_start_0
    const-string p1, "GET"

    .line 475
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p1, "Accept"

    const-string p3, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    .line 476
    invoke-virtual {p2, p1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept-Language"

    const-string p3, "zh-CN"

    .line 477
    invoke-virtual {p2, p1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Charset"

    const-string p3, "UTF-8"

    .line 478
    invoke-virtual {p2, p1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Connection"

    const-string p3, "Keep-Alive"

    .line 479
    invoke-virtual {p2, p1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept-Encoding"

    const-string p3, "identity"

    .line 480
    invoke-virtual {p2, p1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public httpByteAsyn(Landroid/content/Context;Ljava/lang/String;ILcom/upa/im/YsRequestListener;)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/upa/http/HttpRequest;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p3, Lcom/upa/http/HttpRequest$1;

    invoke-direct {p3, p0, p2, p4}, Lcom/upa/http/HttpRequest$1;-><init>(Lcom/upa/http/HttpRequest;Ljava/lang/String;Lcom/upa/im/YsRequestListener;)V

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public httpPost(Ljava/lang/String;Lcom/upa/im/ActivationHttpListener;Ljava/lang/String;)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/upa/http/HttpRequest;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/upa/http/HttpRequest$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/upa/http/HttpRequest$2;-><init>(Lcom/upa/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;Lcom/upa/im/ActivationHttpListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveApkFromHttps(Landroid/content/Context;Ljava/lang/String;Lcom/upa/im/IDownloadListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/upa/im/IDownloadListener<",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 352
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/upa/http/HttpRequest;->mDownDir:Ljava/io/File;

    .line 353
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 354
    iget-object p1, p0, Lcom/upa/http/HttpRequest;->mDownDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 356
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/upa/http/HttpRequest;->getByteMD5([B)Ljava/lang/String;

    move-result-object p1

    .line 358
    iget-object v0, p0, Lcom/upa/http/HttpRequest;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/upa/http/HttpRequest$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/upa/http/HttpRequest$3;-><init>(Lcom/upa/http/HttpRequest;Lcom/upa/im/IDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
