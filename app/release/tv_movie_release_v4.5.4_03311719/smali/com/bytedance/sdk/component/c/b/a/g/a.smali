.class Lcom/bytedance/sdk/component/c/b/a/g/a;
.super Lcom/bytedance/sdk/component/c/b/a/g/e;
.source "AndroidPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/c/b/a/g/a$b;,
        Lcom/bytedance/sdk/component/c/b/a/g/a$c;,
        Lcom/bytedance/sdk/component/c/b/a/g/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bytedance/sdk/component/c/b/a/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/c/b/a/g/d<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/component/c/b/a/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/c/b/a/g/d<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bytedance/sdk/component/c/b/a/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/c/b/a/g/d<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/bytedance/sdk/component/c/b/a/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/c/b/a/g/d<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/bytedance/sdk/component/c/b/a/g/a$c;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/bytedance/sdk/component/c/b/a/g/d;Lcom/bytedance/sdk/component/c/b/a/g/d;Lcom/bytedance/sdk/component/c/b/a/g/d;Lcom/bytedance/sdk/component/c/b/a/g/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bytedance/sdk/component/c/b/a/g/d<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/bytedance/sdk/component/c/b/a/g/d<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/bytedance/sdk/component/c/b/a/g/d<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/bytedance/sdk/component/c/b/a/g/d<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/bytedance/sdk/component/c/b/a/g/e;-><init>()V

    .line 62
    invoke-static {}, Lcom/bytedance/sdk/component/c/b/a/g/a$c;->a()Lcom/bytedance/sdk/component/c/b/a/g/a$c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/g/a;->f:Lcom/bytedance/sdk/component/c/b/a/g/a$c;

    .line 67
    iput-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/g/a;->a:Ljava/lang/Class;

    .line 68
    iput-object p2, p0, Lcom/bytedance/sdk/component/c/b/a/g/a;->b:Lcom/bytedance/sdk/component/c/b/a/g/d;

    .line 69
    iput-object p3, p0, Lcom/bytedance/sdk/component/c/b/a/g/a;->c:Lcom/bytedance/sdk/component/c/b/a/g/d;

    .line 70
    iput-object p4, p0, Lcom/bytedance/sdk/component/c/b/a/g/a;->d:Lcom/bytedance/sdk/component/c/b/a/g/d;

    .line 71
    iput-object p5, p0, Lcom/bytedance/sdk/component/c/b/a/g/a;->e:Lcom/bytedance/sdk/component/c/b/a/g/d;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/component/c/b/a/g/e;
    .locals 10

    .line 263
    const-class v0, [B

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, v2

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v2, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    .line 266
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 270
    :goto_1
    new-instance v5, Lcom/bytedance/sdk/component/c/b/a/g/d;

    const-string v2, "setUseSessionTickets"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-direct {v5, v1, v2, v6}, Lcom/bytedance/sdk/component/c/b/a/g/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 272
    new-instance v6, Lcom/bytedance/sdk/component/c/b/a/g/d;

    const-string v2, "setHostname"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-direct {v6, v1, v2, v7}, Lcom/bytedance/sdk/component/c/b/a/g/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 277
    invoke-static {}, Lcom/bytedance/sdk/component/c/b/a/g/a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    new-instance v2, Lcom/bytedance/sdk/component/c/b/a/g/d;

    const-string v7, "getAlpnSelectedProtocol"

    new-array v9, v8, [Ljava/lang/Class;

    invoke-direct {v2, v0, v7, v9}, Lcom/bytedance/sdk/component/c/b/a/g/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 280
    new-instance v7, Lcom/bytedance/sdk/component/c/b/a/g/d;

    const-string v9, "setAlpnProtocols"

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v0, v3, v8

    invoke-direct {v7, v1, v9, v3}, Lcom/bytedance/sdk/component/c/b/a/g/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    move-object v8, v7

    move-object v7, v2

    goto :goto_2

    :cond_0
    move-object v7, v1

    move-object v8, v7

    .line 284
    :goto_2
    new-instance v0, Lcom/bytedance/sdk/component/c/b/a/g/a;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/component/c/b/a/g/a;-><init>(Ljava/lang/Class;Lcom/bytedance/sdk/component/c/b/a/g/d;Lcom/bytedance/sdk/component/c/b/a/g/d;Lcom/bytedance/sdk/component/c/b/a/g/d;Lcom/bytedance/sdk/component/c/b/a/g/d;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 208
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 209
    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 210
    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 212
    :catch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/c/b/a/g/a;->b(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 220
    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    .line 221
    invoke-virtual {p2, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 223
    :catch_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/c/b/a/g/e;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private static c()Z
    .locals 2

    const-string v0, "GMSCore_OpenSSL"

    .line 233
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "android.net.Network"

    .line 237
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/component/c/b/a/i/c;
    .locals 7

    :try_start_0
    const-string v0, "android.net.http.X509TrustManagerExtensions"

    .line 247
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 248
    const-class v3, Ljavax/net/ssl/X509TrustManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "checkServerTrusted"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    .line 250
    const-class v6, [Ljava/security/cert/X509Certificate;

    aput-object v6, v5, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v5, v1

    const/4 v1, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 252
    new-instance v1, Lcom/bytedance/sdk/component/c/b/a/g/a$a;

    invoke-direct {v1, v2, v0}, Lcom/bytedance/sdk/component/c/b/a/g/a$a;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 254
    :catch_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/c/b/a/g/e;->a(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/component/c/b/a/i/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/g/a;->f:Lcom/bytedance/sdk/component/c/b/a/g/a$c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/c/b/a/g/a$c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/g/a;->d:Lcom/bytedance/sdk/component/c/b/a/g/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 154
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/c/b/a/g/d;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/g/a;->d:Lcom/bytedance/sdk/component/c/b/a/g/d;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lcom/bytedance/sdk/component/c/b/a/g/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    if-eqz p1, :cond_2

    .line 157
    new-instance v1, Ljava/lang/String;

    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/c;->e:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_2
    return-object v1
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const/16 p1, 0xa

    if-eqz p3, :cond_1

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/4 p3, 0x0

    .line 166
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    if-ge p3, v1, :cond_4

    .line 167
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/lit16 v3, p3, 0xfa0

    .line 170
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 171
    invoke-virtual {p2, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const-string v4, "OkHttp"

    invoke-static {v0, v4, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-lt v3, v2, :cond_3

    add-int/lit8 p3, v3, 0x1

    goto :goto_1

    :cond_3
    move p3, v3

    goto :goto_2

    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/g/a;->f:Lcom/bytedance/sdk/component/c/b/a/g/a$c;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/c/b/a/g/a$c;->a(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x5

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, p2, p1, v0}, Lcom/bytedance/sdk/component/c/b/a/g/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Exception in connect"

    .line 78
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 91
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-ne p2, p3, :cond_0

    .line 92
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 94
    throw p2

    .line 96
    :cond_0
    throw p1

    :catch_1
    move-exception p1

    .line 85
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 87
    throw p2

    :catch_2
    move-exception p1

    .line 80
    invoke-static {p1}, Lcom/bytedance/sdk/component/c/b/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 81
    :cond_1
    throw p1
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/w;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 129
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    .line 131
    :try_start_0
    invoke-static {p1, v1}, Landroid/net/ssl/SSLSockets;->setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V

    .line 132
    new-instance v2, Ljavax/net/ssl/SNIHostName;

    invoke-direct {v2, p2}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p2

    .line 134
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V

    .line 135
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/c/b/a/g/a;->b:Lcom/bytedance/sdk/component/c/b/a/g/d;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lcom/bytedance/sdk/component/c/b/a/g/d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v2, p0, Lcom/bytedance/sdk/component/c/b/a/g/a;->c:Lcom/bytedance/sdk/component/c/b/a/g/d;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lcom/bytedance/sdk/component/c/b/a/g/d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/component/c/b/a/g/a;->e:Lcom/bytedance/sdk/component/c/b/a/g/d;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/g/d;->a(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-array p2, v1, [Ljava/lang/Object;

    .line 146
    invoke-static {p3}, Lcom/bytedance/sdk/component/c/b/a/g/a;->b(Ljava/util/List;)[B

    move-result-object p3

    aput-object p3, p2, v0

    .line 147
    iget-object p3, p0, Lcom/bytedance/sdk/component/c/b/a/g/a;->e:Lcom/bytedance/sdk/component/c/b/a/g/d;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/c/b/a/g/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public b(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/component/c/b/a/i/f;
    .locals 6

    .line 299
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 301
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 302
    new-instance v1, Lcom/bytedance/sdk/component/c/b/a/g/a$b;

    invoke-direct {v1, p1, v0}, Lcom/bytedance/sdk/component/c/b/a/g/a$b;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 304
    :catch_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/c/b/a/g/e;->b(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/component/c/b/a/i/f;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    const-string v0, "android.security.NetworkSecurityPolicy"

    .line 194
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 195
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 196
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 197
    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/component/c/b/a/g/a;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    const-string v0, "unable to determine cleartext support"

    .line 201
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/c/b/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 199
    :catch_3
    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/c/b/a/g/e;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
