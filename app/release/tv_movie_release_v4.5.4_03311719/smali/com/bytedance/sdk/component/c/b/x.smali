.class final Lcom/bytedance/sdk/component/c/b/x;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lcom/bytedance/sdk/component/c/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/c/b/x$a;
    }
.end annotation


# instance fields
.field final a:Lcom/bytedance/sdk/component/c/b/v;

.field final b:Lcom/bytedance/sdk/component/c/b/a/c/j;

.field final c:Lcom/bytedance/sdk/component/c/b/y;

.field final d:Z

.field private e:Lcom/bytedance/sdk/component/c/b/p;

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/c/b/v;Lcom/bytedance/sdk/component/c/b/y;Z)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/component/c/b/x;->a:Lcom/bytedance/sdk/component/c/b/v;

    .line 53
    iput-object p2, p0, Lcom/bytedance/sdk/component/c/b/x;->c:Lcom/bytedance/sdk/component/c/b/y;

    .line 54
    iput-boolean p3, p0, Lcom/bytedance/sdk/component/c/b/x;->d:Z

    .line 55
    new-instance p2, Lcom/bytedance/sdk/component/c/b/a/c/j;

    invoke-direct {p2, p1, p3}, Lcom/bytedance/sdk/component/c/b/a/c/j;-><init>(Lcom/bytedance/sdk/component/c/b/v;Z)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/c/b/x;->b:Lcom/bytedance/sdk/component/c/b/a/c/j;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/c/b/x;)Lcom/bytedance/sdk/component/c/b/p;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/bytedance/sdk/component/c/b/x;->e:Lcom/bytedance/sdk/component/c/b/p;

    return-object p0
.end method

.method static a(Lcom/bytedance/sdk/component/c/b/v;Lcom/bytedance/sdk/component/c/b/y;Z)Lcom/bytedance/sdk/component/c/b/x;
    .locals 1

    .line 60
    new-instance v0, Lcom/bytedance/sdk/component/c/b/x;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/c/b/x;-><init>(Lcom/bytedance/sdk/component/c/b/v;Lcom/bytedance/sdk/component/c/b/y;Z)V

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/c/b/v;->x()Lcom/bytedance/sdk/component/c/b/p$a;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/c/b/p$a;->a(Lcom/bytedance/sdk/component/c/b/e;)Lcom/bytedance/sdk/component/c/b/p;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/sdk/component/c/b/x;->e:Lcom/bytedance/sdk/component/c/b/p;

    return-object v0
.end method

