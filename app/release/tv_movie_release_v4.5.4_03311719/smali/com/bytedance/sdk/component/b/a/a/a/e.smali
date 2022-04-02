.class public Lcom/bytedance/sdk/component/b/a/a/a/e;
.super Lcom/bytedance/sdk/component/b/a/k;
.source "OkRequest.java"


# instance fields
.field b:Lcom/bytedance/sdk/component/c/b/y;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/c/b/y;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/component/b/a/k;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->b:Lcom/bytedance/sdk/component/c/b/y;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->b:Lcom/bytedance/sdk/component/c/b/y;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/y;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/bytedance/sdk/component/b/a/f;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->b:Lcom/bytedance/sdk/component/c/b/y;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/y;->a()Lcom/bytedance/sdk/component/c/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/s;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/b/a/f;->c(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/f;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->b:Lcom/bytedance/sdk/component/c/b/y;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/y;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->b:Lcom/bytedance/sdk/component/c/b/y;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/y;->c()Lcom/bytedance/sdk/component/c/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/r;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/bytedance/sdk/component/b/a/a;
    .locals 1

    .line 44
    new-instance v0, Lcom/bytedance/sdk/component/b/a/a$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/b/a/a$a;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/a$a;->a()Lcom/bytedance/sdk/component/b/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/a$a;->b()Lcom/bytedance/sdk/component/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bytedance/sdk/component/b/a/k$a;
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/bytedance/sdk/component/b/a/k;->g()Lcom/bytedance/sdk/component/b/a/k$a;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/e;->b:Lcom/bytedance/sdk/component/c/b/y;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/y;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
