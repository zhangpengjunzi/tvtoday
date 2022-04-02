.class public Lcom/bt/jrsdk/httplib/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:J = 0xaL

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/bt/jrsdk/httplib/ThreadPoolManager;->CPU_COUNT:I

    add-int/lit8 v1, v0, 0x1

    .line 12
    sput v1, Lcom/bt/jrsdk/httplib/ThreadPoolManager;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 13
    sput v0, Lcom/bt/jrsdk/httplib/ThreadPoolManager;->MAXIMUM_POOL_SIZE:I

    .line 16
    new-instance v0, Lcom/bt/jrsdk/httplib/ThreadPoolManager$1;

    invoke-direct {v0}, Lcom/bt/jrsdk/httplib/ThreadPoolManager$1;-><init>()V

    sput-object v0, Lcom/bt/jrsdk/httplib/ThreadPoolManager;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 24
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lcom/bt/jrsdk/httplib/ThreadPoolManager;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-wide/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/bt/jrsdk/httplib/ThreadPoolManager;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 29
    sget-object v0, Lcom/bt/jrsdk/httplib/ThreadPoolManager;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