.method private h()V
    .locals 2

    .line 95
    invoke-static {}, Lcom/bytedance/sdk/component/c/b/a/g/e;->b()Lcom/bytedance/sdk/component/c/b/a/g/e;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/c/b/a/g/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/x;->b:Lcom/bytedance/sdk/component/c/b/a/c/j;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/c/b/a/c/j;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/c/b/aa;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/x;->f:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/x;->f:Z

    .line 75
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    invoke-direct {p0}, Lcom/bytedance/sdk/component/c/b/x;->h()V

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/x;->e:Lcom/bytedance/sdk/component/c/b/p;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/c/b/p;->a(Lcom/bytedance/sdk/component/c/b/e;)V

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/x;->a:Lcom/bytedance/sdk/component/c/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/v;->s()Lcom/bytedance/sdk/component/c/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/c/b/n;->a(Lcom/bytedance/sdk/component/c/b/x;)V

    .line 80
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/c/b/x;->g()Lcom/bytedance/sdk/component/c/b/aa;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    iget v1, v0, Lcom/bytedance/sdk/component/c/b/aa;->c:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/x;->a:Lcom/bytedance/sdk/component/c/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/c/b/v;->s()Lcom/bytedance/sdk/component/c/b/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/c/b/n;->b(Lcom/bytedance/sdk/component/c/b/x;)V

    return-object v0

    .line 83
    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    iget-object v0, v0, Lcom/bytedance/sdk/component/c/b/aa;->d:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/x;->e:Lcom/bytedance/sdk/component/c/b/p;

    invoke-virtual {v1, p0, v0}, Lcom/bytedance/sdk/component/c/b/p;->a(Lcom/bytedance/sdk/component/c/b/e;Ljava/io/IOException;)V

    .line 88
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/x;->a:Lcom/bytedance/sdk/component/c/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/c/b/v;->s()Lcom/bytedance/sdk/component/c/b/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/c/b/n;->b(Lcom/bytedance/sdk/component/c/b/x;)V

    throw v0

    .line 73
    :cond_2
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 75
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public a(Lcom/bytedance/sdk/component/c/b/f;)V
    .locals 2

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/x;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/x;->f:Z

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-direct {p0}, Lcom/bytedance/sdk/component/c/b/x;->h()V

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/x;->e:Lcom/bytedance/sdk/component/c/b/p;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/c/b/p;->a(Lcom/bytedance/sdk/component/c/b/e;)V

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/x;->a:Lcom/bytedance/sdk/component/c/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/v;->s()Lcom/bytedance/sdk/component/c/b/n;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/c/b/x$a;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/c/b/x$a;-><init>(Lcom/bytedance/sdk/component/c/b/x;Lcom/bytedance/sdk/component/c/b/f;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/c/b/n;->a(Lcom/bytedance/sdk/component/c/b/x$a;)V

    return-void

    .line 102
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 104
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public synthetic b()Lcom/bytedance/sdk/component/c/b/e;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/c/b/x;->d()Lcom/bytedance/sdk/component/c/b/x;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/x;->b:Lcom/bytedance/sdk/component/c/b/a/c/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/a/c/j;->a()Z

    move-result v0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/c/b/x;->d()Lcom/bytedance/sdk/component/c/b/x;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/component/c/b/x;
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/x;->a:Lcom/bytedance/sdk/component/c/b/v;

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/x;->c:Lcom/bytedance/sdk/component/c/b/y;

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/c/b/x;->d:Z

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/c/b/x;->a(Lcom/bytedance/sdk/component/c/b/v;Lcom/bytedance/sdk/component/c/b/y;Z)Lcom/bytedance/sdk/component/c/b/x;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/c/b/x;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/c/b/x;->d:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/c/b/x;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/x;->c:Lcom/bytedance/sdk/component/c/b/y;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/y;->a()Lcom/bytedance/sdk/component/c/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/s;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method g()Lcom/bytedance/sdk/component/c/b/aa;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/x;->a:Lcom/bytedance/sdk/component/c/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/v;->v()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/x;->b:Lcom/bytedance/sdk/component/c/b/a/c/j;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v0, Lcom/bytedance/sdk/component/c/b/a/c/a;

    iget-object v2, p0, Lcom/bytedance/sdk/component/c/b/x;->a:Lcom/bytedance/sdk/component/c/b/v;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/c/b/v;->f()Lcom/bytedance/sdk/component/c/b/m;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/component/c/b/a/c/a;-><init>(Lcom/bytedance/sdk/component/c/b/m;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v0, Lcom/bytedance/sdk/component/c/b/a/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/component/c/b/x;->a:Lcom/bytedance/sdk/component/c/b/v;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/c/b/v;->g()Lcom/bytedance/sdk/component/c/b/a/a/e;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/component/c/b/a/a/a;-><init>(Lcom/bytedance/sdk/component/c/b/a/a/e;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v0, Lcom/bytedance/sdk/component/c/b/a/b/a;

    iget-object v2, p0, Lcom/bytedance/sdk/component/c/b/x;->a:Lcom/bytedance/sdk/component/c/b/v;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/component/c/b/a/b/a;-><init>(Lcom/bytedance/sdk/component/c/b/v;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/x;->d:Z

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/x;->a:Lcom/bytedance/sdk/component/c/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/v;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/c/b/a/c/b;

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/c/b/x;->d:Z

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/component/c/b/a/c/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v12, Lcom/bytedance/sdk/component/c/b/a/c/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bytedance/sdk/component/c/b/x;->c:Lcom/bytedance/sdk/component/c/b/y;

    iget-object v8, p0, Lcom/bytedance/sdk/component/c/b/x;->e:Lcom/bytedance/sdk/component/c/b/p;

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/x;->a:Lcom/bytedance/sdk/component/c/b/v;

    .line 212
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/v;->a()I

    move-result v9

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/x;->a:Lcom/bytedance/sdk/component/c/b/v;

    .line 213
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/v;->b()I

    move-result v10

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/x;->a:Lcom/bytedance/sdk/component/c/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/v;->c()I

    move-result v11

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lcom/bytedance/sdk/component/c/b/a/c/g;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/c/b/a/b/g;Lcom/bytedance/sdk/component/c/b/a/c/c;Lcom/bytedance/sdk/component/c/b/a/b/c;ILcom/bytedance/sdk/component/c/b/y;Lcom/bytedance/sdk/component/c/b/e;Lcom/bytedance/sdk/component/c/b/p;III)V

    .line 215
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/x;->c:Lcom/bytedance/sdk/component/c/b/y;

    invoke-interface {v12, v0}, Lcom/bytedance/sdk/component/c/b/t$a;->a(Lcom/bytedance/sdk/component/c/b/y;)Lcom/bytedance/sdk/component/c/b/aa;

    move-result-object v0

    return-object v0
.end method
