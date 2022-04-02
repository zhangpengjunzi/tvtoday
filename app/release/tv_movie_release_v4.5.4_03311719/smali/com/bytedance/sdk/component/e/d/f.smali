.class public Lcom/bytedance/sdk/component/e/d/f;
.super Lcom/bytedance/sdk/component/e/d/a;
.source "DiskCacheVisitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "disk_cache"

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/component/e/c/c;)V
    .locals 4

    .line 16
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->g()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->p()Lcom/bytedance/sdk/component/e/c/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->q()Lcom/bytedance/sdk/component/e/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/e/c/f;->c(Lcom/bytedance/sdk/component/e/b;)Lcom/bytedance/sdk/component/e/c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 22
    new-instance v0, Lcom/bytedance/sdk/component/e/d/k;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/e/d/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/e/c/c;->a(Lcom/bytedance/sdk/component/e/d/i;)Z

    return-void

    .line 26
    :cond_0
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/component/e/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_1

    .line 30
    new-instance v0, Lcom/bytedance/sdk/component/e/d/k;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/e/d/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/e/c/c;->a(Lcom/bytedance/sdk/component/e/d/i;)Z

    return-void

    .line 34
    :cond_1
    new-instance v2, Lcom/bytedance/sdk/component/e/d/b;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/bytedance/sdk/component/e/d/b;-><init>([BLcom/bytedance/sdk/component/e/f;)V

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/e/c/c;->a(Lcom/bytedance/sdk/component/e/d/i;)Z

    .line 36
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->p()Lcom/bytedance/sdk/component/e/c/f;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->q()Lcom/bytedance/sdk/component/e/b;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/e/c/f;->b(Lcom/bytedance/sdk/component/e/b;)Lcom/bytedance/sdk/component/e/q;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/e/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
