.class public Lcom/lzy/okgo/SSLSocketFactoryCompat;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLSocketFactoryCompat.java"


# static fields
.field static cipherSuites:[Ljava/lang/String;

.field static protocols:[Ljava/lang/String;


# instance fields
.field private defaultFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 35
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_2

    .line 40
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 41
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 42
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SSL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 43
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/lzy/okgo/SSLSocketFactoryCompat;->protocols:[Ljava/lang/String;

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    const-string v3, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const-string v4, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const-string v5, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const-string v6, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const-string v7, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const-string v8, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const-string v9, "TLS_ECHDE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v10, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v11, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const-string v12, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const-string v13, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const-string v14, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const-string v15, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v16, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    .line 48
    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 66
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 68
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 69
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 76
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/lzy/okgo/SSLSocketFactoryCompat;->cipherSuites:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 4

    .line 85
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    :try_start_0
    const-string v0, "TLS"

    .line 87
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 88
    :goto_0
    invoke-virtual {v0, v1, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 89
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 91
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private upgradeTLS(Ljavax/net/ssl/SSLSocket;)V
    .locals 2

    .line 99
    sget-object v0, Lcom/lzy/okgo/SSLSocketFactoryCompat;->protocols:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 102
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/lzy/okgo/SSLSocketFactoryCompat;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/lzy/okgo/SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    .line 128
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    .line 129
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p2}, Lcom/lzy/okgo/SSLSocketFactoryCompat;->upgradeTLS(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/lzy/okgo/SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 136
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    .line 137
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p2}, Lcom/lzy/okgo/SSLSocketFactoryCompat;->upgradeTLS(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/lzy/okgo/SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 144
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    .line 145
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p2}, Lcom/lzy/okgo/SSLSocketFactoryCompat;->upgradeTLS(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/lzy/okgo/SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 152
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    .line 153
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p2}, Lcom/lzy/okgo/SSLSocketFactoryCompat;->upgradeTLS(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/lzy/okgo/SSLSocketFactoryCompat;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    .line 120
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    .line 121
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p2}, Lcom/lzy/okgo/SSLSocketFactoryCompat;->upgradeTLS(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 109
    sget-object v0, Lcom/lzy/okgo/SSLSocketFactoryCompat;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 114
    sget-object v0, Lcom/lzy/okgo/SSLSocketFactoryCompat;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method
