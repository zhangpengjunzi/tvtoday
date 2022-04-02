.class public Lcom/bytedance/sdk/component/e/c/c;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Lcom/bytedance/sdk/component/e/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/e/c/c$a;,
        Lcom/bytedance/sdk/component/e/c/c$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/bytedance/sdk/component/e/n;

.field private f:Landroid/widget/ImageView$ScaleType;

.field private g:Landroid/graphics/Bitmap$Config;

.field private h:I

.field private i:I

.field private j:Lcom/bytedance/sdk/component/e/t;

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private volatile l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/bytedance/sdk/component/e/r;

.field private p:Lcom/bytedance/sdk/component/e/s;

.field private q:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bytedance/sdk/component/e/d/i;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Landroid/os/Handler;

.field private s:Z

.field private t:Lcom/bytedance/sdk/component/e/g;

.field private u:I

.field private v:Lcom/bytedance/sdk/component/e/c/f;

.field private w:Lcom/bytedance/sdk/component/e/c/a;

.field private x:Lcom/bytedance/sdk/component/e/b;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/e/c/c$b;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->q:Ljava/util/Queue;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->r:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/e/c/c;->s:Z

    .line 114
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->a(Lcom/bytedance/sdk/component/e/c/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->b:Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/bytedance/sdk/component/e/c/c$a;

    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->b(Lcom/bytedance/sdk/component/e/c/c$b;)Lcom/bytedance/sdk/component/e/n;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/e/c/c$a;-><init>(Lcom/bytedance/sdk/component/e/c/c;Lcom/bytedance/sdk/component/e/n;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->e:Lcom/bytedance/sdk/component/e/n;

    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->c(Lcom/bytedance/sdk/component/e/c/c$b;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->k:Ljava/lang/ref/WeakReference;

    .line 118
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->d(Lcom/bytedance/sdk/component/e/c/c$b;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->f:Landroid/widget/ImageView$ScaleType;

    .line 119
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->e(Lcom/bytedance/sdk/component/e/c/c$b;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->g:Landroid/graphics/Bitmap$Config;

    .line 120
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->f(Lcom/bytedance/sdk/component/e/c/c$b;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/e/c/c;->h:I

    .line 121
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->g(Lcom/bytedance/sdk/component/e/c/c$b;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/e/c/c;->i:I

    .line 123
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->h(Lcom/bytedance/sdk/component/e/c/c$b;)Lcom/bytedance/sdk/component/e/t;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/component/e/t;->a:Lcom/bytedance/sdk/component/e/t;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->h(Lcom/bytedance/sdk/component/e/c/c$b;)Lcom/bytedance/sdk/component/e/t;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->j:Lcom/bytedance/sdk/component/e/t;

    .line 125
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->i(Lcom/bytedance/sdk/component/e/c/c$b;)Lcom/bytedance/sdk/component/e/s;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/e/s;->b:Lcom/bytedance/sdk/component/e/s;

    goto :goto_1

    .line 127
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->i(Lcom/bytedance/sdk/component/e/c/c$b;)Lcom/bytedance/sdk/component/e/s;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->p:Lcom/bytedance/sdk/component/e/s;

    .line 129
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->j(Lcom/bytedance/sdk/component/e/c/c$b;)Lcom/bytedance/sdk/component/e/r;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->o:Lcom/bytedance/sdk/component/e/r;

    .line 131
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/e/c/c;->a(Lcom/bytedance/sdk/component/e/c/c$b;)Lcom/bytedance/sdk/component/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->x:Lcom/bytedance/sdk/component/e/b;

    .line 134
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->k(Lcom/bytedance/sdk/component/e/c/c$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->k(Lcom/bytedance/sdk/component/e/c/c$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/e/c/c;->b(Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->k(Lcom/bytedance/sdk/component/e/c/c$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/e/c/c;->a(Ljava/lang/String;)V

    .line 139
    :cond_2
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->l(Lcom/bytedance/sdk/component/e/c/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/e/c/c;->m:Z

    .line 141
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->m(Lcom/bytedance/sdk/component/e/c/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/e/c/c;->n:Z

    .line 143
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->n(Lcom/bytedance/sdk/component/e/c/c$b;)Lcom/bytedance/sdk/component/e/c/f;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/c/c;->v:Lcom/bytedance/sdk/component/e/c/f;

    .line 145
    iget-object p1, p0, Lcom/bytedance/sdk/component/e/c/c;->q:Ljava/util/Queue;

    new-instance v0, Lcom/bytedance/sdk/component/e/d/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/e/d/c;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/e/c/c$b;Lcom/bytedance/sdk/component/e/c/c$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/e/c/c;-><init>(Lcom/bytedance/sdk/component/e/c/c$b;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/component/e/c/c$b;)Lcom/bytedance/sdk/component/e/b;
    .locals 1

    .line 149
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->o(Lcom/bytedance/sdk/component/e/c/c$b;)Lcom/bytedance/sdk/component/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->o(Lcom/bytedance/sdk/component/e/c/c$b;)Lcom/bytedance/sdk/component/e/b;

    move-result-object p1

    return-object p1

    .line 153
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->p(Lcom/bytedance/sdk/component/e/c/c$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/c$b;->p(Lcom/bytedance/sdk/component/e/c/c$b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/a/a;->a(Ljava/io/File;)Lcom/bytedance/sdk/component/e/b;

    move-result-object p1

    return-object p1

    .line 157
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/e/c/a/a;->f()Lcom/bytedance/sdk/component/e/b;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 345
    new-instance v0, Lcom/bytedance/sdk/component/e/d/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/e/d/h;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/e/d/h;->a(Lcom/bytedance/sdk/component/e/c/c;)V

    .line 346
    iget-object p1, p0, Lcom/bytedance/sdk/component/e/c/c;->q:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/e/c/c;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/e/c/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/e/c/c;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/bytedance/sdk/component/e/c/c;->l:Z

    return p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/e/c/c;)Ljava/util/Queue;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/component/e/c/c;->q:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/component/e/c/c;)Lcom/bytedance/sdk/component/e/r;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/component/e/c/c;->o:Lcom/bytedance/sdk/component/e/r;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/component/e/c/c;)Lcom/bytedance/sdk/component/e/h;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/c/c;->s()Lcom/bytedance/sdk/component/e/h;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/component/e/c/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/component/e/c/c;->k:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/component/e/c/c;)Lcom/bytedance/sdk/component/e/t;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/component/e/c/c;->j:Lcom/bytedance/sdk/component/e/t;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/component/e/c/c;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/component/e/c/c;->r:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/component/e/c/c;)Lcom/bytedance/sdk/component/e/s;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/component/e/c/c;->p:Lcom/bytedance/sdk/component/e/s;

    return-object p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/component/e/c/c;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/component/e/c/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method private s()Lcom/bytedance/sdk/component/e/h;
    .locals 4

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->v:Lcom/bytedance/sdk/component/e/c/f;

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->e:Lcom/bytedance/sdk/component/e/n;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->e:Lcom/bytedance/sdk/component/e/n;

    const/16 v1, 0x3ed

    const-string v2, "not init !"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/e/n;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->v:Lcom/bytedance/sdk/component/e/c/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/c/f;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 297
    new-instance v1, Lcom/bytedance/sdk/component/e/c/c$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/e/c/c$1;-><init>(Lcom/bytedance/sdk/component/e/c/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->a:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageRequest"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 251
    iput p1, p0, Lcom/bytedance/sdk/component/e/c/c;->u:I

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/e/c/a;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/bytedance/sdk/component/e/c/c;->w:Lcom/bytedance/sdk/component/e/c/a;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/e/g;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/bytedance/sdk/component/e/c/c;->t:Lcom/bytedance/sdk/component/e/g;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/bytedance/sdk/component/e/c/c;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 231
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/e/c/c;->s:Z

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/e/d/i;)Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/e/c/c;->l:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->q:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/bytedance/sdk/component/e/c/c;->h:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x413c0901

    invoke-virtual {v0, v1, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 189
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/e/c/c;->c:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/bytedance/sdk/component/e/c/c;->i:I

    return v0
.end method

.method public d()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->f:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/component/e/n;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->e:Lcom/bytedance/sdk/component/e/n;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->g:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public i()Lcom/bytedance/sdk/component/e/t;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->j:Lcom/bytedance/sdk/component/e/t;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/e/c/c;->m:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/e/c/c;->n:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/e/c/c;->s:Z

    return v0
.end method

.method public m()Lcom/bytedance/sdk/component/e/g;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->t:Lcom/bytedance/sdk/component/e/g;

    return-object v0
.end method

.method public n()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/bytedance/sdk/component/e/c/c;->u:I

    return v0
.end method

.method public o()Lcom/bytedance/sdk/component/e/c/a;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->w:Lcom/bytedance/sdk/component/e/c/a;

    return-object v0
.end method

.method public p()Lcom/bytedance/sdk/component/e/c/f;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->v:Lcom/bytedance/sdk/component/e/c/f;

    return-object v0
.end method

.method public q()Lcom/bytedance/sdk/component/e/b;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c;->x:Lcom/bytedance/sdk/component/e/b;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/e/c/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/e/c/c;->i()Lcom/bytedance/sdk/component/e/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
