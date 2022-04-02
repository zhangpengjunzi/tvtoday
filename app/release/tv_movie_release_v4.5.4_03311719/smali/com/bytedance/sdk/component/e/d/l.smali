.class public Lcom/bytedance/sdk/component/e/d/l;
.super Lcom/bytedance/sdk/component/e/d/a;
.source "RawCacheVisitor.java"


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

    const-string v0, "raw_cache"

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/component/e/c/c;)V
    .locals 3

    .line 16
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->p()Lcom/bytedance/sdk/component/e/c/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->q()Lcom/bytedance/sdk/component/e/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/e/c/f;->b(Lcom/bytedance/sdk/component/e/b;)Lcom/bytedance/sdk/component/e/q;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/e/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/bytedance/sdk/component/e/d/f;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/e/d/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/e/c/c;->a(Lcom/bytedance/sdk/component/e/d/i;)Z

    return-void

    .line 25
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/component/e/d/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/e/d/b;-><init>([BLcom/bytedance/sdk/component/e/f;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/e/c/c;->a(Lcom/bytedance/sdk/component/e/d/i;)Z

    return-void
.end method
