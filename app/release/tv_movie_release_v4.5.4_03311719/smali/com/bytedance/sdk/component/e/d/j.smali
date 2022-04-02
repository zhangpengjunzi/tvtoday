.class public Lcom/bytedance/sdk/component/e/d/j;
.super Lcom/bytedance/sdk/component/e/d/a;
.source "MemoryCacheVisitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "memory_cache"

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/component/e/c/c;)V
    .locals 4

    .line 18
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->i()Lcom/bytedance/sdk/component/e/t;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/bytedance/sdk/component/e/t;->b:Lcom/bytedance/sdk/component/e/t;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/bytedance/sdk/component/e/t;->a:Lcom/bytedance/sdk/component/e/t;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->p()Lcom/bytedance/sdk/component/e/c/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->q()Lcom/bytedance/sdk/component/e/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/e/c/f;->a(Lcom/bytedance/sdk/component/e/b;)Lcom/bytedance/sdk/component/e/p;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/e/p;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    .line 26
    new-instance v0, Lcom/bytedance/sdk/component/e/d/l;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/e/d/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/e/c/c;->a(Lcom/bytedance/sdk/component/e/d/i;)Z

    goto :goto_2

    .line 28
    :cond_2
    new-instance v1, Lcom/bytedance/sdk/component/e/d/m;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/e/d/m;-><init>(Ljava/lang/Object;Lcom/bytedance/sdk/component/e/f;Z)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/e/c/c;->a(Lcom/bytedance/sdk/component/e/d/i;)Z

    :goto_2
    return-void
.end method
