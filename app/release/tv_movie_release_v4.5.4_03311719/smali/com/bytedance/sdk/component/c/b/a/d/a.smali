.class public final Lcom/bytedance/sdk/component/c/b/a/d/a;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lcom/bytedance/sdk/component/c/b/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/c/b/a/d/a$f;,
        Lcom/bytedance/sdk/component/c/b/a/d/a$c;,
        Lcom/bytedance/sdk/component/c/b/a/d/a$e;,
        Lcom/bytedance/sdk/component/c/b/a/d/a$a;,
        Lcom/bytedance/sdk/component/c/b/a/d/a$b;,
        Lcom/bytedance/sdk/component/c/b/a/d/a$d;
    }
.end annotation


# instance fields
.field final a:Lcom/bytedance/sdk/component/c/b/v;

.field final b:Lcom/bytedance/sdk/component/c/b/a/b/g;

.field final c:Lcom/bytedance/sdk/component/c/a/e;

.field final d:Lcom/bytedance/sdk/component/c/a/d;

.field e:I

.field private f:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/c/b/v;Lcom/bytedance/sdk/component/c/b/a/b/g;Lcom/bytedance/sdk/component/c/a/e;Lcom/bytedance/sdk/component/c/a/d;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    const-wide/32 v0, 0x40000

    .line 91
    iput-wide v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->f:J

    .line 95
    iput-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->a:Lcom/bytedance/sdk/component/c/b/v;

    .line 96
    iput-object p2, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->b:Lcom/bytedance/sdk/component/c/b/a/b/g;

    .line 97
    iput-object p3, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->c:Lcom/bytedance/sdk/component/c/a/e;

    .line 98
    iput-object p4, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->d:Lcom/bytedance/sdk/component/c/a/d;

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->c:Lcom/bytedance/sdk/component/c/a/e;

    iget-wide v1, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->f:J

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/c/a/e;->e(J)Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-wide v1, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->f:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->f:J

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/bytedance/sdk/component/c/a/r;
    .locals 2

    .line 251
    iget v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 252
    iput v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    .line 253
    new-instance v0, Lcom/bytedance/sdk/component/c/b/a/d/a$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/c/b/a/d/a$d;-><init>(Lcom/bytedance/sdk/component/c/b/a/d/a;J)V

    return-object v0

    .line 251
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/bytedance/sdk/component/c/b/y;J)Lcom/bytedance/sdk/component/c/a/r;
    .locals 2

    const-string v0, "Transfer-Encoding"

    .line 103
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/c/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/c/b/a/d/a;->d()Lcom/bytedance/sdk/component/c/a/r;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/component/c/b/a/d/a;->a(J)Lcom/bytedance/sdk/component/c/a/r;

    move-result-object p1

    return-object p1

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/bytedance/sdk/component/c/b/s;)Lcom/bytedance/sdk/component/c/a/s;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 264
    iput v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    .line 265
    new-instance v0, Lcom/bytedance/sdk/component/c/b/a/d/a$c;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/c/b/a/d/a$c;-><init>(Lcom/bytedance/sdk/component/c/b/a/d/a;Lcom/bytedance/sdk/component/c/b/s;)V

    return-object v0

    .line 263
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)Lcom/bytedance/sdk/component/c/b/aa$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/c/b/a/d/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/b/a/c/k;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/b/a/c/k;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/bytedance/sdk/component/c/b/aa$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/c/b/aa$a;-><init>()V

    iget-object v2, v0, Lcom/bytedance/sdk/component/c/b/a/c/k;->a:Lcom/bytedance/sdk/component/c/b/w;

    .line 207
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/c/b/aa$a;->a(Lcom/bytedance/sdk/component/c/b/w;)Lcom/bytedance/sdk/component/c/b/aa$a;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/component/c/b/a/c/k;->b:I

    .line 208
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/c/b/aa$a;->a(I)Lcom/bytedance/sdk/component/c/b/aa$a;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/component/c/b/a/c/k;->c:Ljava/lang/String;

    .line 209
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/c/b/aa$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/b/aa$a;

    move-result-object v1

    .line 210
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/c/b/a/d/a;->c()Lcom/bytedance/sdk/component/c/b/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/c/b/aa$a;->a(Lcom/bytedance/sdk/component/c/b/r;)Lcom/bytedance/sdk/component/c/b/aa$a;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 212
    iget p1, v0, Lcom/bytedance/sdk/component/c/b/a/c/k;->b:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 p1, 0x4

    .line 216
    iput p1, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 220
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->b:Lcom/bytedance/sdk/component/c/b/a/b/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 222
    throw v0
