.class final Lcom/bytedance/sdk/component/c/b/a/d/a$b;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lcom/bytedance/sdk/component/c/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/c/b/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/c/b/a/d/a;

.field private final b:Lcom/bytedance/sdk/component/c/a/i;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/c/b/a/d/a;)V
    .locals 1

    .line 342
    iput-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->a:Lcom/bytedance/sdk/component/c/b/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    new-instance p1, Lcom/bytedance/sdk/component/c/a/i;

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->a:Lcom/bytedance/sdk/component/c/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/component/c/b/a/d/a;->d:Lcom/bytedance/sdk/component/c/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/c/a/d;->a()Lcom/bytedance/sdk/component/c/a/t;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/component/c/a/i;-><init>(Lcom/bytedance/sdk/component/c/a/t;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->b:Lcom/bytedance/sdk/component/c/a/i;

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/c/a/t;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->b:Lcom/bytedance/sdk/component/c/a/i;

    return-object v0
.end method

.method public a_(Lcom/bytedance/sdk/component/c/a/c;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->c:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->a:Lcom/bytedance/sdk/component/c/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/component/c/b/a/d/a;->d:Lcom/bytedance/sdk/component/c/a/d;

    invoke-interface {v0, p2, p3}, Lcom/bytedance/sdk/component/c/a/d;->k(J)Lcom/bytedance/sdk/component/c/a/d;

    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->a:Lcom/bytedance/sdk/component/c/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/component/c/b/a/d/a;->d:Lcom/bytedance/sdk/component/c/a/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/c/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/d;

    .line 357
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->a:Lcom/bytedance/sdk/component/c/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/component/c/b/a/d/a;->d:Lcom/bytedance/sdk/component/c/a/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/c/a/d;->a_(Lcom/bytedance/sdk/component/c/a/c;J)V

    .line 358
    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->a:Lcom/bytedance/sdk/component/c/b/a/d/a;

    iget-object p1, p1, Lcom/bytedance/sdk/component/c/b/a/d/a;->d:Lcom/bytedance/sdk/component/c/a/d;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/c/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/d;

    return-void

    .line 352
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 370
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 371
    :try_start_1
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->c:Z

    .line 372
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->a:Lcom/bytedance/sdk/component/c/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/component/c/b/a/d/a;->d:Lcom/bytedance/sdk/component/c/a/d;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/c/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/d;

    .line 373
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->a:Lcom/bytedance/sdk/component/c/b/a/d/a;

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->b:Lcom/bytedance/sdk/component/c/a/i;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/c/b/a/d/a;->a(Lcom/bytedance/sdk/component/c/a/i;)V

    .line 374
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->a:Lcom/bytedance/sdk/component/c/b/a/d/a;

    const/4 v1, 0x3

    iput v1, v0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 363
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 364
    monitor-exit p0

    return-void

    .line 365
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;->a:Lcom/bytedance/sdk/component/c/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/component/c/b/a/d/a;->d:Lcom/bytedance/sdk/component/c/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/c/a/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
