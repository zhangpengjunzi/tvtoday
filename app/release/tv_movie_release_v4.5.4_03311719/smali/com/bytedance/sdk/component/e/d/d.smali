.class public Lcom/bytedance/sdk/component/e/d/d;
.super Lcom/bytedance/sdk/component/e/d/a;
.source "CachePolicyVisitor.java"


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

    const-string v0, "cache_policy"

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/component/e/c/c;)V
    .locals 2

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->q()Lcom/bytedance/sdk/component/e/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    new-instance v0, Lcom/bytedance/sdk/component/e/d/j;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/e/d/j;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/e/c/c;->a(Lcom/bytedance/sdk/component/e/d/i;)Z

    return-void

    .line 26
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Lcom/bytedance/sdk/component/e/d/f;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/e/d/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/e/c/c;->a(Lcom/bytedance/sdk/component/e/d/i;)Z

    return-void

    .line 32
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/e/d/k;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/e/d/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/e/c/c;->a(Lcom/bytedance/sdk/component/e/d/i;)Z

    return-void
.end method
