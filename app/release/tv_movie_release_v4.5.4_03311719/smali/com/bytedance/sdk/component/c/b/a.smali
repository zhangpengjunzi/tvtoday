.class public final Lcom/bytedance/sdk/component/c/b/a;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final a:Lcom/bytedance/sdk/component/c/b/s;

.field final b:Lcom/bytedance/sdk/component/c/b/o;

.field final c:Ljavax/net/SocketFactory;

.field final d:Lcom/bytedance/sdk/component/c/b/b;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/w;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/k;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:Ljava/net/Proxy;

.field final i:Ljavax/net/ssl/SSLSocketFactory;

.field final j:Ljavax/net/ssl/HostnameVerifier;

.field final k:Lcom/bytedance/sdk/component/c/b/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/bytedance/sdk/component/c/b/o;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/bytedance/sdk/component/c/b/g;Lcom/bytedance/sdk/component/c/b/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/bytedance/sdk/component/c/b/o;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/bytedance/sdk/component/c/b/g;",
            "Lcom/bytedance/sdk/component/c/b/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/w;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/k;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/c/b/s$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/c/b/s$a;-><init>()V

    if-eqz p5, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/c/b/s$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/b/s$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/c/b/s$a;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/b/s$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/c/b/s$a;->a(I)Lcom/bytedance/sdk/component/c/b/s$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/s$a;->c()Lcom/bytedance/sdk/component/c/b/s;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/c/b/a;->a:Lcom/bytedance/sdk/component/c/b/s;

    if-eqz p3, :cond_6

    iput-object p3, p0, Lcom/bytedance/sdk/component/c/b/a;->b:Lcom/bytedance/sdk/component/c/b/o;

    if-eqz p4, :cond_5

    iput-object p4, p0, Lcom/bytedance/sdk/component/c/b/a;->c:Ljavax/net/SocketFactory;

    if-eqz p8, :cond_4

    iput-object p8, p0, Lcom/bytedance/sdk/component/c/b/a;->d:Lcom/bytedance/sdk/component/c/b/b;

    if-eqz p10, :cond_3

    invoke-static {p10}, Lcom/bytedance/sdk/component/c/b/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/c/b/a;->e:Ljava/util/List;

    if-eqz p11, :cond_2

    invoke-static {p11}, Lcom/bytedance/sdk/component/c/b/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/c/b/a;->f:Ljava/util/List;

    if-eqz p12, :cond_1

    iput-object p12, p0, Lcom/bytedance/sdk/component/c/b/a;->g:Ljava/net/ProxySelector;

    iput-object p9, p0, Lcom/bytedance/sdk/component/c/b/a;->h:Ljava/net/Proxy;

    iput-object p5, p0, Lcom/bytedance/sdk/component/c/b/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, Lcom/bytedance/sdk/component/c/b/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, Lcom/bytedance/sdk/component/c/b/a;->k:Lcom/bytedance/sdk/component/c/b/g;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxySelector == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connectionSpecs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "protocols == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxyAuthenticator == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "socketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/c/b/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->a:Lcom/bytedance/sdk/component/c/b/s;

    return-object v0
.end method

.method a(Lcom/bytedance/sdk/component/c/b/a;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->b:Lcom/bytedance/sdk/component/c/b/o;

    iget-object v1, p1, Lcom/bytedance/sdk/component/c/b/a;->b:Lcom/bytedance/sdk/component/c/b/o;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->d:Lcom/bytedance/sdk/component/c/b/b;

    iget-object v1, p1, Lcom/bytedance/sdk/component/c/b/a;->d:Lcom/bytedance/sdk/component/c/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/bytedance/sdk/component/c/b/a;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->f:Ljava/util/List;

    iget-object v1, p1, Lcom/bytedance/sdk/component/c/b/a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->g:Ljava/net/ProxySelector;

    iget-object v1, p1, Lcom/bytedance/sdk/component/c/b/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->h:Ljava/net/Proxy;

    iget-object v1, p1, Lcom/bytedance/sdk/component/c/b/a;->h:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/c/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lcom/bytedance/sdk/component/c/b/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/c/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lcom/bytedance/sdk/component/c/b/a;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/c/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->k:Lcom/bytedance/sdk/component/c/b/g;

    iget-object v1, p1, Lcom/bytedance/sdk/component/c/b/a;->k:Lcom/bytedance/sdk/component/c/b/g;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/c/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/c/b/a;->a()Lcom/bytedance/sdk/component/c/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/s;->h()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/a;->a()Lcom/bytedance/sdk/component/c/b/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/s;->h()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Lcom/bytedance/sdk/component/c/b/o;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->b:Lcom/bytedance/sdk/component/c/b/o;

    return-object v0
.end method

.method public c()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->c:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/component/c/b/b;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->d:Lcom/bytedance/sdk/component/c/b/b;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/bytedance/sdk/component/c/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->a:Lcom/bytedance/sdk/component/c/b/s;

    check-cast p1, Lcom/bytedance/sdk/component/c/b/a;

    iget-object v1, p1, Lcom/bytedance/sdk/component/c/b/a;->a:Lcom/bytedance/sdk/component/c/b/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/c/b/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/c/b/a;->a(Lcom/bytedance/sdk/component/c/b/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public h()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->h:Ljava/net/Proxy;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->a:Lcom/bytedance/sdk/component/c/b/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/s;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->b:Lcom/bytedance/sdk/component/c/b/o;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->d:Lcom/bytedance/sdk/component/c/b/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->h:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->k:Lcom/bytedance/sdk/component/c/b/g;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/g;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v1, v2

    return v1
.end method

.method public i()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public k()Lcom/bytedance/sdk/component/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a;->k:Lcom/bytedance/sdk/component/c/b/g;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a;->a:Lcom/bytedance/sdk/component/c/b/s;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/c/b/s;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a;->a:Lcom/bytedance/sdk/component/c/b/s;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/c/b/s;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a;->h:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a;->h:Ljava/net/Proxy;

    goto :goto_0

    :cond_0
    const-string v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a;->g:Ljava/net/ProxySelector;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
