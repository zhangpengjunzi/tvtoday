.class Lcom/upa/http/HttpRequest$3;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/http/HttpRequest;->saveApkFromHttps(Landroid/content/Context;Ljava/lang/String;Lcom/upa/im/IDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upa/http/HttpRequest;

.field final synthetic val$listener:Lcom/upa/im/IDownloadListener;

.field final synthetic val$mDownloadUrl:Ljava/lang/String;

.field final synthetic val$pkgname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upa/http/HttpRequest;Lcom/upa/im/IDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/upa/http/HttpRequest$3;->this$0:Lcom/upa/http/HttpRequest;

    iput-object p2, p0, Lcom/upa/http/HttpRequest$3;->val$listener:Lcom/upa/im/IDownloadListener;

    iput-object p3, p0, Lcom/upa/http/HttpRequest$3;->val$pkgname:Ljava/lang/String;

    iput-object p4, p0, Lcom/upa/http/HttpRequest$3;->val$mDownloadUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 365
    :try_start_0
    iget-object v0, v1, Lcom/upa/http/HttpRequest$3;->this$0:Lcom/upa/http/HttpRequest;

    invoke-static {v0}, Lcom/upa/http/HttpRequest;->access$000(Lcom/upa/http/HttpRequest;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/upa/http/HttpRequest$3$1;

    invoke-direct {v3, v1}, Lcom/upa/http/HttpRequest$3$1;-><init>(Lcom/upa/http/HttpRequest$3;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lcom/upa/http/HttpRequest$3;->this$0:Lcom/upa/http/HttpRequest;

    invoke-static {v3}, Lcom/upa/http/HttpRequest;->access$100(Lcom/upa/http/HttpRequest;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/upa/http/HttpRequest$3;->val$pkgname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 376
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v4, v3

    .line 377
    new-instance v3, Ljava/net/URL;

    iget-object v5, v1, Lcom/upa/http/HttpRequest$3;->val$mDownloadUrl:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 381
    :try_start_1
    instance-of v6, v5, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 382
    new-instance v6, Lcom/upa/http/HttpRequest$3$2;

    invoke-direct {v6, v1}, Lcom/upa/http/HttpRequest$3$2;-><init>(Lcom/upa/http/HttpRequest$3;)V

    .line 393
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-ge v8, v9, :cond_1

    .line 394
    move-object v2, v5

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v8, Lcom/upa/http/SSLSocketFactoryCompat;

    invoke-direct {v8, v6}, Lcom/upa/http/SSLSocketFactoryCompat;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_0

    :cond_1
    const-string v8, "SSL"

    .line 396
    invoke-static {v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v8

    .line 397
    check-cast v2, [Ljavax/net/ssl/KeyManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljavax/net/ssl/TrustManager;

    aput-object v6, v9, v7

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v8, v2, v9, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 398
    move-object v2, v5

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 401
    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/upa/http/HttpRequest$3;->this$0:Lcom/upa/http/HttpRequest;

    const/4 v6, -0x1

    invoke-static {v2, v3, v5, v4, v6}, Lcom/upa/http/HttpRequest;->access$200(Lcom/upa/http/HttpRequest;Ljava/net/URL;Ljava/net/HttpURLConnection;II)V

    .line 403
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_3

    .line 404
    iget-object v0, v1, Lcom/upa/http/HttpRequest$3;->this$0:Lcom/upa/http/HttpRequest;

    invoke-static {v0}, Lcom/upa/http/HttpRequest;->access$000(Lcom/upa/http/HttpRequest;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/upa/http/HttpRequest$3$3;

    invoke-direct {v2, v1}, Lcom/upa/http/HttpRequest$3$3;-><init>(Lcom/upa/http/HttpRequest$3;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 411
    :cond_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 412
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 413
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v9, "rwd"

    invoke-direct {v8, v0, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    int-to-long v9, v4

    .line 414
    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v9, 0x1000

    new-array v9, v9, [B

    const-wide/16 v10, 0x0

    .line 419
    :cond_4
    :goto_1
    invoke-virtual {v2, v9}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-eq v12, v6, :cond_5

    .line 420
    invoke-virtual {v8, v9, v7, v12}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v4, v12

    int-to-double v12, v3

    int-to-double v14, v4

    .line 422
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double v12, v14, v12

    mul-double v14, v14, v12

    double-to-int v14, v14

    int-to-double v14, v14

    cmpl-double v16, v14, v10

    if-lez v16, :cond_4

    .line 429
    :try_start_2
    iget-object v10, v1, Lcom/upa/http/HttpRequest$3;->this$0:Lcom/upa/http/HttpRequest;

    invoke-static {v10}, Lcom/upa/http/HttpRequest;->access$000(Lcom/upa/http/HttpRequest;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/upa/http/HttpRequest$3$4;

    invoke-direct {v11, v1, v3, v12, v13}, Lcom/upa/http/HttpRequest$3$4;-><init>(Lcom/upa/http/HttpRequest$3;ID)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v10, v12

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    .line 438
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 441
    :cond_6
    iget-object v2, v1, Lcom/upa/http/HttpRequest$3;->this$0:Lcom/upa/http/HttpRequest;

    invoke-static {v2}, Lcom/upa/http/HttpRequest;->access$000(Lcom/upa/http/HttpRequest;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/upa/http/HttpRequest$3$5;

    invoke-direct {v3, v1, v0}, Lcom/upa/http/HttpRequest$3$5;-><init>(Lcom/upa/http/HttpRequest$3;Ljava/io/File;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v5, :cond_7

    .line 459
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 461
    :cond_7
    iget-object v0, v1, Lcom/upa/http/HttpRequest$3;->this$0:Lcom/upa/http/HttpRequest;

    invoke-static {v0}, Lcom/upa/http/HttpRequest;->access$000(Lcom/upa/http/HttpRequest;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/upa/http/HttpRequest$3$7;

    invoke-direct {v2, v1}, Lcom/upa/http/HttpRequest$3$7;-><init>(Lcom/upa/http/HttpRequest$3;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v5

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v5

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 449
    :goto_3
    :try_start_3
    iget-object v3, v1, Lcom/upa/http/HttpRequest$3;->this$0:Lcom/upa/http/HttpRequest;

    invoke-static {v3}, Lcom/upa/http/HttpRequest;->access$000(Lcom/upa/http/HttpRequest;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/upa/http/HttpRequest$3$6;

    invoke-direct {v4, v1, v0}, Lcom/upa/http/HttpRequest$3$6;-><init>(Lcom/upa/http/HttpRequest$3;Ljava/lang/Exception;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_8

    .line 459
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 461
    :cond_8
    iget-object v0, v1, Lcom/upa/http/HttpRequest$3;->this$0:Lcom/upa/http/HttpRequest;

    invoke-static {v0}, Lcom/upa/http/HttpRequest;->access$000(Lcom/upa/http/HttpRequest;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/upa/http/HttpRequest$3$7;

    invoke-direct {v2, v1}, Lcom/upa/http/HttpRequest$3$7;-><init>(Lcom/upa/http/HttpRequest$3;)V

    :goto_4
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_5
    if-eqz v2, :cond_9

    .line 459
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 461
    :cond_9
    iget-object v2, v1, Lcom/upa/http/HttpRequest$3;->this$0:Lcom/upa/http/HttpRequest;

    invoke-static {v2}, Lcom/upa/http/HttpRequest;->access$000(Lcom/upa/http/HttpRequest;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/upa/http/HttpRequest$3$7;

    invoke-direct {v3, v1}, Lcom/upa/http/HttpRequest$3$7;-><init>(Lcom/upa/http/HttpRequest$3;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 467
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method
