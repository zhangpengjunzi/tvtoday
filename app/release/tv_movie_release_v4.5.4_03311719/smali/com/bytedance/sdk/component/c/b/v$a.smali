.class public final Lcom/bytedance/sdk/component/c/b/v$a;
.super Ljava/lang/Object;
.source "OkHttpClients.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/c/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field A:I

.field a:Lcom/bytedance/sdk/component/c/b/n;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/w;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/k;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/t;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/t;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/bytedance/sdk/component/c/b/p$a;

.field h:Ljava/net/ProxySelector;

.field i:Lcom/bytedance/sdk/component/c/b/m;

.field j:Lcom/bytedance/sdk/component/c/b/c;

.field k:Lcom/bytedance/sdk/component/c/b/a/a/e;

.field l:Ljavax/net/SocketFactory;

.field m:Ljavax/net/ssl/SSLSocketFactory;

.field n:Lcom/bytedance/sdk/component/c/b/a/i/c;

.field o:Ljavax/net/ssl/HostnameVerifier;

.field p:Lcom/bytedance/sdk/component/c/b/g;

.field q:Lcom/bytedance/sdk/component/c/b/b;

.field r:Lcom/bytedance/sdk/component/c/b/b;

.field s:Lcom/bytedance/sdk/component/c/b/j;

.field t:Lcom/bytedance/sdk/component/c/b/o;

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->e:Ljava/util/List;

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->f:Ljava/util/List;

    .line 497
    new-instance v0, Lcom/bytedance/sdk/component/c/b/n;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/c/b/n;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->a:Lcom/bytedance/sdk/component/c/b/n;

    .line 498
    sget-object v0, Lcom/bytedance/sdk/component/c/b/v;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->c:Ljava/util/List;

    .line 499
    sget-object v0, Lcom/bytedance/sdk/component/c/b/v;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->d:Ljava/util/List;

    .line 500
    sget-object v0, Lcom/bytedance/sdk/component/c/b/p;->a:Lcom/bytedance/sdk/component/c/b/p;

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/b/p;->a(Lcom/bytedance/sdk/component/c/b/p;)Lcom/bytedance/sdk/component/c/b/p$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->g:Lcom/bytedance/sdk/component/c/b/p$a;

    .line 501
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->h:Ljava/net/ProxySelector;

    .line 502
    sget-object v0, Lcom/bytedance/sdk/component/c/b/m;->a:Lcom/bytedance/sdk/component/c/b/m;

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->i:Lcom/bytedance/sdk/component/c/b/m;

    .line 503
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->l:Ljavax/net/SocketFactory;

    .line 504
    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/i/e;->a:Lcom/bytedance/sdk/component/c/b/a/i/e;

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 505
    sget-object v0, Lcom/bytedance/sdk/component/c/b/g;->a:Lcom/bytedance/sdk/component/c/b/g;

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->p:Lcom/bytedance/sdk/component/c/b/g;

    .line 506
    sget-object v0, Lcom/bytedance/sdk/component/c/b/b;->a:Lcom/bytedance/sdk/component/c/b/b;

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->q:Lcom/bytedance/sdk/component/c/b/b;

    .line 507
    sget-object v0, Lcom/bytedance/sdk/component/c/b/b;->a:Lcom/bytedance/sdk/component/c/b/b;

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->r:Lcom/bytedance/sdk/component/c/b/b;

    .line 508
    new-instance v0, Lcom/bytedance/sdk/component/c/b/j;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/c/b/j;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->s:Lcom/bytedance/sdk/component/c/b/j;

    .line 509
    sget-object v0, Lcom/bytedance/sdk/component/c/b/o;->a:Lcom/bytedance/sdk/component/c/b/o;

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->t:Lcom/bytedance/sdk/component/c/b/o;

    const/4 v0, 0x1

    .line 510
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->u:Z

    .line 511
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->v:Z

    .line 512
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->w:Z

    const/16 v0, 0x2710

    .line 513
    iput v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->x:I

    .line 514
    iput v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->y:I

    .line 515
    iput v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->z:I

    const/4 v0, 0x0

    .line 516
    iput v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->A:I

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/c/b/v$a;
    .locals 1

    const-string v0, "timeout"

    .line 555
    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/c/b/a/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/c/b/v$a;->x:I

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/component/c/b/t;)Lcom/bytedance/sdk/component/c/b/v$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 902
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/v$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 901
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lcom/bytedance/sdk/component/c/b/v;
    .locals 1

    .line 948
    new-instance v0, Lcom/bytedance/sdk/component/c/b/v;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/c/b/v;-><init>(Lcom/bytedance/sdk/component/c/b/v$a;)V

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/c/b/v$a;
    .locals 1

    const-string v0, "timeout"

    .line 564
    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/c/b/a/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/c/b/v$a;->y:I

    return-object p0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/c/b/v$a;
    .locals 1

    const-string v0, "timeout"

    .line 573
    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/c/b/a/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/c/b/v$a;->z:I

    return-object p0
.end method
