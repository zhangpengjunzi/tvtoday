.class public Lcom/bytedance/sdk/component/f/c/a;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Lcom/bytedance/sdk/component/f/d/g$a;


# static fields
.field private static b:Lcom/bytedance/sdk/component/f/c/a;


# instance fields
.field final a:Lcom/bytedance/sdk/component/f/d/g;

.field private final c:Z

.field private volatile d:Z

.field private e:Z

.field private f:Z

.field private g:J

.field private h:J

.field private i:Ljava/util/concurrent/ThreadPoolExecutor;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Landroid/content/Context;

.field private volatile l:Z

.field private m:Lcom/bytedance/sdk/component/f/a;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->d:Z

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/f/c/a;->e:Z

    .line 52
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->f:Z

    const-wide/16 v1, 0x0

    .line 53
    iput-wide v1, p0, Lcom/bytedance/sdk/component/f/c/a;->g:J

    .line 54
    iput-wide v1, p0, Lcom/bytedance/sdk/component/f/c/a;->h:J

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcom/bytedance/sdk/component/f/c/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 58
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/f/c/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->l:Z

    .line 66
    new-instance v0, Lcom/bytedance/sdk/component/f/d/g;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/f/d/g;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/f/d/g$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->a:Lcom/bytedance/sdk/component/f/d/g;

    .line 92
    iput-object p1, p0, Lcom/bytedance/sdk/component/f/c/a;->k:Landroid/content/Context;

    .line 93
    invoke-static {p1}, Lcom/bytedance/sdk/component/f/d/f;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/f/c/a;->c:Z

    .line 94
    iput p2, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->d:Z

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/f/c/a;->e:Z

    .line 52
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->f:Z

    const-wide/16 v1, 0x0

    .line 53
    iput-wide v1, p0, Lcom/bytedance/sdk/component/f/c/a;->g:J

    .line 54
    iput-wide v1, p0, Lcom/bytedance/sdk/component/f/c/a;->h:J

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcom/bytedance/sdk/component/f/c/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 58
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/f/c/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->l:Z

    .line 66
    new-instance v0, Lcom/bytedance/sdk/component/f/d/g;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/f/d/g;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/f/d/g$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->a:Lcom/bytedance/sdk/component/f/d/g;

    .line 87
    iput-object p1, p0, Lcom/bytedance/sdk/component/f/c/a;->k:Landroid/content/Context;

    .line 88
    iput-boolean p2, p0, Lcom/bytedance/sdk/component/f/c/a;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/f/c/a;J)J
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/bytedance/sdk/component/f/c/a;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/f/c/a;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/component/f/c/a;->k:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/component/f/c/a;
    .locals 3

    .line 69
    const-class v0, Lcom/bytedance/sdk/component/f/c/a;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/f/c/a;->b:Lcom/bytedance/sdk/component/f/c/a;

    if-nez v1, :cond_0

    .line 71
    invoke-static {p0}, Lcom/bytedance/sdk/component/f/d/f;->b(Landroid/content/Context;)Z

    move-result v1

    .line 72
    new-instance v2, Lcom/bytedance/sdk/component/f/c/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lcom/bytedance/sdk/component/f/c/a;-><init>(Landroid/content/Context;Z)V

    sput-object v2, Lcom/bytedance/sdk/component/f/c/a;->b:Lcom/bytedance/sdk/component/f/c/a;

    .line 74
    :cond_0
    sget-object p0, Lcom/bytedance/sdk/component/f/c/a;->b:Lcom/bytedance/sdk/component/f/c/a;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/get_domains/v4/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(I)V
    .locals 3

    .line 315
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->f()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x66

    if-eqz v0, :cond_3

    .line 316
    array-length v2, v0

    if-gt v2, p1, :cond_0

    goto :goto_1

    .line 320
    :cond_0
    aget-object v0, v0, p1

    .line 321
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/f/c/a;->b(I)V

    return-void

    .line 326
    :cond_1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/f/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 328
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/f/c/a;->b(I)V

    return-void

    .line 331
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/component/f/c/a;->i()Lcom/bytedance/sdk/component/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/f/a;->c()Lcom/bytedance/sdk/component/f/b/b;

    move-result-object v1

    .line 332
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/f/c/a;->a(Lcom/bytedance/sdk/component/f/b/b;)V

    .line 334
    new-instance v0, Lcom/bytedance/sdk/component/f/c/a$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/f/c/a$3;-><init>(Lcom/bytedance/sdk/component/f/c/a;I)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Lcom/bytedance/sdk/component/f/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try app config exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppConfig"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/f/d/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 317
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/f/c/a;->b(I)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/component/f/b/b;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 415
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 416
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/c/a;->k:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/f/c/b;->a(Landroid/content/Context;)Landroid/location/Address;

    move-result-object v0

    :cond_1
    const-string v1, ""

    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {v0}, Landroid/location/Address;->hasLatitude()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/location/Address;->hasLongitude()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {p1, v3, v2}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "longitude"

    invoke-virtual {p1, v3, v2}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 423
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "city"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->d:Z

    if-eqz v0, :cond_3

    const-string v0, "force"

    const-string v2, "1"

    .line 427
    invoke-virtual {p1, v0, v2}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_3
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_4

    .line 432
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_0

    .line 434
    :cond_4
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    :goto_0
    const-string v2, "abi"

    .line 436
    invoke-virtual {p1, v2, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 439
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 441
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/component/f/c/b;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "aid"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/f/c/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "device_platform"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/f/c/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "channel"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/component/f/c/b;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "version_code"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/f/c/b;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom_info_1"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/component/f/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/f/c/a;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/f/c/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/f/c/a;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/f/c/a;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 270
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 271
    check-cast p1, Ljava/lang/String;

    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 275
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "message"

    .line 276
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "success"

    .line 277
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 280
    :cond_1
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 281
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    return v1

    :cond_4
    const-string p1, "data"

    .line 286
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->k:Landroid/content/Context;

    const-string v2, "ss_app_config"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_refresh_time"

    .line 292
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 295
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->h()Lcom/bytedance/sdk/component/f/c/d;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 299
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->h()Lcom/bytedance/sdk/component/f/c/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/f/c/d;->a(Lorg/json/JSONObject;)V

    :cond_5
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 295
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private b(I)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->a:Lcom/bytedance/sdk/component/f/d/g;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/f/d/g;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 122
    sget-object v0, Lcom/bytedance/sdk/component/f/c/a;->b:Lcom/bytedance/sdk/component/f/c/a;

    if-eqz v0, :cond_1

    .line 124
    invoke-static {p0}, Lcom/bytedance/sdk/component/f/d/f;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 125
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/f/c/a;->a(Z)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/a;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/f/c/a;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/f/c/a;->b(I)V

    return-void
.end method

.method private c(Z)V
    .locals 6

    .line 146
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->e:Z

    const-wide/16 v0, 0x0

    .line 150
    iput-wide v0, p0, Lcom/bytedance/sdk/component/f/c/a;->g:J

    .line 151
    iput-wide v0, p0, Lcom/bytedance/sdk/component/f/c/a;->h:J

    :cond_1
    if-eqz p1, :cond_2

    const-wide/32 v0, 0xa4cb80

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x2932e00

    .line 154
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 155
    iget-wide v4, p0, Lcom/bytedance/sdk/component/f/c/a;->g:J

    sub-long v4, v2, v4

    cmp-long p1, v4, v0

    if-lez p1, :cond_3

    .line 156
    iget-wide v0, p0, Lcom/bytedance/sdk/component/f/c/a;->h:J

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x1d4c0

    cmp-long p1, v2, v0

    if-lez p1, :cond_3

    .line 157
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/f/c/a;->l:Z

    if-nez p1, :cond_3

    .line 158
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->c()Z

    :cond_3
    return-void
.end method

.method private h()Z
    .locals 2

    .line 306
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->f()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 307
    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/f/c/a;->a(I)V

    :cond_1
    :goto_0
    return v1
.end method

.method private i()Lcom/bytedance/sdk/component/f/a;
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->m:Lcom/bytedance/sdk/component/f/a;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Lcom/bytedance/sdk/component/f/a$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/f/a$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 383
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/f/a$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/f/a$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 384
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/f/a$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/f/a$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 385
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/f/a$a;->c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/f/a$a;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/a$a;->a()Lcom/bytedance/sdk/component/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->m:Lcom/bytedance/sdk/component/f/a;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->m:Lcom/bytedance/sdk/component/f/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/f/c/a;->a(Z)V

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 5

    .line 187
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    const-string v1, "TNCManager"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iput-boolean v2, p0, Lcom/bytedance/sdk/component/f/c/a;->f:Z

    .line 198
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/f/c/a;->e:Z

    if-eqz p1, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->a()V

    :cond_1
    const-string p1, "doRefresh, error"

    .line 201
    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/f/d/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 189
    :cond_2
    iput-boolean v2, p0, Lcom/bytedance/sdk/component/f/c/a;->f:Z

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/component/f/c/a;->g:J

    const-string p1, "doRefresh, succ"

    .line 191
    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/f/d/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/f/c/a;->e:Z

    if-eqz p1, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->a()V

    .line 194
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/bytedance/sdk/component/f/c/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 4

    monitor-enter p0

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->c:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/f/c/a;->c(Z)V

    goto :goto_0

    .line 105
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/component/f/c/a;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    .line 107
    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->g()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/component/f/c/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/f/c/a$1;-><init>(Lcom/bytedance/sdk/component/f/c/a;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :catchall_0
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b()V
    .locals 5

    monitor-enter p0

    .line 133
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 134
    iget-wide v2, p0, Lcom/bytedance/sdk/component/f/c/a;->g:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/f/c/a;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->h()Lcom/bytedance/sdk/component/f/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->h()Lcom/bytedance/sdk/component/f/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/d;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :catch_0
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Z)V
    .locals 2

    const-string v0, "TNCManager"

    const-string v1, "doRefresh, actual request"

    .line 242
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/f/d/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->d()V

    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->f:Z

    if-nez p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/a;->a:Lcom/bytedance/sdk/component/f/d/g;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/f/d/g;->sendEmptyMessage(I)Z

    return-void

    .line 251
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/f/c/a;->h()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 4

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doRefresh: updating state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/f/c/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TNCManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/f/d/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "doRefresh, already running"

    .line 167
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/f/d/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->g()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/f/c/a$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/f/c/a$2;-><init>(Lcom/bytedance/sdk/component/f/c/a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return v3
.end method

.method public declared-synchronized d()V
    .locals 5

    monitor-enter p0

    .line 208
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 209
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 210
    :try_start_1
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->l:Z

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->k:Landroid/content/Context;

    const-string v1, "ss_app_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_refresh_time"

    const-wide/16 v2, 0x0

    .line 213
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    .line 218
    :cond_1
    iput-wide v0, p0, Lcom/bytedance/sdk/component/f/c/a;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->h()Lcom/bytedance/sdk/component/f/c/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 221
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->h()Lcom/bytedance/sdk/component/f/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/d;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    :catch_0
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 2

    .line 228
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 232
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/a;->c:Z

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->d()V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/f/c/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public f()[Ljava/lang/String;
    .locals 2

    .line 259
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/a;->n:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->d()Lcom/bytedance/sdk/component/f/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/f/c/b;->f()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 262
    array-length v1, v0

    if-gtz v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public g()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    .line 453
    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 454
    const-class v0, Lcom/bytedance/sdk/component/f/c/a;

    monitor-enter v0

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/f/c/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 456
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-wide/16 v5, 0x14

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/f/c/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    .line 459
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 461
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 463
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
