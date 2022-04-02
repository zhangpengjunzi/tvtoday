.class public Lcom/bytedance/sdk/component/b/a/a/a/f;
.super Lcom/bytedance/sdk/component/b/a/m;
.source "OkResponse.java"


# instance fields
.field public a:Lcom/bytedance/sdk/component/c/b/aa;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/c/b/aa;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/bytedance/sdk/component/b/a/m;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Lcom/bytedance/sdk/component/c/b/aa;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Lcom/bytedance/sdk/component/c/b/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/aa;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Lcom/bytedance/sdk/component/c/b/aa;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/c/b/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()J
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Lcom/bytedance/sdk/component/c/b/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/aa;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Lcom/bytedance/sdk/component/c/b/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/aa;->c()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Lcom/bytedance/sdk/component/c/b/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/aa;->close()V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Lcom/bytedance/sdk/component/c/b/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/aa;->d()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Lcom/bytedance/sdk/component/c/b/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/aa;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/component/b/a/n;
    .locals 2

    .line 48
    new-instance v0, Lcom/bytedance/sdk/component/b/a/a/a/g;

    iget-object v1, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Lcom/bytedance/sdk/component/c/b/aa;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/c/b/aa;->h()Lcom/bytedance/sdk/component/c/b/ab;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/b/a/a/a/g;-><init>(Lcom/bytedance/sdk/component/c/b/ab;)V

    return-object v0
.end method

.method public g()Lcom/bytedance/sdk/component/b/a/e;
    .locals 2

    .line 53
    new-instance v0, Lcom/bytedance/sdk/component/b/a/e;

    iget-object v1, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Lcom/bytedance/sdk/component/c/b/aa;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/c/b/aa;->g()Lcom/bytedance/sdk/component/c/b/r;

    move-result-object v1

    iget-object v1, v1, Lcom/bytedance/sdk/component/c/b/r;->a:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/b/a/e;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public h()Lcom/bytedance/sdk/component/b/a/j;
    .locals 1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Lcom/bytedance/sdk/component/c/b/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/aa;->b()Lcom/bytedance/sdk/component/c/b/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/w;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/b/a/j;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/j;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 81
    :catch_0
    sget-object v0, Lcom/bytedance/sdk/component/b/a/j;->b:Lcom/bytedance/sdk/component/b/a/j;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Lcom/bytedance/sdk/component/c/b/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/aa;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
