.class public Lcom/bytedance/sdk/openadsdk/h/d;
.super Ljava/lang/Object;
.source "TTNetClient.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/h/d;


# instance fields
.field private b:Landroid/content/Context;

.field private final c:Lcom/bytedance/sdk/component/f/a;

.field private d:Lcom/bytedance/sdk/openadsdk/h/a/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 49
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/content/Context;

    .line 50
    new-instance p1, Lcom/bytedance/sdk/component/f/a$a;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/f/a$a;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    .line 51
    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/component/f/a$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/f/a$a;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 52
    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/component/f/a$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/f/a$a;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 53
    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/component/f/a$a;->c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/f/a$a;

    move-result-object p1

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/f/a$a;->a(Z)Lcom/bytedance/sdk/component/f/a$a;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/f/a$a;->a()Lcom/bytedance/sdk/component/f/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->c:Lcom/bytedance/sdk/component/f/a;

    .line 56
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/f/a;->e()Lcom/bytedance/sdk/component/b/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/i;->a()Lcom/bytedance/sdk/component/b/a/d;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x20

    .line 58
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/b/a/d;->a(I)V

    :cond_1
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/h/d;
    .locals 3

    .line 38
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/d;->a:Lcom/bytedance/sdk/openadsdk/h/d;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/bytedance/sdk/openadsdk/h/d;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/d;->a:Lcom/bytedance/sdk/openadsdk/h/d;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/d;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/h/d;->a:Lcom/bytedance/sdk/openadsdk/h/d;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/d;->a:Lcom/bytedance/sdk/openadsdk/h/d;

    return-object v0
.end method

.method private d()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->d:Lcom/bytedance/sdk/openadsdk/h/a/c;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/h/a/c;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->d:Lcom/bytedance/sdk/openadsdk/h/a/c;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/f/k;Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 88
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/k;)Lcom/bytedance/sdk/component/e/i;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/e/i;->a(Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/e/h;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 80
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/e/i;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/e/i;->a(Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/e/h;

    return-void
.end method

.method public b()Lcom/bytedance/sdk/component/f/a;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->c:Lcom/bytedance/sdk/component/f/a;

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/h/a/c;
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/d;->d()V

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->d:Lcom/bytedance/sdk/openadsdk/h/a/c;

    return-object v0
.end method
