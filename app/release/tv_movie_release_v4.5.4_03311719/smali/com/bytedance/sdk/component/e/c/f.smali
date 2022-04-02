.class public Lcom/bytedance/sdk/component/e/c/f;
.super Ljava/lang/Object;
.source "LoadFactory.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/e/c/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bytedance/sdk/component/e/l;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/e/p;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/e/q;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/bytedance/sdk/component/e/d;

.field private g:Lcom/bytedance/sdk/component/e/k;

.field private h:Ljava/util/concurrent/ExecutorService;

.field private i:Lcom/bytedance/sdk/component/e/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/e/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->e:Ljava/util/Map;

    invoke-static {p2}, Lcom/bytedance/sdk/component/e/c/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/e/l;

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->b:Lcom/bytedance/sdk/component/e/l;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/e/l;->h()Lcom/bytedance/sdk/component/e/b;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/e/c/a/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/component/e/b;)V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/component/e/b;)Lcom/bytedance/sdk/component/e/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->b:Lcom/bytedance/sdk/component/e/l;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/l;->d()Lcom/bytedance/sdk/component/e/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/a/b/a;->a(Lcom/bytedance/sdk/component/e/p;)Lcom/bytedance/sdk/component/e/p;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/b;->b()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/a/b/a;->a(I)Lcom/bytedance/sdk/component/e/p;

    move-result-object p1

    return-object p1
.end method

.method private e(Lcom/bytedance/sdk/component/e/b;)Lcom/bytedance/sdk/component/e/q;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->b:Lcom/bytedance/sdk/component/e/l;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/l;->e()Lcom/bytedance/sdk/component/e/q;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/b;->b()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/a/b/e;->a(I)Lcom/bytedance/sdk/component/e/q;

    move-result-object p1

    return-object p1
.end method

.method private f(Lcom/bytedance/sdk/component/e/b;)Lcom/bytedance/sdk/component/e/c;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->b:Lcom/bytedance/sdk/component/e/l;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/l;->f()Lcom/bytedance/sdk/component/e/c;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/e/c/a/a/b;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/b;->e()Ljava/io/File;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/b;->a()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/e/c/f;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/bytedance/sdk/component/e/c/a/a/b;-><init>(Ljava/io/File;JLjava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static f1648021086446dc(Ljava/lang/String;)Ljava/lang/String;
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

.method private h()Lcom/bytedance/sdk/component/e/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->b:Lcom/bytedance/sdk/component/e/l;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/l;->c()Lcom/bytedance/sdk/component/e/d;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/e/b/b;->a()Lcom/bytedance/sdk/component/e/d;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private i()Lcom/bytedance/sdk/component/e/k;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->b:Lcom/bytedance/sdk/component/e/l;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/l;->a()Lcom/bytedance/sdk/component/e/k;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b;->a()Lcom/bytedance/sdk/component/e/k;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->b:Lcom/bytedance/sdk/component/e/l;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/l;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/c;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private k()Lcom/bytedance/sdk/component/e/o;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->b:Lcom/bytedance/sdk/component/e/l;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/l;->g()Lcom/bytedance/sdk/component/e/o;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/e/c/g;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/e/c/g;-><init>()V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/e/c/c;)Lcom/bytedance/sdk/component/e/c/b/a;
    .locals 4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->d()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/component/e/c/b/a;->a:Landroid/widget/ImageView$ScaleType;

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->h()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/bytedance/sdk/component/e/c/b/a;->b:Landroid/graphics/Bitmap$Config;

    :cond_1
    new-instance v2, Lcom/bytedance/sdk/component/e/c/b/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/c/c;->c()I

    move-result p1

    invoke-direct {v2, v3, p1, v0, v1}, Lcom/bytedance/sdk/component/e/c/b/a;-><init>(IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V

    return-object v2
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/component/e/c;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/a/a;->a(Ljava/io/File;)Lcom/bytedance/sdk/component/e/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/e/c/f;->c(Lcom/bytedance/sdk/component/e/b;)Lcom/bytedance/sdk/component/e/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bytedance/sdk/component/e/b;)Lcom/bytedance/sdk/component/e/p;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/e/c/a/a;->f()Lcom/bytedance/sdk/component/e/b;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/b;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/e/c/f;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/e/p;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/e/c/f;->d(Lcom/bytedance/sdk/component/e/b;)Lcom/bytedance/sdk/component/e/p;

    move-result-object v1

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/c/f;->c:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/e/q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/bytedance/sdk/component/e/b;)Lcom/bytedance/sdk/component/e/q;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/e/c/a/a;->f()Lcom/bytedance/sdk/component/e/b;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/b;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/e/c/f;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/e/q;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/e/c/f;->e(Lcom/bytedance/sdk/component/e/b;)Lcom/bytedance/sdk/component/e/q;

    move-result-object v1

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/c/f;->d:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/e/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/bytedance/sdk/component/e/b;)Lcom/bytedance/sdk/component/e/c;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/e/c/a/a;->f()Lcom/bytedance/sdk/component/e/b;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/b;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/e/c/f;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/e/c;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/e/c/f;->f(Lcom/bytedance/sdk/component/e/b;)Lcom/bytedance/sdk/component/e/c;

    move-result-object v1

    iget-object p1, p0, Lcom/bytedance/sdk/component/e/c/f;->e:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public c()Lcom/bytedance/sdk/component/e/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->f:Lcom/bytedance/sdk/component/e/d;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/c/f;->h()Lcom/bytedance/sdk/component/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->f:Lcom/bytedance/sdk/component/e/d;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->f:Lcom/bytedance/sdk/component/e/d;

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/component/e/k;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->g:Lcom/bytedance/sdk/component/e/k;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/c/f;->i()Lcom/bytedance/sdk/component/e/k;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->g:Lcom/bytedance/sdk/component/e/k;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->g:Lcom/bytedance/sdk/component/e/k;

    return-object v0
.end method

.method public e()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->h:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/c/f;->j()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->h:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->h:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/e/c/c;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->a:Ljava/util/Map;

    return-object v0
.end method

.method public g()Lcom/bytedance/sdk/component/e/o;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->i:Lcom/bytedance/sdk/component/e/o;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/c/f;->k()Lcom/bytedance/sdk/component/e/o;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->i:Lcom/bytedance/sdk/component/e/o;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/f;->i:Lcom/bytedance/sdk/component/e/o;

    return-object v0
.end method