.end method

.method public a(Lcom/bytedance/sdk/component/c/b/aa;)Lcom/bytedance/sdk/component/c/b/ab;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->b:Lcom/bytedance/sdk/component/c/b/a/b/g;

    iget-object v0, v0, Lcom/bytedance/sdk/component/c/b/a/b/g;->c:Lcom/bytedance/sdk/component/c/b/p;

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->b:Lcom/bytedance/sdk/component/c/b/a/b/g;

    iget-object v1, v1, Lcom/bytedance/sdk/component/c/b/a/b/g;->b:Lcom/bytedance/sdk/component/c/b/e;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/c/b/p;->f(Lcom/bytedance/sdk/component/c/b/e;)V

    const-string v0, "Content-Type"

    .line 143
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/c/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {p1}, Lcom/bytedance/sdk/component/c/b/a/c/e;->b(Lcom/bytedance/sdk/component/c/b/aa;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 146
    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/component/c/b/a/d/a;->b(J)Lcom/bytedance/sdk/component/c/a/s;

    move-result-object p1

    .line 147
    new-instance v3, Lcom/bytedance/sdk/component/c/b/a/c/h;

    invoke-static {p1}, Lcom/bytedance/sdk/component/c/a/l;->a(Lcom/bytedance/sdk/component/c/a/s;)Lcom/bytedance/sdk/component/c/a/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/bytedance/sdk/component/c/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/component/c/a/e;)V

    return-object v3

    :cond_0
    const-string v1, "Transfer-Encoding"

    .line 150
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/c/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/aa;->a()Lcom/bytedance/sdk/component/c/b/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/y;->a()Lcom/bytedance/sdk/component/c/b/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/c/b/a/d/a;->a(Lcom/bytedance/sdk/component/c/b/s;)Lcom/bytedance/sdk/component/c/a/s;

    move-result-object p1

    .line 152
    new-instance v1, Lcom/bytedance/sdk/component/c/b/a/c/h;

    invoke-static {p1}, Lcom/bytedance/sdk/component/c/a/l;->a(Lcom/bytedance/sdk/component/c/a/s;)Lcom/bytedance/sdk/component/c/a/e;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/bytedance/sdk/component/c/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/component/c/a/e;)V

    return-object v1

    .line 155
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/c/b/a/c/e;->a(Lcom/bytedance/sdk/component/c/b/aa;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p0, v4, v5}, Lcom/bytedance/sdk/component/c/b/a/d/a;->b(J)Lcom/bytedance/sdk/component/c/a/s;

    move-result-object p1

    .line 158
    new-instance v1, Lcom/bytedance/sdk/component/c/b/a/c/h;

    invoke-static {p1}, Lcom/bytedance/sdk/component/c/a/l;->a(Lcom/bytedance/sdk/component/c/a/s;)Lcom/bytedance/sdk/component/c/a/e;

    move-result-object p1

    invoke-direct {v1, v0, v4, v5, p1}, Lcom/bytedance/sdk/component/c/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/component/c/a/e;)V

    return-object v1

    .line 161
    :cond_2
    new-instance p1, Lcom/bytedance/sdk/component/c/b/a/c/h;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/c/b/a/d/a;->e()Lcom/bytedance/sdk/component/c/a/s;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/a/l;->a(Lcom/bytedance/sdk/component/c/a/s;)Lcom/bytedance/sdk/component/c/a/e;

    move-result-object v1

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/bytedance/sdk/component/c/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/component/c/a/e;)V

    return-object p1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->d:Lcom/bytedance/sdk/component/c/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/c/a/d;->flush()V

    return-void
