.class Lcom/umeng/commonsdk/statistics/proto/d$a;
.super Lcom/umeng/analytics/pro/cc;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cc<",
        "Lcom/umeng/commonsdk/statistics/proto/d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 387
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cc;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/d$1;)V
    .locals 0

    .line 387
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 387
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d$a;->b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/d;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 392
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->j()Lcom/umeng/analytics/pro/bx;

    .line 394
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->l()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    .line 395
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bn;->b:B

    if-nez v1, :cond_1

    .line 440
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->k()V

    .line 444
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 448
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->l()V

    return-void

    .line 445
    :cond_0
    new-instance p1, Lcom/umeng/analytics/pro/bt;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 398
    :cond_1
    iget-short v1, v0, Lcom/umeng/analytics/pro/bn;->c:S

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 436
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bn;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_2

    .line 428
    :cond_2
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bn;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    .line 429
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    .line 430
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/d;->c(Z)V

    goto :goto_2

    .line 432
    :cond_3
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bn;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_2

    .line 420
    :cond_4
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bn;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 421
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    .line 422
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/d;->b(Z)V

    goto :goto_2

    .line 424
    :cond_5
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bn;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_2

    .line 400
    :cond_6
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bn;->b:B

    const/16 v4, 0xd

    if-ne v1, v4, :cond_8

    .line 402
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->n()Lcom/umeng/analytics/pro/bp;

    move-result-object v0

    .line 403
    new-instance v1, Ljava/util/HashMap;

    iget v4, v0, Lcom/umeng/analytics/pro/bp;->c:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    const/4 v1, 0x0

    .line 404
    :goto_1
    iget v2, v0, Lcom/umeng/analytics/pro/bp;->c:I

    if-ge v1, v2, :cond_7

    .line 407
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->z()Ljava/lang/String;

    move-result-object v2

    .line 408
    new-instance v4, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-direct {v4}, Lcom/umeng/commonsdk/statistics/proto/e;-><init>()V

    .line 409
    invoke-virtual {v4, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->read(Lcom/umeng/analytics/pro/bs;)V

    .line 410
    iget-object v5, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    :cond_7
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->o()V

    .line 414
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/d;->a(Z)V

    goto :goto_2

    .line 416
    :cond_8
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bn;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    .line 438
    :goto_2
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->m()V

    goto/16 :goto_0
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 387
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d$a;->a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/d;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 453
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->l()V

    .line 455
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/d;->m()Lcom/umeng/analytics/pro/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bx;)V

    .line 456
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 457
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/d;->n()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 459
    new-instance v0, Lcom/umeng/analytics/pro/bp;

    const/16 v1, 0xb

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    .line 460
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/bp;-><init>(BBI)V

    .line 459
    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;)V

    .line 461
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 462
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/umeng/analytics/pro/bs;->a(Ljava/lang/String;)V

    .line 463
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->write(Lcom/umeng/analytics/pro/bs;)V

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->e()V

    .line 467
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 469
    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/d;->o()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 470
    iget v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(I)V

    .line 471
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 472
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 473
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/d;->p()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 474
    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/bs;->a(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 477
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->d()V

    .line 478
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->b()V

    return-void
.end method
