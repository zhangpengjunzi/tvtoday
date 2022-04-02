.class public Lcom/bytedance/sdk/component/b/a/a/a/g;
.super Lcom/bytedance/sdk/component/b/a/n;
.source "OkResponseBody.java"


# instance fields
.field a:Lcom/bytedance/sdk/component/c/b/ab;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/c/b/ab;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/component/b/a/n;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/a/a/g;->a:Lcom/bytedance/sdk/component/c/b/ab;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/g;->a:Lcom/bytedance/sdk/component/c/b/ab;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/ab;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/g;->a:Lcom/bytedance/sdk/component/c/b/ab;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/ab;->f()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public c()Ljava/io/InputStream;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/g;->a:Lcom/bytedance/sdk/component/c/b/ab;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/ab;->c()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/g;->a:Lcom/bytedance/sdk/component/c/b/ab;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/ab;->close()V

    return-void
.end method

.method public d()[B
    .locals 1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/g;->a:Lcom/bytedance/sdk/component/c/b/ab;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/ab;->e()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
