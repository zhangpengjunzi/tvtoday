.class public Lcom/bytedance/sdk/component/b/a/k$a;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/b/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/component/b/a/a;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Lcom/bytedance/sdk/component/b/a/f;

.field d:Ljava/lang/String;

.field e:Ljava/lang/Object;

.field f:Lcom/bytedance/sdk/component/b/a/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/b/a/k$a;->b:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/component/b/a/k;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->b()Lcom/bytedance/sdk/component/b/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/b/a/k$a;->c:Lcom/bytedance/sdk/component/b/a/f;

    .line 62
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/b/a/k$a;->d:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/b/a/k$a;->b:Ljava/util/Map;

    .line 64
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/b/a/k$a;->e:Ljava/lang/Object;

    .line 65
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->f()Lcom/bytedance/sdk/component/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/b/a/k$a;->f:Lcom/bytedance/sdk/component/b/a/l;

    .line 66
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->e()Lcom/bytedance/sdk/component/b/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/k$a;->a:Lcom/bytedance/sdk/component/b/a/a;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bytedance/sdk/component/b/a/l;)Lcom/bytedance/sdk/component/b/a/k$a;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/k$a;->d:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/bytedance/sdk/component/b/a/k$a;->f:Lcom/bytedance/sdk/component/b/a/l;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/b/a/k$a;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/component/b/a/k$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/b/a/l;)Lcom/bytedance/sdk/component/b/a/k$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/component/b/a/a;)Lcom/bytedance/sdk/component/b/a/k$a;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/k$a;->a:Lcom/bytedance/sdk/component/b/a/a;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/component/b/a/f;)Lcom/bytedance/sdk/component/b/a/k$a;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/k$a;->c:Lcom/bytedance/sdk/component/b/a/f;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/component/b/a/l;)Lcom/bytedance/sdk/component/b/a/k$a;
    .locals 1

    const-string v0, "POST"

    .line 108
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/component/b/a/k$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/b/a/l;)Lcom/bytedance/sdk/component/b/a/k$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Lcom/bytedance/sdk/component/b/a/k$a;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/k$a;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/k$a;
    .locals 0

    .line 76
    invoke-static {p1}, Lcom/bytedance/sdk/component/b/a/f;->c(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/b/a/k$a;->a(Lcom/bytedance/sdk/component/b/a/f;)Lcom/bytedance/sdk/component/b/a/k$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/k$a;
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/b/a/k$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/k$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/k$a;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/k$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/k$a;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/k$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lcom/bytedance/sdk/component/b/a/k;
    .locals 1

    .line 112
    new-instance v0, Lcom/bytedance/sdk/component/b/a/k$a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/b/a/k$a$1;-><init>(Lcom/bytedance/sdk/component/b/a/k$a;)V

    return-object v0
.end method