.end method

.method a(Lcom/bytedance/sdk/component/c/a/i;)V
    .locals 2

    .line 282
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/a/i;->a()Lcom/bytedance/sdk/component/c/a/t;

    move-result-object v0

    .line 283
    sget-object v1, Lcom/bytedance/sdk/component/c/a/t;->c:Lcom/bytedance/sdk/component/c/a/t;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/c/a/i;->a(Lcom/bytedance/sdk/component/c/a/t;)Lcom/bytedance/sdk/component/c/a/i;

    .line 284
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/a/t;->f()Lcom/bytedance/sdk/component/c/a/t;

    .line 285
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/a/t;->e()Lcom/bytedance/sdk/component/c/a/t;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/c/b/r;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->d:Lcom/bytedance/sdk/component/c/a/d;

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/c/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/d;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/component/c/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/d;

    const/4 p2, 0x0

    .line 187
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/r;->a()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    .line 188
    iget-object v2, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->d:Lcom/bytedance/sdk/component/c/a/d;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/c/b/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/c/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/d;

    move-result-object v2

    const-string v3, ": "

    .line 189
    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/c/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/d;

    move-result-object v2

    .line 190
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/c/b/r;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/c/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/d;

    move-result-object v2

    .line 191
    invoke-interface {v2, v0}, Lcom/bytedance/sdk/component/c/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/d;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->d:Lcom/bytedance/sdk/component/c/a/d;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/c/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/d;

    const/4 p1, 0x1

    .line 194
    iput p1, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    return-void

    .line 185
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a(Lcom/bytedance/sdk/component/c/b/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->b:Lcom/bytedance/sdk/component/c/b/a/b/g;

    .line 136
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/a/b/g;->b()Lcom/bytedance/sdk/component/c/b/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/a/b/c;->a()Lcom/bytedance/sdk/component/c/b/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/ac;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 135
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/c/b/a/c/i;->a(Lcom/bytedance/sdk/component/c/b/y;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/y;->c()Lcom/bytedance/sdk/component/c/b/r;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/c/b/a/d/a;->a(Lcom/bytedance/sdk/component/c/b/r;Ljava/lang/String;)V

    return-void
.end method

.method public b(J)Lcom/bytedance/sdk/component/c/a/s;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    iget v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 258
    iput v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    .line 259
    new-instance v0, Lcom/bytedance/sdk/component/c/b/a/d/a$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/c/b/a/d/a$e;-><init>(Lcom/bytedance/sdk/component/c/b/a/d/a;J)V

    return-object v0

    .line 257
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->d:Lcom/bytedance/sdk/component/c/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/c/a/d;->flush()V

    return-void
.end method

.method public c()Lcom/bytedance/sdk/component/c/b/r;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    new-instance v0, Lcom/bytedance/sdk/component/c/b/r$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/c/b/r$a;-><init>()V

    .line 238
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/c/b/a/d/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    sget-object v2, Lcom/bytedance/sdk/component/c/b/a/a;->a:Lcom/bytedance/sdk/component/c/b/a/a;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/component/c/b/a/a;->a(Lcom/bytedance/sdk/component/c/b/r$a;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/r$a;->a()Lcom/bytedance/sdk/component/c/b/r;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/component/c/a/r;
    .locals 3

    .line 245
    iget v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 246
    iput v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    .line 247
    new-instance v0, Lcom/bytedance/sdk/component/c/b/a/d/a$b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/c/b/a/d/a$b;-><init>(Lcom/bytedance/sdk/component/c/b/a/d/a;)V

    return-object v0

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lcom/bytedance/sdk/component/c/a/s;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    iget v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 270
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->b:Lcom/bytedance/sdk/component/c/b/a/b/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 271
    iput v1, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    .line 272
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/a/b/g;->d()V

    .line 273
    new-instance v0, Lcom/bytedance/sdk/component/c/b/a/d/a$f;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/c/b/a/d/a$f;-><init>(Lcom/bytedance/sdk/component/c/b/a/d/a;)V

    return-object v0

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/sdk/component/c/b/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
