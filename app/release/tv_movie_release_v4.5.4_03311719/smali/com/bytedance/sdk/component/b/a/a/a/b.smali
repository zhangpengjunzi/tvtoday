.class public Lcom/bytedance/sdk/component/b/a/a/a/b;
.super Ljava/lang/Object;
.source "OkChain.java"

# interfaces
.implements Lcom/bytedance/sdk/component/b/a/g$a;


# instance fields
.field a:Lcom/bytedance/sdk/component/c/b/t$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/c/b/t$a;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/a/a/b;->a:Lcom/bytedance/sdk/component/c/b/t$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/b/a/k;
    .locals 2

    .line 18
    new-instance v0, Lcom/bytedance/sdk/component/b/a/a/a/e;

    iget-object v1, p0, Lcom/bytedance/sdk/component/b/a/a/a/b;->a:Lcom/bytedance/sdk/component/c/b/t$a;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/c/b/t$a;->a()Lcom/bytedance/sdk/component/c/b/y;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/b/a/a/a/e;-><init>(Lcom/bytedance/sdk/component/c/b/y;)V

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/component/b/a/k;)Lcom/bytedance/sdk/component/b/a/m;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/b;->a:Lcom/bytedance/sdk/component/c/b/t$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/c/b/t$a;->a()Lcom/bytedance/sdk/component/c/b/y;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/bytedance/sdk/component/b/a/a/a/f;

    iget-object v2, p0, Lcom/bytedance/sdk/component/b/a/a/a/b;->a:Lcom/bytedance/sdk/component/c/b/t$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/y;->f()Lcom/bytedance/sdk/component/c/b/y$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->b()Lcom/bytedance/sdk/component/b/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/f;->a()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/c/b/y$a;->a(Ljava/net/URL;)Lcom/bytedance/sdk/component/c/b/y$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/y$a;->a()Lcom/bytedance/sdk/component/c/b/y;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/bytedance/sdk/component/c/b/t$a;->a(Lcom/bytedance/sdk/component/c/b/y;)Lcom/bytedance/sdk/component/c/b/aa;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/component/b/a/a/a/f;-><init>(Lcom/bytedance/sdk/component/c/b/aa;)V

    return-object v1
.end method
