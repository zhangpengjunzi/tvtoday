.class Lcom/bytedance/sdk/component/c/a/n$1;
.super Ljava/io/InputStream;
.source "RealBufferedSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/c/a/n;->f()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/c/a/n;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/c/a/n;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/bytedance/sdk/component/c/a/n$1;->a:Lcom/bytedance/sdk/component/c/a/n;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/a/n$1;->a:Lcom/bytedance/sdk/component/c/a/n;

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/c/a/n;->c:Z

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/a/n$1;->a:Lcom/bytedance/sdk/component/c/a/n;

    iget-object v0, v0, Lcom/bytedance/sdk/component/c/a/n;->a:Lcom/bytedance/sdk/component/c/a/c;

    iget-wide v0, v0, Lcom/bytedance/sdk/component/c/a/c;->b:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 501
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/a/n$1;->a:Lcom/bytedance/sdk/component/c/a/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/a/n;->close()V

    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/a/n$1;->a:Lcom/bytedance/sdk/component/c/a/n;

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/c/a/n;->c:Z

    if-nez v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/a/n$1;->a:Lcom/bytedance/sdk/component/c/a/n;

    iget-object v0, v0, Lcom/bytedance/sdk/component/c/a/n;->a:Lcom/bytedance/sdk/component/c/a/c;

    iget-wide v0, v0, Lcom/bytedance/sdk/component/c/a/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 480
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/a/n$1;->a:Lcom/bytedance/sdk/component/c/a/n;

    iget-object v0, v0, Lcom/bytedance/sdk/component/c/a/n;->b:Lcom/bytedance/sdk/component/c/a/s;

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/a/n$1;->a:Lcom/bytedance/sdk/component/c/a/n;

    iget-object v1, v1, Lcom/bytedance/sdk/component/c/a/n;->a:Lcom/bytedance/sdk/component/c/a/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/c/a/s;->a(Lcom/bytedance/sdk/component/c/a/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/a/n$1;->a:Lcom/bytedance/sdk/component/c/a/n;

    iget-object v0, v0, Lcom/bytedance/sdk/component/c/a/n;->a:Lcom/bytedance/sdk/component/c/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/a/c;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 478
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/a/n$1;->a:Lcom/bytedance/sdk/component/c/a/n;

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/c/a/n;->c:Z

    if-nez v0, :cond_1

    .line 489
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/component/c/a/u;->a(JJJ)V

    .line 491
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/a/n$1;->a:Lcom/bytedance/sdk/component/c/a/n;

    iget-object v0, v0, Lcom/bytedance/sdk/component/c/a/n;->a:Lcom/bytedance/sdk/component/c/a/c;

    iget-wide v0, v0, Lcom/bytedance/sdk/component/c/a/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 492
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/a/n$1;->a:Lcom/bytedance/sdk/component/c/a/n;

    iget-object v0, v0, Lcom/bytedance/sdk/component/c/a/n;->b:Lcom/bytedance/sdk/component/c/a/s;

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/a/n$1;->a:Lcom/bytedance/sdk/component/c/a/n;

    iget-object v1, v1, Lcom/bytedance/sdk/component/c/a/n;->a:Lcom/bytedance/sdk/component/c/a/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/c/a/s;->a(Lcom/bytedance/sdk/component/c/a/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/a/n$1;->a:Lcom/bytedance/sdk/component/c/a/n;

    iget-object v0, v0, Lcom/bytedance/sdk/component/c/a/n;->a:Lcom/bytedance/sdk/component/c/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/c/a/c;->a([BII)I

    move-result p1

    return p1

    .line 488
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/a/n$1;->a:Lcom/bytedance/sdk/component/c/a/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
