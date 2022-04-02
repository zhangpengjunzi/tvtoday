.class public Lcom/bytedance/sdk/component/e/d/m;
.super Lcom/bytedance/sdk/component/e/d/a;
.source "SuccessVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/component/e/d/a;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lcom/bytedance/sdk/component/e/f;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/bytedance/sdk/component/e/f;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/bytedance/sdk/component/e/f;",
            "Z)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/d/a;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bytedance/sdk/component/e/d/m;->a:Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lcom/bytedance/sdk/component/e/d/m;->b:Lcom/bytedance/sdk/component/e/f;

    .line 33
    iput-boolean p3, p0, Lcom/bytedance/sdk/component/e/d/m;->c:Z

    return-void
.end method

.method private b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/d/m;->b:Lcom/bytedance/sdk/component/e/f;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/f;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private b(Lcom/bytedance/sdk/component/e/c/c;)V
    .locals 5

    .line 72
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->f()Lcom/bytedance/sdk/component/e/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Lcom/bytedance/sdk/component/e/c/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/e/c/d;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/component/e/d/m;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/d/m;->b()Ljava/util/Map;

    move-result-object v3

    iget-boolean v4, p0, Lcom/bytedance/sdk/component/e/d/m;->c:Z

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/bytedance/sdk/component/e/c/d;->a(Lcom/bytedance/sdk/component/e/c/c;Ljava/lang/Object;Ljava/util/Map;Z)Lcom/bytedance/sdk/component/e/c/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/e/n;->a(Lcom/bytedance/sdk/component/e/j;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "success"

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/component/e/c/c;)V
    .locals 4

    .line 38
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->r()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->p()Lcom/bytedance/sdk/component/e/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/c/f;->f()Ljava/util/Map;

    move-result-object v1

    .line 42
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 45
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/e/d/m;->b(Lcom/bytedance/sdk/component/e/c/c;)V

    goto :goto_1

    .line 48
    :cond_0
    monitor-enter v2

    .line 49
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/e/c/c;

    .line 50
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/e/d/m;->b(Lcom/bytedance/sdk/component/e/c/c;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 54
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    monitor-exit v2

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
