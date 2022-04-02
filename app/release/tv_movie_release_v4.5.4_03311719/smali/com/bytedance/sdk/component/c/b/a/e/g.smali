.class public final Lcom/bytedance/sdk/component/c/b/a/e/g;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/c/b/a/e/g$a;,
        Lcom/bytedance/sdk/component/c/b/a/e/g$b;,
        Lcom/bytedance/sdk/component/c/b/a/e/g$c;
    }
.end annotation


# static fields
.field static final a:Ljava/util/concurrent/ExecutorService;

.field static final synthetic s:Z


# instance fields
.field final b:Z

.field final c:Lcom/bytedance/sdk/component/c/b/a/e/g$b;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/c/b/a/e/i;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/String;

.field f:I

.field g:I

.field h:Z

.field final i:Lcom/bytedance/sdk/component/c/b/a/e/m;

.field j:J

.field k:J

.field l:Lcom/bytedance/sdk/component/c/b/a/e/n;

.field final m:Lcom/bytedance/sdk/component/c/b/a/e/n;

.field n:Z

.field final o:Ljava/net/Socket;

.field final p:Lcom/bytedance/sdk/component/c/b/a/e/j;

.field final q:Lcom/bytedance/sdk/component/c/b/a/e/g$c;

.field final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/concurrent/ExecutorService;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/c/b/a/e/l;",
            ">;"
        }
    .end annotation
