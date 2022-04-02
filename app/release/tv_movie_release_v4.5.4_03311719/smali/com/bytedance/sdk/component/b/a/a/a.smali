.class public Lcom/bytedance/sdk/component/b/a/a/a;
.super Ljava/lang/Object;
.source "NetClientAdapter.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/component/b/a/a/a;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/component/b/a/a/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/component/b/a/a/a;
    .locals 2

    .line 22
    sget-object v0, Lcom/bytedance/sdk/component/b/a/a/a;->a:Lcom/bytedance/sdk/component/b/a/a/a;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lcom/bytedance/sdk/component/b/a/a/a;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/b/a/a/a;->a:Lcom/bytedance/sdk/component/b/a/a/a;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/bytedance/sdk/component/b/a/a/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/b/a/a/a;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/b/a/a/a;->a:Lcom/bytedance/sdk/component/b/a/a/a;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/component/b/a/a/a;->a:Lcom/bytedance/sdk/component/b/a/a/a;

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/component/b/a/i$a;)Lcom/bytedance/sdk/component/b/a/i;
    .locals 2

    .line 38
    sget-object v0, Lcom/bytedance/sdk/component/b/a/a/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "NetClientAdapter"

    if-eqz v0, :cond_0

    const-string v0, "useOkNet build OkHttpClient"

    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Lcom/bytedance/sdk/component/b/a/a/a/c;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/b/a/a/a/c;-><init>(Lcom/bytedance/sdk/component/b/a/i$a;)V

    return-object v0

    :cond_0
    const-string v0, "useHttp build HttpClient"

    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Lcom/bytedance/sdk/component/b/a/a/b/c;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/b/a/a/b/c;-><init>(Lcom/bytedance/sdk/component/b/a/i$a;)V

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set useOkHttp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetClientAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-object v0, Lcom/bytedance/sdk/component/b/a/a/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
