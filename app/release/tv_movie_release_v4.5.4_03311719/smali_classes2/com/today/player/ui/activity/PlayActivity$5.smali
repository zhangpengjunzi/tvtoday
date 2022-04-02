.class Lcom/today/player/ui/activity/PlayActivity$5;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/PlayActivity;->setUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/PlayActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/PlayActivity;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/today/player/ui/activity/PlayActivity$5;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 441
    :try_start_0
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/today/player/api/ApiConfig;->getAdsList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 442
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    .line 443
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 444
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/today/player/ui/activity/PlayActivity$5;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v7}, Lcom/today/player/ui/activity/PlayActivity;->access$1000(Lcom/today/player/ui/activity/PlayActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 445
    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v6, "GET"

    .line 446
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v6, 0x2710

    .line 447
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 448
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 449
    instance-of v6, v5, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v6, :cond_1

    .line 450
    new-instance v6, Lcom/today/player/ui/activity/PlayActivity$5$1;

    invoke-direct {v6, p0}, Lcom/today/player/ui/activity/PlayActivity$5$1;-><init>(Lcom/today/player/ui/activity/PlayActivity$5;)V

    .line 461
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_0

    .line 462
    move-object v7, v5

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v8, Lcom/upa/http/SSLSocketFactoryCompat;

    invoke-direct {v8, v6}, Lcom/upa/http/SSLSocketFactoryCompat;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    invoke-virtual {v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_1

    :cond_0
    const-string v7, "SSL"

    .line 464
    invoke-static {v7}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    const/4 v8, 0x0

    .line 465
    check-cast v8, [Ljavax/net/ssl/KeyManager;

    new-array v9, v2, [Ljavax/net/ssl/TrustManager;

    aput-object v6, v9, v1

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7, v8, v9, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 466
    move-object v6, v5

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 469
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 470
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 471
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    .line 479
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 480
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "code"

    .line 481
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v7, 0xc8

    if-ne v5, v7, :cond_2

    .line 483
    :try_start_1
    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity$5;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    const-string v3, "url"

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/today/player/ui/activity/PlayActivity;->access$1002(Lcom/today/player/ui/activity/PlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 484
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v1

    const-string v3, "From_Url"

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/upa/DownloadManager;->setCurrentPlayerUrl(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$5;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    new-instance v1, Lcom/today/player/ui/activity/PlayActivity$5$2;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/PlayActivity$5$2;-><init>(Lcom/today/player/ui/activity/PlayActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/activity/PlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 477
    :cond_3
    :try_start_2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    nop

    :cond_4
    :goto_3
    if-nez v1, :cond_5

    .line 501
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$5;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    new-instance v1, Lcom/today/player/ui/activity/PlayActivity$5$3;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/PlayActivity$5$3;-><init>(Lcom/today/player/ui/activity/PlayActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/activity/PlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method
