.class final Lcom/bytedance/sdk/component/c/b/a/e/h;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/c/b/a/e/h$b;,
        Lcom/bytedance/sdk/component/c/b/a/e/h$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field final b:Lcom/bytedance/sdk/component/c/b/a/e/d$a;

.field private final c:Lcom/bytedance/sdk/component/c/a/e;

.field private final d:Lcom/bytedance/sdk/component/c/b/a/e/h$a;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/bytedance/sdk/component/c/b/a/e/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/c/b/a/e/h;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/component/c/a/e;Z)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    .line 74
    iput-boolean p2, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->e:Z

    .line 75
    new-instance p2, Lcom/bytedance/sdk/component/c/b/a/e/h$a;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/h$a;-><init>(Lcom/bytedance/sdk/component/c/a/e;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->d:Lcom/bytedance/sdk/component/c/b/a/e/h$a;

    .line 76
    new-instance p1, Lcom/bytedance/sdk/component/c/b/a/e/d$a;

    const/16 v0, 0x1000

    invoke-direct {p1, v0, p2}, Lcom/bytedance/sdk/component/c/b/a/e/d$a;-><init>(ILcom/bytedance/sdk/component/c/a/s;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->b:Lcom/bytedance/sdk/component/c/b/a/e/d$a;

    return-void
.end method

.method static a(IBS)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 416
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method static a(Lcom/bytedance/sdk/component/c/a/e;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    invoke-interface {p0}, Lcom/bytedance/sdk/component/c/a/e;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 408
    invoke-interface {p0}, Lcom/bytedance/sdk/component/c/a/e;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 409
    invoke-interface {p0}, Lcom/bytedance/sdk/component/c/a/e;->h()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private a(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/a/e/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->d:Lcom/bytedance/sdk/component/c/b/a/e/h$a;

    iput p1, v0, Lcom/bytedance/sdk/component/c/b/a/e/h$a;->d:I

    iput p1, v0, Lcom/bytedance/sdk/component/c/b/a/e/h$a;->a:I

    .line 193
    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->d:Lcom/bytedance/sdk/component/c/b/a/e/h$a;

    iput-short p2, p1, Lcom/bytedance/sdk/component/c/b/a/e/h$a;->e:S

    .line 194
    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->d:Lcom/bytedance/sdk/component/c/b/a/e/h$a;

    iput-byte p3, p1, Lcom/bytedance/sdk/component/c/b/a/e/h$a;->b:B

    .line 195
    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->d:Lcom/bytedance/sdk/component/c/b/a/e/h$a;

    iput p4, p1, Lcom/bytedance/sdk/component/c/b/a/e/h$a;->c:I

    .line 199
    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->b:Lcom/bytedance/sdk/component/c/b/a/e/d$a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/a/e/d$a;->a()V

    .line 200
    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->b:Lcom/bytedance/sdk/component/c/b/a/e/d$a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/a/e/d$a;->b()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bytedance/sdk/component/c/b/a/e/h$b;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/c/a/e;->j()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    .line 232
    iget-object v3, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {v3}, Lcom/bytedance/sdk/component/c/a/e;->h()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 233
    invoke-interface {p1, p2, v0, v3, v1}, Lcom/bytedance/sdk/component/c/b/a/e/h$b;->a(IIIZ)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/c/a/e;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_2

    .line 179
    invoke-direct {p0, p1, p4}, Lcom/bytedance/sdk/component/c/b/a/e/h;->a(Lcom/bytedance/sdk/component/c/b/a/e/h$b;I)V

    add-int/lit8 p2, p2, -0x5

    .line 183
    :cond_2
    invoke-static {p2, p3, v0}, Lcom/bytedance/sdk/component/c/b/a/e/h;->a(IBS)I

    move-result p2

    .line 185
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/bytedance/sdk/component/c/b/a/e/h;->a(ISBI)Ljava/util/List;

    move-result-object p2

    const/4 p3, -0x1

    .line 187
    invoke-interface {p1, v1, p4, p3, p2}, Lcom/bytedance/sdk/component/c/b/a/e/h$b;->a(ZIILjava/util/List;)V

    return-void

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 172
    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private b(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_2

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/c/a/e;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 215
    :cond_2
    invoke-static {p2, p3, v0}, Lcom/bytedance/sdk/component/c/b/a/e/h;->a(IBS)I

    move-result p2

    .line 217
    iget-object p3, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {p1, v1, p4, p3, p2}, Lcom/bytedance/sdk/component/c/b/a/e/h$b;->a(ZILcom/bytedance/sdk/component/c/a/e;I)V

    .line 218
    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    int-to-long p2, v0

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/component/c/a/e;->h(J)V

    return-void

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 211
    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    .line 205
    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private c(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    if-eqz p4, :cond_0

    .line 225
    invoke-direct {p0, p1, p4}, Lcom/bytedance/sdk/component/c/b/a/e/h;->a(Lcom/bytedance/sdk/component/c/b/a/e/h$b;I)V

    return-void

    :cond_0
    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    .line 224
    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 223
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private d(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    if-eqz p4, :cond_1

    .line 240
    iget-object p2, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/c/a/e;->j()I

    move-result p2

    .line 241
    invoke-static {p2}, Lcom/bytedance/sdk/component/c/b/a/e/b;->a(I)Lcom/bytedance/sdk/component/c/b/a/e/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 245
    invoke-interface {p1, p4, v1}, Lcom/bytedance/sdk/component/c/b/a/e/h$b;->a(ILcom/bytedance/sdk/component/c/b/a/e/b;)V

    return-void

    :cond_0
    new-array p1, p3, [Ljava/lang/Object;

    .line 243
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    .line 239
    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, p3, [Ljava/lang/Object;

    .line 238
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private e(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_c

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    .line 253
    invoke-interface {p1}, Lcom/bytedance/sdk/component/c/b/a/e/h$b;->a()V

    return-void

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 252
    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 257
    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_b

    .line 258
    new-instance p3, Lcom/bytedance/sdk/component/c/b/a/e/n;

    invoke-direct {p3}, Lcom/bytedance/sdk/component/c/b/a/e/n;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_a

    .line 260
    iget-object v2, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {v2}, Lcom/bytedance/sdk/component/c/a/e;->i()S

    move-result v2

    .line 261
    iget-object v3, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {v3}, Lcom/bytedance/sdk/component/c/a/e;->j()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq v2, v4, :cond_7

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    if-eq v2, v5, :cond_4

    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_3

    const v4, 0xffffff

    if-gt v3, v4, :cond_3

    goto :goto_1

    :cond_3
    new-array p1, p4, [Ljava/lang/Object;

    .line 282
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_4
    const/4 v2, 0x7

    if-ltz v3, :cond_5

    goto :goto_1

    :cond_5
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 277
    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_6
    const/4 v2, 0x4

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_9

    if-ne v3, p4, :cond_8

    goto :goto_1

    :cond_8
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 268
    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 290
    :cond_9
    :goto_1
    invoke-virtual {p3, v2, v3}, Lcom/bytedance/sdk/component/c/b/a/e/n;->a(II)Lcom/bytedance/sdk/component/c/b/a/e/n;

    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 292
    :cond_a
    invoke-interface {p1, v0, p3}, Lcom/bytedance/sdk/component/c/b/a/e/h$b;->a(ZLcom/bytedance/sdk/component/c/b/a/e/n;)V

    return-void

    :cond_b
    new-array p1, p4, [Ljava/lang/Object;

    .line 257
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_c
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    .line 250
    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private f(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/c/a/e;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/c/a/e;->j()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    .line 303
    invoke-static {p2, p3, v0}, Lcom/bytedance/sdk/component/c/b/a/e/h;->a(IBS)I

    move-result p2

    .line 304
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/bytedance/sdk/component/c/b/a/e/h;->a(ISBI)Ljava/util/List;

    move-result-object p2

    .line 305
    invoke-interface {p1, p4, v1, p2}, Lcom/bytedance/sdk/component/c/b/a/e/h$b;->a(IILjava/util/List;)V

    return-void

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 298
    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private g(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p2, v2, :cond_2

    if-nez p4, :cond_1

    .line 312
    iget-object p2, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/c/a/e;->j()I

    move-result p2

    .line 313
    iget-object p4, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {p4}, Lcom/bytedance/sdk/component/c/a/e;->j()I

    move-result p4

    and-int/2addr p3, v1

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 315
    :cond_0
    invoke-interface {p1, v0, p2, p4}, Lcom/bytedance/sdk/component/c/b/a/e/h$b;->a(ZII)V

    return-void

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_PING streamId != 0"

    .line 311
    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    .line 310
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_PING length != 8: %s"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private h(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lt p2, v0, :cond_3

    if-nez p4, :cond_2

    .line 322
    iget-object p4, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {p4}, Lcom/bytedance/sdk/component/c/a/e;->j()I

    move-result p4

    .line 323
    iget-object v2, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {v2}, Lcom/bytedance/sdk/component/c/a/e;->j()I

    move-result v2

    sub-int/2addr p2, v0

    .line 325
    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/e/b;->a(I)Lcom/bytedance/sdk/component/c/b/a/e/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 329
    sget-object p3, Lcom/bytedance/sdk/component/c/a/f;->b:Lcom/bytedance/sdk/component/c/a/f;

    if-lez p2, :cond_0

    .line 331
    iget-object p3, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    int-to-long v1, p2

    invoke-interface {p3, v1, v2}, Lcom/bytedance/sdk/component/c/a/e;->c(J)Lcom/bytedance/sdk/component/c/a/f;

    move-result-object p3

    .line 333
    :cond_0
    invoke-interface {p1, p4, v0, p3}, Lcom/bytedance/sdk/component/c/b/a/e/h$b;->a(ILcom/bytedance/sdk/component/c/b/a/e/b;Lcom/bytedance/sdk/component/c/a/f;)V

    return-void

    :cond_1
    new-array p1, p3, [Ljava/lang/Object;

    .line 327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    .line 321
    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    .line 320
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private i(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 339
    iget-object p2, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/c/a/e;->j()I

    move-result p2

    int-to-long v1, p2

    const-wide/32 v3, 0x7fffffff

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    .line 341
    invoke-interface {p1, p4, v1, v2}, Lcom/bytedance/sdk/component/c/b/a/e/h$b;->a(IJ)V

    return-void

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    .line 340
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "windowSizeIncrement was 0"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 338
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/c/b/a/e/h$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0, v2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/h;->a(ZLcom/bytedance/sdk/component/c/b/a/e/h$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Required SETTINGS preface not received"

    .line 83
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/e/e;->a:Lcom/bytedance/sdk/component/c/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/a/f;->g()I

    move-result v0

    int-to-long v3, v0

    invoke-interface {p1, v3, v4}, Lcom/bytedance/sdk/component/c/a/e;->c(J)Lcom/bytedance/sdk/component/c/a/f;

    move-result-object p1

    .line 88
    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/e/h;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/e/h;->a:Ljava/util/logging/Logger;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/a/f;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "<< CONNECTION %s"

    invoke-static {v4, v3}, Lcom/bytedance/sdk/component/c/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 90
    :cond_2
    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/e/e;->a:Lcom/bytedance/sdk/component/c/a/f;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/c/a/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    .line 91
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/a/f;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Expected a connection header but was %s"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public a(ZLcom/bytedance/sdk/component/c/b/a/e/h$b;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/component/c/a/e;->a(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/a/e/h;->a(Lcom/bytedance/sdk/component/c/a/e;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_3

    const/16 v3, 0x4000

    if-gt v1, v3, :cond_3

    .line 118
    iget-object v3, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {v3}, Lcom/bytedance/sdk/component/c/a/e;->h()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    .line 120
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Expected a SETTINGS frame but was %s"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 122
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/c/a/e;->h()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/c/a/e;->j()I

    move-result v0

    const v4, 0x7fffffff

    and-int/2addr v0, v4

    .line 124
    sget-object v4, Lcom/bytedance/sdk/component/c/b/a/e/h;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/bytedance/sdk/component/c/b/a/e/h;->a:Ljava/util/logging/Logger;

    invoke-static {v2, v0, v1, v3, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 165
    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/c/a/e;->h(J)V

    goto :goto_1

    .line 160
    :pswitch_0
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/c/b/a/e/h;->i(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V

    goto :goto_1

    .line 156
    :pswitch_1
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/c/b/a/e/h;->h(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V

    goto :goto_1

    .line 152
    :pswitch_2
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/c/b/a/e/h;->g(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V

    goto :goto_1

    .line 148
    :pswitch_3
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/c/b/a/e/h;->f(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V

    goto :goto_1

    .line 144
    :pswitch_4
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/c/b/a/e/h;->e(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V

    goto :goto_1

    .line 140
    :pswitch_5
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/c/b/a/e/h;->d(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V

    goto :goto_1

    .line 136
    :pswitch_6
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/c/b/a/e/h;->c(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V

    goto :goto_1

    .line 132
    :pswitch_7
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/c/b/a/e/h;->a(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V

    goto :goto_1

    .line 128
    :pswitch_8
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/c/b/a/e/h;->b(Lcom/bytedance/sdk/component/c/b/a/e/h$b;IBI)V

    :goto_1
    return v2

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "FRAME_SIZE_ERROR: %s"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/c/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/h;->c:Lcom/bytedance/sdk/component/c/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/c/a/e;->close()V

    return-void
.end method
