.class public Lcom/upa/source/VideoSource;
.super Ljava/lang/Object;
.source "VideoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upa/source/VideoSource$SourceInit;
    }
.end annotation


# static fields
.field public static final LOCAL_MD5:Ljava/lang/String; = "tv_source_local_md5"

.field public static final LOCAL_SOURCE:Ljava/lang/String; = "tv_source_local_data"

.field public static final NET_MD5:Ljava/lang/String; = "tv_source_net_md5"

.field public static final NET_MD5_FILE_NAME:Ljava/lang/String; = "tv_source_file_name"

.field public static final url:Ljava/lang/String; = "https://lfqdy.oss-cn-hongkong.aliyuncs.com/lfqdyapp/gp/tvsgp2"


# instance fields
.field private sourceData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/upa/source/VideoSource;)[B
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/upa/source/VideoSource;->sourceData:[B

    return-object p0
.end method

.method static synthetic access$002(Lcom/upa/source/VideoSource;[B)[B
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/upa/source/VideoSource;->sourceData:[B

    return-object p1
.end method

.method public static getInstance()Lcom/upa/source/VideoSource;
    .locals 1

    .line 47
    sget-object v0, Lcom/upa/source/VideoSource$SourceInit;->source:Lcom/upa/source/VideoSource;

    return-object v0
.end method


# virtual methods
.method public getByteMD5([B)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "MD5"

    .line 176
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 177
    array-length v1, p1

    const/4 v2, 0x0

    .line 178
    invoke-virtual {v0, p1, v2, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    new-instance p1, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p1, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    .line 184
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSource(Lcom/upa/source/ISourceListener;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/upa/source/VideoSource;->sourceData:[B

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {p1, v0}, Lcom/upa/source/ISourceListener;->getSourceSuccess([B)V

    goto :goto_0

    :cond_0
    const-string v0, "https://lfqdy.oss-cn-hongkong.aliyuncs.com/lfqdyapp/gp/tvsgp2"

    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/upa/source/VideoSource;->httpByte(Ljava/lang/String;Lcom/upa/source/ISourceListener;)V

    :goto_0
    return-void
.end method

.method public httpByte(Ljava/lang/String;Lcom/upa/source/ISourceListener;)V
    .locals 3

    .line 69
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 70
    new-instance v0, Lcom/upa/source/VideoSource$1;

    invoke-direct {v0, p0, p2}, Lcom/upa/source/VideoSource$1;-><init>(Lcom/upa/source/VideoSource;Lcom/upa/source/ISourceListener;)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public request(Ljava/lang/String;Lcom/upa/source/ISourceListener;)V
    .locals 12

    const-string v0, "tv_source_file_name"

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v3, v5, :cond_8

    const/4 v6, 0x1

    .line 101
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v4, "GET"

    .line 103
    invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v4, 0x4e20

    .line 104
    invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v4, 0x3a98

    .line 105
    invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 106
    instance-of v4, v7, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v4, :cond_1

    .line 107
    new-instance v4, Lcom/upa/source/VideoSource$2;

    invoke-direct {v4, p0}, Lcom/upa/source/VideoSource$2;-><init>(Lcom/upa/source/VideoSource;)V

    .line 118
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-ge v8, v9, :cond_0

    .line 119
    move-object v8, v7

    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v9, Lcom/upa/http/SSLSocketFactoryCompat;

    invoke-direct {v9, v4}, Lcom/upa/http/SSLSocketFactoryCompat;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    invoke-virtual {v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_1

    :cond_0
    const-string v8, "SSL"

    .line 121
    invoke-static {v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v8

    .line 122
    move-object v9, v1

    check-cast v9, [Ljavax/net/ssl/KeyManager;

    new-array v10, v6, [Ljavax/net/ssl/TrustManager;

    aput-object v4, v10, v2

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v8, v9, v10, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 123
    move-object v4, v7

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 126
    :cond_1
    :goto_1
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 127
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v8, 0xc8

    if-ne v4, v8, :cond_3

    .line 129
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v8, 0x400

    new-array v8, v8, [B

    .line 131
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 133
    :goto_2
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 134
    invoke-virtual {v9, v8, v2, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 136
    :cond_2
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 137
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 138
    invoke-interface {p2, v8}, Lcom/upa/source/ISourceListener;->getSourceSuccess([B)V

    if-eqz v8, :cond_3

    .line 141
    iput-object v8, p0, Lcom/upa/source/VideoSource;->sourceData:[B

    .line 142
    invoke-static {v8, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-static {}, Lcom/today/player/base/App;->getInstance()Landroid/app/Application;

    move-result-object v8

    const-string v9, "tv_source_local_data"

    invoke-static {v8, v0, v9, v4}, Lcom/upa/source/PreferencesUtils;->writeString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v4, p0, Lcom/upa/source/VideoSource;->sourceData:[B

    invoke-static {v4}, Lcom/upa/source/Encrypts;->decrypt([B)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/upa/source/VideoSource;->getByteMD5([B)Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 147
    invoke-static {}, Lcom/today/player/base/App;->getInstance()Landroid/app/Application;

    move-result-object v8

    const-string v9, "tv_source_local_md5"

    invoke-static {v8, v0, v9, v4}, Lcom/upa/source/PreferencesUtils;->writeString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v7, :cond_4

    .line 156
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move-object v4, v7

    const/4 v6, 0x0

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v4, v7

    goto :goto_3

    :catch_0
    move-object v4, v7

    goto :goto_4

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 158
    :cond_5
    throw p1

    :catch_1
    nop

    :goto_4
    if-eqz v4, :cond_6

    .line 156
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    :goto_5
    if-eqz v6, :cond_8

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v5, :cond_7

    .line 162
    invoke-interface {p2}, Lcom/upa/source/ISourceListener;->fail()V

    goto/16 :goto_0

    :cond_7
    const-wide/16 v5, 0xbb8

    .line 164
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method
