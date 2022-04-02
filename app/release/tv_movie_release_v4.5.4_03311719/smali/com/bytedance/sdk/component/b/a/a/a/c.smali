.class public Lcom/bytedance/sdk/component/b/a/a/a/c;
.super Lcom/bytedance/sdk/component/b/a/i;
.source "OkClient.java"


# instance fields
.field h:Lcom/bytedance/sdk/component/c/b/v;

.field i:Lcom/bytedance/sdk/component/b/a/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/b/a/i$a;)V
    .locals 4

    .line 19
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/b/a/i;-><init>(Lcom/bytedance/sdk/component/b/a/i$a;)V

    .line 20
    new-instance v0, Lcom/bytedance/sdk/component/c/b/v$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/c/b/v$a;-><init>()V

    iget-wide v1, p1, Lcom/bytedance/sdk/component/b/a/i$a;->b:J

    iget-object v3, p1, Lcom/bytedance/sdk/component/b/a/i$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/c/b/v$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/c/b/v$a;

    move-result-object v0

    iget-wide v1, p1, Lcom/bytedance/sdk/component/b/a/i$a;->f:J

    iget-object v3, p1, Lcom/bytedance/sdk/component/b/a/i$a;->g:Ljava/util/concurrent/TimeUnit;

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/c/b/v$a;->c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/c/b/v$a;

    move-result-object v0

    iget-wide v1, p1, Lcom/bytedance/sdk/component/b/a/i$a;->d:J

    iget-object v3, p1, Lcom/bytedance/sdk/component/b/a/i$a;->e:Ljava/util/concurrent/TimeUnit;

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/c/b/v$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/c/b/v$a;

    move-result-object v0

    .line 24
    iget-object v1, p1, Lcom/bytedance/sdk/component/b/a/i$a;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/bytedance/sdk/component/b/a/i$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 25
    iget-object p1, p1, Lcom/bytedance/sdk/component/b/a/i$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/b/a/g;

    .line 26
    new-instance v2, Lcom/bytedance/sdk/component/b/a/a/a/c$1;

    invoke-direct {v2, p0, v1}, Lcom/bytedance/sdk/component/b/a/a/a/c$1;-><init>(Lcom/bytedance/sdk/component/b/a/a/a/c;Lcom/bytedance/sdk/component/b/a/g;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/c/b/v$a;->a(Lcom/bytedance/sdk/component/c/b/t;)Lcom/bytedance/sdk/component/c/b/v$a;

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/v$a;->a()Lcom/bytedance/sdk/component/c/b/v;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/a/a/c;->h:Lcom/bytedance/sdk/component/c/b/v;

    .line 37
    new-instance v0, Lcom/bytedance/sdk/component/b/a/a/a/d;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/b/a/a/a/d;-><init>(Lcom/bytedance/sdk/component/c/b/v;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/c;->i:Lcom/bytedance/sdk/component/b/a/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/b/a/k;)Lcom/bytedance/sdk/component/b/a/b;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 51
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/component/c/b/y$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/c/b/y$a;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/c/b/y$a;->a(Ljava/lang/Object;)Lcom/bytedance/sdk/component/c/b/y$a;

    .line 53
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->b()Lcom/bytedance/sdk/component/b/a/f;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->b()Lcom/bytedance/sdk/component/b/a/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/b/a/f;->a()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/c/b/y$a;->a(Ljava/net/URL;)Lcom/bytedance/sdk/component/c/b/y$a;

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->f()Lcom/bytedance/sdk/component/b/a/l;

    move-result-object v2

    if-nez v2, :cond_2

    .line 57
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/component/c/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/c/b/z;)Lcom/bytedance/sdk/component/c/b/y$a;

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->c()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->f()Lcom/bytedance/sdk/component/b/a/l;

    move-result-object v2

    iget-object v2, v2, Lcom/bytedance/sdk/component/b/a/l;->a:Lcom/bytedance/sdk/component/b/a/h;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/b/a/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/u;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/b/u;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->f()Lcom/bytedance/sdk/component/b/a/l;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/sdk/component/b/a/l;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/c/b/z;->a(Lcom/bytedance/sdk/component/c/b/u;Ljava/lang/String;)Lcom/bytedance/sdk/component/c/b/z;

    move-result-object v2

    .line 59
    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/component/c/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/c/b/z;)Lcom/bytedance/sdk/component/c/b/y$a;

    .line 62
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->e()Lcom/bytedance/sdk/component/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->e()Lcom/bytedance/sdk/component/b/a/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/b/a/a;->a:Z

    if-eqz v0, :cond_3

    .line 63
    new-instance v0, Lcom/bytedance/sdk/component/c/b/d$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/c/b/d$a;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/d$a;->a()Lcom/bytedance/sdk/component/c/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/d$a;->c()Lcom/bytedance/sdk/component/c/b/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/c/b/y$a;->a(Lcom/bytedance/sdk/component/c/b/d;)Lcom/bytedance/sdk/component/c/b/y$a;

    .line 65
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->d()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 66
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->d()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/bytedance/sdk/component/c/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/c/b/y$a;

    goto :goto_1

    .line 72
    :cond_5
    new-instance p1, Lcom/bytedance/sdk/component/b/a/a/a/a;

    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/c;->h:Lcom/bytedance/sdk/component/c/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/c/b/y$a;->a()Lcom/bytedance/sdk/component/c/b/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/c/b/v;->a(Lcom/bytedance/sdk/component/c/b/y;)Lcom/bytedance/sdk/component/c/b/e;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/component/b/a/a/a/a;-><init>(Lcom/bytedance/sdk/component/c/b/e;)V

    return-object p1
.end method

.method public a()Lcom/bytedance/sdk/component/b/a/d;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/c;->i:Lcom/bytedance/sdk/component/b/a/d;

    return-object v0
.end method
