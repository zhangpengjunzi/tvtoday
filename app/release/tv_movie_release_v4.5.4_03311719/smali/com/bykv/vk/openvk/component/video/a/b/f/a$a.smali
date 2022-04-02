.class Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;
.super Ljava/lang/Thread;
.source "VideoCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/a/b/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/component/video/a/b/f/a;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/a/b/f/a;)V
    .locals 1

    .line 170
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->a:Lcom/bykv/vk/openvk/component/video/a/b/f/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 167
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->d:Ljava/util/Queue;

    .line 171
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->b:Ljava/util/Queue;

    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->c:Z

    .line 173
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->e:Ljava/util/Queue;

    return-void
.end method

.method private a(ILcom/bykv/vk/openvk/component/video/api/c/c;)Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;
    .locals 2

    .line 189
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->b()V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoCachePreloader"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;)V

    .line 195
    :cond_0
    iput p1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->a:I

    .line 196
    iput-object p2, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    return-object v0
.end method

.method private a()V
    .locals 0

    return-void
.end method

.method private a(Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;)V
    .locals 2

    .line 201
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->a()V

    const/4 v0, 0x0

    .line 202
    iput-object v0, p1, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->c:[Ljava/lang/String;

    .line 203
    iput-object v0, p1, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->b:Ljava/lang/String;

    const/4 v1, -0x1

    .line 204
    iput v1, p1, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->a:I

    .line 205
    iput-object v0, p1, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    .line 206
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method private b()V
    .locals 0

    return-void
.end method

.method private declared-synchronized b(Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;)V
    .locals 1

    monitor-enter p0

    .line 221
    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->b()V

    .line 222
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c()V
    .locals 4

    .line 318
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->a()V

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;

    if-eqz v0, :cond_1

    .line 321
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 322
    iget-object v3, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/c/c;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->c:[Ljava/lang/String;

    .line 323
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->b()I

    move-result v1

    iput v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->d:I

    .line 324
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->e:Ljava/lang/String;

    .line 325
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->b:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    .line 328
    iput-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    .line 329
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->c(Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;)V
    .locals 1

    .line 255
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->a()V

    if-nez p1, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bykv/vk/openvk/component/video/api/c/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, v0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->a(ILcom/bykv/vk/openvk/component/video/api/c/c;)Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->b(Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;)V

    return-void
.end method

.method public run()V
    .locals 10

    .line 263
    :goto_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->c:Z

    if-eqz v0, :cond_d

    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->c()V

    .line 268
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 269
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;

    if-nez v0, :cond_1

    goto :goto_1

    .line 271
    :cond_1
    iget v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    goto/16 :goto_4

    .line 302
    :cond_2
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/d;->c()Lcom/bykv/vk/openvk/component/video/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/a/b/d;->d()V

    .line 303
    iput-boolean v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->c:Z

    goto/16 :goto_4

    .line 293
    :cond_3
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/d;->c()Lcom/bykv/vk/openvk/component/video/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/a/b/d;->d()V

    .line 294
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/e;->c()Lcom/bykv/vk/openvk/component/video/a/b/a/b;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 295
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/e;->c()Lcom/bykv/vk/openvk/component/video/a/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/a/b/a/b;->a()V

    .line 297
    :cond_4
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/e;->b()Lcom/bykv/vk/openvk/component/video/a/b/a/c;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 298
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/e;->b()Lcom/bykv/vk/openvk/component/video/a/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/a/b/a/c;->a()V

    goto :goto_4

    .line 290
    :cond_5
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/d;->c()Lcom/bykv/vk/openvk/component/video/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/a/b/d;->d()V

    goto :goto_4

    .line 287
    :cond_6
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/d;->c()Lcom/bykv/vk/openvk/component/video/a/b/d;

    move-result-object v1

    iget-object v2, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/a/b/d;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 274
    :cond_7
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->c:[Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->c:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_b

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    iget-object v4, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->c:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_9

    aget-object v7, v4, v6

    .line 277
    invoke-static {v7}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 278
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 281
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Ljava/lang/String;

    .line 282
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v6, 0x1

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    .line 283
    :goto_3
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/d;->c()Lcom/bykv/vk/openvk/component/video/a/b/d;

    move-result-object v4

    const/4 v5, 0x0

    iget v7, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->d:I

    iget-object v8, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->b:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/bykv/vk/openvk/component/video/a/b/d;->a(ZZILjava/lang/String;[Ljava/lang/String;)V

    .line 306
    :cond_b
    :goto_4
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->a(Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 309
    :cond_c
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 311
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 313
    :goto_5
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_d
    return-void
.end method