.end field

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-class v0, Lcom/bytedance/sdk/component/c/b/a/e/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/bytedance/sdk/component/c/b/a/e/g;->s:Z

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/16 v5, 0x3c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v2, "OkHttp Http2Connection"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/c/b/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/bytedance/sdk/component/c/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/component/c/b/a/e/g$a;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->d:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->j:J

    new-instance v0, Lcom/bytedance/sdk/component/c/b/a/e/n;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/c/b/a/e/n;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->l:Lcom/bytedance/sdk/component/c/b/a/e/n;

    new-instance v0, Lcom/bytedance/sdk/component/c/b/a/e/n;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/c/b/a/e/n;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->m:Lcom/bytedance/sdk/component/c/b/a/e/n;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->n:Z

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->r:Ljava/util/Set;

    iget-object v1, p1, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->f:Lcom/bytedance/sdk/component/c/b/a/e/m;

    iput-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->i:Lcom/bytedance/sdk/component/c/b/a/e/m;

    iget-boolean v1, p1, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->g:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->b:Z

    iget-object v1, p1, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->e:Lcom/bytedance/sdk/component/c/b/a/e/g$b;

    iput-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->c:Lcom/bytedance/sdk/component/c/b/a/e/g$b;

    iget-boolean v1, p1, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->g:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->g:I

    iget-boolean v1, p1, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->g:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->g:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->g:I

    :cond_1
    iget-boolean v1, p1, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->g:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput v2, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->v:I

    iget-boolean v1, p1, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->g:Z

    const/4 v2, 0x7

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->l:Lcom/bytedance/sdk/component/c/b/a/e/n;

    const/high16 v4, 0x1000000

    invoke-virtual {v1, v2, v4}, Lcom/bytedance/sdk/component/c/b/a/e/n;->a(II)Lcom/bytedance/sdk/component/c/b/a/e/n;

    :cond_3
    iget-object v1, p1, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->e:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x3c

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->e:Ljava/lang/String;

    aput-object v11, v4, v0

    const-string v0, "OkHttp %s Push Observer"

    invoke-static {v0, v4}, Lcom/bytedance/sdk/component/c/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/c/b/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v11

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->m:Lcom/bytedance/sdk/component/c/b/a/e/n;

    const v1, 0xffff

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/c/b/a/e/n;->a(II)Lcom/bytedance/sdk/component/c/b/a/e/n;

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->m:Lcom/bytedance/sdk/component/c/b/a/e/n;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/c/b/a/e/n;->a(II)Lcom/bytedance/sdk/component/c/b/a/e/n;

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->m:Lcom/bytedance/sdk/component/c/b/a/e/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/a/e/n;->d()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->k:J

    iget-object v0, p1, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->a:Ljava/net/Socket;

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->o:Ljava/net/Socket;

    new-instance v0, Lcom/bytedance/sdk/component/c/b/a/e/j;

    iget-object v1, p1, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->d:Lcom/bytedance/sdk/component/c/a/d;

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/c/b/a/e/j;-><init>(Lcom/bytedance/sdk/component/c/a/d;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    new-instance v0, Lcom/bytedance/sdk/component/c/b/a/e/g$c;

    new-instance v1, Lcom/bytedance/sdk/component/c/b/a/e/h;

    iget-object p1, p1, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->c:Lcom/bytedance/sdk/component/c/a/e;

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->b:Z

    invoke-direct {v1, p1, v2}, Lcom/bytedance/sdk/component/c/b/a/e/h;-><init>(Lcom/bytedance/sdk/component/c/a/e;Z)V

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/c/b/a/e/g$c;-><init>(Lcom/bytedance/sdk/component/c/b/a/e/g;Lcom/bytedance/sdk/component/c/b/a/e/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->q:Lcom/bytedance/sdk/component/c/b/a/e/g$c;

    return-void
.end method

.method private b(ILjava/util/List;Z)Lcom/bytedance/sdk/component/c/b/a/e/i;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/a/e/c;",
            ">;Z)",
            "Lcom/bytedance/sdk/component/c/b/a/e/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    iget-object v7, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    monitor-enter v7

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->h:Z

    if-nez v0, :cond_6

    iget v8, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->g:I

    iget v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->g:I

    new-instance v9, Lcom/bytedance/sdk/component/c/b/a/e/i;

    const/4 v4, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/c/b/a/e/i;-><init>(ILcom/bytedance/sdk/component/c/b/a/e/g;ZZLjava/util/List;)V

    if-eqz p3, :cond_1

    iget-wide v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->k:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1

    iget-wide v0, v9, Lcom/bytedance/sdk/component/c/b/a/e/i;->b:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    invoke-virtual {v9}, Lcom/bytedance/sdk/component/c/b/a/e/i;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_3

    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    invoke-virtual {v0, v6, v8, p1, p2}, Lcom/bytedance/sdk/component/c/b/a/e/j;->a(ZIILjava/util/List;)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->b:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    invoke-virtual {v0, p1, v8, p2}, Lcom/bytedance/sdk/component/c/b/a/e/j;->a(IILjava/util/List;)V

    :goto_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/a/e/j;->b()V

    :cond_4
    return-object v9

    :cond_5
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    :try_start_4
    new-instance p1, Lcom/bytedance/sdk/component/c/b/a/e/a;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/c/b/a/e/a;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public static g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :pswitch_0
    const/16 v0, 0x4a

    const/16 v1, 0x37

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_1
    packed-switch v1, :pswitch_data_1

    :pswitch_2
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-char v1, p0, v0

    xor-int/2addr v1, v0

    int-to-char v1, v1

    aput-char v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :goto_2
    :pswitch_4
    const/16 v0, 0x49

    const/16 v1, 0x60

    goto :goto_0

    :goto_3
    const/16 v0, 0x48

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->m:Lcom/bytedance/sdk/component/c/b/a/e/n;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/c/b/a/e/n;->c(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(I)Lcom/bytedance/sdk/component/c/b/a/e/i;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/c/b/a/e/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/util/List;Z)Lcom/bytedance/sdk/component/c/b/a/e/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/a/e/c;",
            ">;Z)",
            "Lcom/bytedance/sdk/component/c/b/a/e/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/component/c/b/a/e/g;->b(ILjava/util/List;Z)Lcom/bytedance/sdk/component/c/b/a/e/i;

    move-result-object p1

    return-object p1
.end method

.method a(IJ)V
    .locals 9

    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/bytedance/sdk/component/c/b/a/e/g$2;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp Window Update %s stream %d"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/component/c/b/a/e/g$2;-><init>(Lcom/bytedance/sdk/component/c/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(ILcom/bytedance/sdk/component/c/a/e;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, Lcom/bytedance/sdk/component/c/a/c;

    invoke-direct {v5}, Lcom/bytedance/sdk/component/c/a/c;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lcom/bytedance/sdk/component/c/a/e;->a(J)V

    invoke-interface {p2, v5, v0, v1}, Lcom/bytedance/sdk/component/c/a/e;->a(Lcom/bytedance/sdk/component/c/a/c;J)J

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/c/a/c;->b()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/bytedance/sdk/component/c/b/a/e/g$6;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->e:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/component/c/b/a/e/g$6;-><init>(Lcom/bytedance/sdk/component/c/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/component/c/a/c;IZ)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/c/a/c;->b()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(ILcom/bytedance/sdk/component/c/b/a/e/b;)V
    .locals 8

    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/bytedance/sdk/component/c/b/a/e/g$1;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s stream %d"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/c/b/a/e/g$1;-><init>(Lcom/bytedance/sdk/component/c/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/component/c/b/a/e/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/bytedance/sdk/component/c/b/a/e/b;->b:Lcom/bytedance/sdk/component/c/b/a/e/b;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/c/b/a/e/g;->a(ILcom/bytedance/sdk/component/c/b/a/e/b;)V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/bytedance/sdk/component/c/b/a/e/g$4;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v3, "OkHttp %s Push Request[%s]"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/c/b/a/e/g$4;-><init>(Lcom/bytedance/sdk/component/c/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method a(ILjava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/c/b/a/e/c;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/bytedance/sdk/component/c/b/a/e/g$5;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Headers[%s]"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/component/c/b/a/e/g$5;-><init>(Lcom/bytedance/sdk/component/c/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(IZLcom/bytedance/sdk/component/c/a/c;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    iget-object p4, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    invoke-virtual {p4, p2, p1, p3, v0}, Lcom/bytedance/sdk/component/c/b/a/e/j;->a(ZILcom/bytedance/sdk/component/c/a/c;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-wide v3, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->k:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    iget-wide v3, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->k:J

    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    iget-object v3, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/c/b/a/e/j;->c()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-wide v4, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->k:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->k:J

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    iget-object v4, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v3}, Lcom/bytedance/sdk/component/c/b/a/e/j;->a(ZILcom/bytedance/sdk/component/c/a/c;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method a(J)V
    .locals 3

    iget-wide v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->k:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->k:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/c/b/a/e/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->h:Z

    if-eqz v1, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->h:Z

    iget v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->f:I

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    sget-object v3, Lcom/bytedance/sdk/component/c/b/a/c;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Lcom/bytedance/sdk/component/c/b/a/e/j;->a(ILcom/bytedance/sdk/component/c/b/a/e/b;[B)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method a(Lcom/bytedance/sdk/component/c/b/a/e/b;Lcom/bytedance/sdk/component/c/b/a/e/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/bytedance/sdk/component/c/b/a/e/g;->s:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/c/b/a/e/g;->a(Lcom/bytedance/sdk/component/c/b/a/e/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/bytedance/sdk/component/c/b/a/e/i;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/bytedance/sdk/component/c/b/a/e/i;

    iget-object v2, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    iget-object v2, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->u:Ljava/util/Map;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->u:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->u:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/bytedance/sdk/component/c/b/a/e/l;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/bytedance/sdk/component/c/b/a/e/l;

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->u:Ljava/util/Map;

    move-object v0, v2

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    array-length v3, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    :try_start_2
    invoke-virtual {v5, p2}, Lcom/bytedance/sdk/component/c/b/a/e/i;->a(Lcom/bytedance/sdk/component/c/b/a/e/b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v5

    if-eqz p1, :cond_4

    move-object p1, v5

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    array-length p2, v0

    :goto_5
    if-ge v2, p2, :cond_6

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/c/b/a/e/l;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    :try_start_3
    iget-object p2, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/c/b/a/e/j;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception p2

    if-nez p1, :cond_7

    move-object p1, p2

    :cond_7
    :goto_6
    :try_start_4
    iget-object p2, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->o:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    :goto_7
    if-nez p1, :cond_8

    return-void

    :cond_8
    throw p1

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method a(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/a/e/j;->a()V

    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->l:Lcom/bytedance/sdk/component/c/b/a/e/n;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/c/b/a/e/j;->b(Lcom/bytedance/sdk/component/c/b/a/e/n;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->l:Lcom/bytedance/sdk/component/c/b/a/e/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/c/b/a/e/n;->d()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lcom/bytedance/sdk/component/c/b/a/e/j;->a(IJ)V

    :cond_0
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->q:Lcom/bytedance/sdk/component/c/b/a/e/g$c;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tt_pangle_thread_http2_connection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method a(ZIILcom/bytedance/sdk/component/c/b/a/e/l;)V
    .locals 10

    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/bytedance/sdk/component/c/b/a/e/g$3;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s ping %08x%08x"

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/component/c/b/a/e/g$3;-><init>(Lcom/bytedance/sdk/component/c/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/bytedance/sdk/component/c/b/a/e/l;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method declared-synchronized b(I)Lcom/bytedance/sdk/component/c/b/a/e/i;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/c/b/a/e/i;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/a/e/j;->b()V

    return-void
.end method

.method b(ILcom/bytedance/sdk/component/c/b/a/e/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/c/b/a/e/j;->a(ILcom/bytedance/sdk/component/c/b/a/e/b;)V

    return-void
.end method

.method b(ZIILcom/bytedance/sdk/component/c/b/a/e/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    monitor-enter v0

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lcom/bytedance/sdk/component/c/b/a/e/l;->a()V

    :cond_0
    iget-object p4, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->p:Lcom/bytedance/sdk/component/c/b/a/e/j;

    invoke-virtual {p4, p1, p2, p3}, Lcom/bytedance/sdk/component/c/b/a/e/j;->a(ZII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method declared-synchronized c(I)Lcom/bytedance/sdk/component/c/b/a/e/l;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->u:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->u:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/c/b/a/e/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/c/b/a/e/g;->a(Z)V

    return-void
.end method

.method c(ILcom/bytedance/sdk/component/c/b/a/e/b;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/bytedance/sdk/component/c/b/a/e/g$7;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/c/b/a/e/g$7;-><init>(Lcom/bytedance/sdk/component/c/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/component/c/b/a/e/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/e/b;->a:Lcom/bytedance/sdk/component/c/b/a/e/b;

    sget-object v1, Lcom/bytedance/sdk/component/c/b/a/e/b;->f:Lcom/bytedance/sdk/component/c/b/a/e/b;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/c/b/a/e/g;->a(Lcom/bytedance/sdk/component/c/b/a/e/b;Lcom/bytedance/sdk/component/c/b/a/e/b;)V

    return-void
.end method

.method public declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
