.class final Lcom/bytedance/sdk/openadsdk/c/a$a;
.super Ljava/lang/Object;
.source "ImageLoaderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/bytedance/sdk/component/e/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/a$a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/component/e/m;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/a$a;->a:Lcom/bytedance/sdk/component/e/m;

    return-void
.end method

.method private static a(Lcom/bytedance/sdk/component/e/i;)Lcom/bytedance/sdk/component/e/i;
    .locals 1

    .line 209
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/c/b;-><init>()V

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/e/i;->a(Lcom/bytedance/sdk/component/e/r;)Lcom/bytedance/sdk/component/e/i;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/f/k;)Lcom/bytedance/sdk/component/e/i;
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/f/k;)Lcom/bytedance/sdk/component/e/i;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/bytedance/sdk/component/e/i;
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/a$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/e/i;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Lcom/bytedance/sdk/component/e/m;
    .locals 1

    .line 66
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/a$a;->a:Lcom/bytedance/sdk/component/e/m;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Lcom/bytedance/sdk/component/e/m;
    .locals 5

    .line 82
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    const/high16 v1, 0x5000000

    .line 83
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0xa00000

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 85
    new-instance v1, Lcom/bytedance/sdk/component/e/c/a/a;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getImageCacheDir()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0x2800000

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/bytedance/sdk/component/e/c/a/a;-><init>(IJLjava/io/File;)V

    .line 86
    new-instance v0, Lcom/bytedance/sdk/component/e/c/e$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/e/c/e$a;-><init>()V

    .line 87
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/e/c/e$a;->a(Lcom/bytedance/sdk/component/e/b;)Lcom/bytedance/sdk/component/e/c/e$a;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/bytedance/sdk/component/g/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/e/c/e$a;->a(Ljava/util/concurrent/ExecutorService;)Lcom/bytedance/sdk/component/e/c/e$a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/a$a$1;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/c/a$a$1;-><init>()V

    .line 89
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/e/c/e$a;->a(Lcom/bytedance/sdk/component/e/d;)Lcom/bytedance/sdk/component/e/c/e$a;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/c/e$a;->a()Lcom/bytedance/sdk/component/e/c/e;

    move-result-object v0

    .line 86
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/e/c/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/component/e/l;)Lcom/bytedance/sdk/component/e/m;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/a$a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 66
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/a$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/core/f/k;)Lcom/bytedance/sdk/component/e/i;
    .locals 2

    .line 195
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/a$a;->a:Lcom/bytedance/sdk/component/e/m;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/e/m;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/e/i;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/e/i;->a(I)Lcom/bytedance/sdk/component/e/i;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/e/i;->b(I)Lcom/bytedance/sdk/component/e/i;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->g()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/e/i;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/e/i;

    move-result-object p0

    .line 199
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/a$a;->a(Lcom/bytedance/sdk/component/e/i;)Lcom/bytedance/sdk/component/e/i;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Lcom/bytedance/sdk/component/e/i;
    .locals 1

    .line 190
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/a$a;->a:Lcom/bytedance/sdk/component/e/m;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/e/m;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/e/i;

    move-result-object p0

    .line 191
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/a$a;->a(Lcom/bytedance/sdk/component/e/i;)Lcom/bytedance/sdk/component/e/i;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 216
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/a$a;->a:Lcom/bytedance/sdk/component/e/m;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/component/e/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 220
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/a$a;->a:Lcom/bytedance/sdk/component/e/m;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/e/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
