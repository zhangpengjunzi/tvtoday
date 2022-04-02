.class public final Lcom/bytedance/sdk/component/c/b/a/e/f;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Lcom/bytedance/sdk/component/c/b/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/c/b/a/e/f$a;
    }
.end annotation


# static fields
.field private static final b:Lcom/bytedance/sdk/component/c/a/f;

.field private static final c:Lcom/bytedance/sdk/component/c/a/f;

.field private static final d:Lcom/bytedance/sdk/component/c/a/f;

.field private static final e:Lcom/bytedance/sdk/component/c/a/f;

.field private static final f:Lcom/bytedance/sdk/component/c/a/f;

.field private static final g:Lcom/bytedance/sdk/component/c/a/f;

.field private static final h:Lcom/bytedance/sdk/component/c/a/f;

.field private static final i:Lcom/bytedance/sdk/component/c/a/f;

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/a/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/bytedance/sdk/component/c/b/a/b/g;

.field private final l:Lcom/bytedance/sdk/component/c/b/v;

.field private final m:Lcom/bytedance/sdk/component/c/b/t$a;

.field private final n:Lcom/bytedance/sdk/component/c/b/a/e/g;

.field private o:Lcom/bytedance/sdk/component/c/b/a/e/i;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/c/b/a/e/f;->b:Lcom/bytedance/sdk/component/c/a/f;

    const-string v0, "host"

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/c/b/a/e/f;->c:Lcom/bytedance/sdk/component/c/a/f;

    const-string v0, "keep-alive"

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/c/b/a/e/f;->d:Lcom/bytedance/sdk/component/c/a/f;

    const-string v0, "proxy-connection"

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/c/b/a/e/f;->e:Lcom/bytedance/sdk/component/c/a/f;

    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/c/b/a/e/f;->f:Lcom/bytedance/sdk/component/c/a/f;

    const-string v0, "te"

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/c/b/a/e/f;->g:Lcom/bytedance/sdk/component/c/a/f;

    const-string v0, "encoding"

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/c/b/a/e/f;->h:Lcom/bytedance/sdk/component/c/a/f;

    const-string v0, "upgrade"

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/c/b/a/e/f;->i:Lcom/bytedance/sdk/component/c/a/f;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/bytedance/sdk/component/c/a/f;

    sget-object v2, Lcom/bytedance/sdk/component/c/b/a/e/f;->b:Lcom/bytedance/sdk/component/c/a/f;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/sdk/component/c/b/a/e/f;->c:Lcom/bytedance/sdk/component/c/a/f;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/bytedance/sdk/component/c/b/a/e/f;->d:Lcom/bytedance/sdk/component/c/a/f;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/bytedance/sdk/component/c/b/a/e/f;->e:Lcom/bytedance/sdk/component/c/a/f;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lcom/bytedance/sdk/component/c/b/a/e/f;->g:Lcom/bytedance/sdk/component/c/a/f;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lcom/bytedance/sdk/component/c/b/a/e/f;->f:Lcom/bytedance/sdk/component/c/a/f;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lcom/bytedance/sdk/component/c/b/a/e/f;->h:Lcom/bytedance/sdk/component/c/a/f;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/e/c;->c:Lcom/bytedance/sdk/component/c/a/f;

    const/16 v10, 0x8

    aput-object v0, v1, v10

    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/e/c;->d:Lcom/bytedance/sdk/component/c/a/f;

    const/16 v11, 0x9

    aput-object v0, v1, v11

    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/e/c;->e:Lcom/bytedance/sdk/component/c/a/f;

    const/16 v11, 0xa

    aput-object v0, v1, v11

    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/e/c;->f:Lcom/bytedance/sdk/component/c/a/f;

    const/16 v11, 0xb

    aput-object v0, v1, v11

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/c/b/a/e/f;->j:Ljava/util/List;

    new-array v0, v10, [Lcom/bytedance/sdk/component/c/a/f;

    sget-object v1, Lcom/bytedance/sdk/component/c/b/a/e/f;->b:Lcom/bytedance/sdk/component/c/a/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/sdk/component/c/b/a/e/f;->c:Lcom/bytedance/sdk/component/c/a/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/sdk/component/c/b/a/e/f;->d:Lcom/bytedance/sdk/component/c/a/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bytedance/sdk/component/c/b/a/e/f;->e:Lcom/bytedance/sdk/component/c/a/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bytedance/sdk/component/c/b/a/e/f;->g:Lcom/bytedance/sdk/component/c/a/f;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bytedance/sdk/component/c/b/a/e/f;->f:Lcom/bytedance/sdk/component/c/a/f;

    aput-object v1, v0, v8

    sget-object v1, Lcom/bytedance/sdk/component/c/b/a/e/f;->h:Lcom/bytedance/sdk/component/c/a/f;

    aput-object v1, v0, v9

    sget-object v1, Lcom/bytedance/sdk/component/c/b/a/e/f;->i:Lcom/bytedance/sdk/component/c/a/f;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/b/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/c/b/a/e/f;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/c/b/v;Lcom/bytedance/sdk/component/c/b/t$a;Lcom/bytedance/sdk/component/c/b/a/b/g;Lcom/bytedance/sdk/component/c/b/a/e/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->l:Lcom/bytedance/sdk/component/c/b/v;

    iput-object p2, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->m:Lcom/bytedance/sdk/component/c/b/t$a;

    iput-object p3, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->a:Lcom/bytedance/sdk/component/c/b/a/b/g;

    iput-object p4, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->n:Lcom/bytedance/sdk/component/c/b/a/e/g;

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/bytedance/sdk/component/c/b/aa$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/a/e/c;",
            ">;)",
            "Lcom/bytedance/sdk/component/c/b/aa$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/c/b/r$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/c/b/r$a;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/component/c/b/a/e/c;

    if-nez v5, :cond_0

    if-eqz v4, :cond_2

    iget v5, v4, Lcom/bytedance/sdk/component/c/b/a/c/k;->b:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    new-instance v0, Lcom/bytedance/sdk/component/c/b/r$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/c/b/r$a;-><init>()V

    move-object v4, v2

    goto :goto_1

    :cond_0
    iget-object v6, v5, Lcom/bytedance/sdk/component/c/b/a/e/c;->g:Lcom/bytedance/sdk/component/c/a/f;

    iget-object v5, v5, Lcom/bytedance/sdk/component/c/b/a/e/c;->h:Lcom/bytedance/sdk/component/c/a/f;

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/c/a/f;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/bytedance/sdk/component/c/b/a/e/c;->b:Lcom/bytedance/sdk/component/c/a/f;

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/component/c/a/f;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP/1.1 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/component/c/b/a/c/k;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/b/a/c/k;

    move-result-object v4

    goto :goto_1

    :cond_1
    sget-object v7, Lcom/bytedance/sdk/component/c/b/a/e/f;->k:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/bytedance/sdk/component/c/b/a/a;->a:Lcom/bytedance/sdk/component/c/b/a/a;

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/c/a/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v0, v6, v5}, Lcom/bytedance/sdk/component/c/b/a/a;->a(Lcom/bytedance/sdk/component/c/b/r$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    new-instance p0, Lcom/bytedance/sdk/component/c/b/aa$a;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/c/b/aa$a;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/component/c/b/w;->d:Lcom/bytedance/sdk/component/c/b/w;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/c/b/aa$a;->a(Lcom/bytedance/sdk/component/c/b/w;)Lcom/bytedance/sdk/component/c/b/aa$a;

    move-result-object p0

    iget v1, v4, Lcom/bytedance/sdk/component/c/b/a/c/k;->b:I

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/c/b/aa$a;->a(I)Lcom/bytedance/sdk/component/c/b/aa$a;

    move-result-object p0

    iget-object v1, v4, Lcom/bytedance/sdk/component/c/b/a/c/k;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/c/b/aa$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/b/aa$a;

    move-result-object p0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/r$a;->a()Lcom/bytedance/sdk/component/c/b/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/c/b/aa$a;->a(Lcom/bytedance/sdk/component/c/b/r;)Lcom/bytedance/sdk/component/c/b/aa$a;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static b(Lcom/bytedance/sdk/component/c/b/y;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/c/b/y;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/a/e/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/c/b/y;->c()Lcom/bytedance/sdk/component/c/b/r;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/r;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/bytedance/sdk/component/c/b/a/e/c;

    sget-object v3, Lcom/bytedance/sdk/component/c/b/a/e/c;->c:Lcom/bytedance/sdk/component/c/a/f;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/c/b/y;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/component/c/b/a/e/c;-><init>(Lcom/bytedance/sdk/component/c/a/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/bytedance/sdk/component/c/b/a/e/c;

    sget-object v3, Lcom/bytedance/sdk/component/c/b/a/e/c;->d:Lcom/bytedance/sdk/component/c/a/f;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/c/b/y;->a()Lcom/bytedance/sdk/component/c/b/s;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/component/c/b/a/c/i;->a(Lcom/bytedance/sdk/component/c/b/s;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/component/c/b/a/e/c;-><init>(Lcom/bytedance/sdk/component/c/a/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/c/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/bytedance/sdk/component/c/b/a/e/c;

    sget-object v4, Lcom/bytedance/sdk/component/c/b/a/e/c;->f:Lcom/bytedance/sdk/component/c/a/f;

    invoke-direct {v3, v4, v2}, Lcom/bytedance/sdk/component/c/b/a/e/c;-><init>(Lcom/bytedance/sdk/component/c/a/f;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/component/c/b/a/e/c;

    sget-object v3, Lcom/bytedance/sdk/component/c/b/a/e/c;->e:Lcom/bytedance/sdk/component/c/a/f;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/c/b/y;->a()Lcom/bytedance/sdk/component/c/b/s;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/c/b/s;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/bytedance/sdk/component/c/b/a/e/c;-><init>(Lcom/bytedance/sdk/component/c/a/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/r;->a()I

    move-result v2

    :goto_0
    if-ge p0, v2, :cond_2

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/c/b/r;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/component/c/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/c/a/f;

    move-result-object v3

    sget-object v4, Lcom/bytedance/sdk/component/c/b/a/e/f;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/bytedance/sdk/component/c/b/a/e/c;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/c/b/r;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/bytedance/sdk/component/c/b/a/e/c;-><init>(Lcom/bytedance/sdk/component/c/a/f;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :goto_0
    :pswitch_0
    const/16 v0, 0x49

    const/16 v1, 0x60

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_1
    packed-switch v1, :pswitch_data_1

    :pswitch_2
    packed-switch v1, :pswitch_data_2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-char v1, p0, v0

    xor-int/2addr v1, v0

    int-to-char v1, v1

    aput-char v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :pswitch_4
    const/16 v0, 0x4a

    const/16 v1, 0x37

    goto :goto_1

    :goto_3
    const/16 v0, 0x48

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/c/b/y;J)Lcom/bytedance/sdk/component/c/a/r;
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->o:Lcom/bytedance/sdk/component/c/b/a/e/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/a/e/i;->h()Lcom/bytedance/sdk/component/c/a/r;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lcom/bytedance/sdk/component/c/b/aa$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->o:Lcom/bytedance/sdk/component/c/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/a/e/i;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/b/a/e/f;->a(Ljava/util/List;)Lcom/bytedance/sdk/component/c/b/aa$a;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/bytedance/sdk/component/c/b/a/a;->a:Lcom/bytedance/sdk/component/c/b/a/a;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/c/b/a/a;->a(Lcom/bytedance/sdk/component/c/b/aa$a;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/component/c/b/aa;)Lcom/bytedance/sdk/component/c/b/ab;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->a:Lcom/bytedance/sdk/component/c/b/a/b/g;

    iget-object v0, v0, Lcom/bytedance/sdk/component/c/b/a/b/g;->c:Lcom/bytedance/sdk/component/c/b/p;

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->a:Lcom/bytedance/sdk/component/c/b/a/b/g;

    iget-object v1, v1, Lcom/bytedance/sdk/component/c/b/a/b/g;->b:Lcom/bytedance/sdk/component/c/b/e;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/c/b/p;->f(Lcom/bytedance/sdk/component/c/b/e;)V

    new-instance v0, Lcom/bytedance/sdk/component/c/b/a/c/h;

    const-string v1, "Content-Type"

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/c/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/bytedance/sdk/component/c/b/a/c/e;->a(Lcom/bytedance/sdk/component/c/b/aa;)J

    move-result-wide v2

    new-instance p1, Lcom/bytedance/sdk/component/c/b/a/e/f$a;

    iget-object v4, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->o:Lcom/bytedance/sdk/component/c/b/a/e/i;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/c/b/a/e/i;->g()Lcom/bytedance/sdk/component/c/a/s;

    move-result-object v4

    invoke-direct {p1, p0, v4}, Lcom/bytedance/sdk/component/c/b/a/e/f$a;-><init>(Lcom/bytedance/sdk/component/c/b/a/e/f;Lcom/bytedance/sdk/component/c/a/s;)V

    invoke-static {p1}, Lcom/bytedance/sdk/component/c/a/l;->a(Lcom/bytedance/sdk/component/c/a/s;)Lcom/bytedance/sdk/component/c/a/e;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/bytedance/sdk/component/c/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/component/c/a/e;)V

    return-object v0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->n:Lcom/bytedance/sdk/component/c/b/a/e/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/a/e/g;->b()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/c/b/y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->o:Lcom/bytedance/sdk/component/c/b/a/e/i;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/y;->d()Lcom/bytedance/sdk/component/c/b/z;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/c/b/a/e/f;->b(Lcom/bytedance/sdk/component/c/b/y;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->n:Lcom/bytedance/sdk/component/c/b/a/e/g;

    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/component/c/b/a/e/g;->a(Ljava/util/List;Z)Lcom/bytedance/sdk/component/c/b/a/e/i;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->o:Lcom/bytedance/sdk/component/c/b/a/e/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/a/e/i;->e()Lcom/bytedance/sdk/component/c/a/t;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->m:Lcom/bytedance/sdk/component/c/b/t$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/c/b/t$a;->c()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/component/c/a/t;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/c/a/t;

    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->o:Lcom/bytedance/sdk/component/c/b/a/e/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/a/e/i;->f()Lcom/bytedance/sdk/component/c/a/t;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->m:Lcom/bytedance/sdk/component/c/b/t$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/c/b/t$a;->d()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/component/c/a/t;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/c/a/t;

    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/f;->o:Lcom/bytedance/sdk/component/c/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/a/e/i;->h()Lcom/bytedance/sdk/component/c/a/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/c/a/r;->close()V

    return-void
.end method
