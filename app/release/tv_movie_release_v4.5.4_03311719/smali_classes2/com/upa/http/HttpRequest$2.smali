.class Lcom/upa/http/HttpRequest$2;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/http/HttpRequest;->httpPost(Ljava/lang/String;Lcom/upa/im/ActivationHttpListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upa/http/HttpRequest;

.field final synthetic val$listener:Lcom/upa/im/ActivationHttpListener;

.field final synthetic val$param:Ljava/lang/String;

.field final synthetic val$requestUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upa/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;Lcom/upa/im/ActivationHttpListener;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/upa/http/HttpRequest$2;->this$0:Lcom/upa/http/HttpRequest;

    iput-object p2, p0, Lcom/upa/http/HttpRequest$2;->val$requestUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/upa/http/HttpRequest$2;->val$param:Ljava/lang/String;

    iput-object p4, p0, Lcom/upa/http/HttpRequest$2;->val$listener:Lcom/upa/im/ActivationHttpListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_8

    const/4 v4, 0x1

    .line 258
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/upa/http/HttpRequest$2;->val$requestUrl:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "POST"

    .line 260
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v3, 0x4e20

    .line 261
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x3a98

    .line 262
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 263
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 264
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 265
    instance-of v3, v5, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_1

    .line 266
    new-instance v3, Lcom/upa/http/HttpRequest$2$1;

    invoke-direct {v3, p0}, Lcom/upa/http/HttpRequest$2$1;-><init>(Lcom/upa/http/HttpRequest$2;)V

    .line 277
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_0

    .line 278
    move-object v6, v5

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v7, Lcom/upa/http/SSLSocketFactoryCompat;

    invoke-direct {v7, v3}, Lcom/upa/http/SSLSocketFactoryCompat;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_1

    :cond_0
    const-string v6, "SSL"

    .line 280
    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    .line 281
    move-object v7, v0

    check-cast v7, [Ljavax/net/ssl/KeyManager;

    new-array v8, v4, [Ljavax/net/ssl/TrustManager;

    aput-object v3, v8, v1

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v6, v7, v8, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 282
    move-object v3, v5

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 285
    :cond_1
    :goto_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 286
    iget-object v6, p0, Lcom/upa/http/HttpRequest$2;->val$param:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 287
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 288
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 289
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v6, 0xc8

    if-ne v3, v6, :cond_3

    .line 291
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 293
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 295
    :goto_2
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 296
    invoke-virtual {v7, v6, v1, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 298
    :cond_2
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 299
    new-instance v7, Lorg/json/JSONObject;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "code"

    .line 300
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 301
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 302
    iget-object v3, p0, Lcom/upa/http/HttpRequest$2;->this$0:Lcom/upa/http/HttpRequest;

    invoke-static {v3}, Lcom/upa/http/HttpRequest;->access$000(Lcom/upa/http/HttpRequest;)Landroid/os/Handler;

    move-result-object v3

    new-instance v7, Lcom/upa/http/HttpRequest$2$2;

    invoke-direct {v7, p0, v6}, Lcom/upa/http/HttpRequest$2$2;-><init>(Lcom/upa/http/HttpRequest$2;I)V

    invoke-virtual {v3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    if-eqz v5, :cond_4

    .line 321
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move-object v3, v5

    const/4 v4, 0x0

    goto :goto_6

    :catch_0
    move-exception v3

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v5

    move-object v10, v5

    move-object v5, v3

    move-object v3, v10

    :goto_3
    const/4 v6, 0x2

    if-ne v2, v6, :cond_6

    .line 312
    :try_start_2
    iget-object v6, p0, Lcom/upa/http/HttpRequest$2;->this$0:Lcom/upa/http/HttpRequest;

    invoke-static {v6}, Lcom/upa/http/HttpRequest;->access$000(Lcom/upa/http/HttpRequest;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/upa/http/HttpRequest$2$3;

    invoke-direct {v7, p0, v3}, Lcom/upa/http/HttpRequest$2$3;-><init>(Lcom/upa/http/HttpRequest$2;Ljava/lang/Exception;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v3, v5

    :goto_4
    if-eqz v3, :cond_5

    .line 321
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 323
    :cond_5
    throw v0

    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    .line 321
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move-object v3, v5

    :goto_6
    if-eqz v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v4, 0xbb8

    .line 326
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method
