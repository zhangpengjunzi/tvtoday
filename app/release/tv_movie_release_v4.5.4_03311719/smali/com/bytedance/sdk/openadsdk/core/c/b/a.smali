.class public Lcom/bytedance/sdk/openadsdk/core/c/b/a;
.super Lcom/bytedance/sdk/openadsdk/core/b/c;
.source "DynamicClickListener.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/d/a;


# instance fields
.field protected a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/bytedance/sdk/component/adexpress/b/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/c;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;IFFFFLandroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "IFFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/b/c$a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tt_id_click_area_type"

    .line 52
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b/a;->c:Lcom/bytedance/sdk/component/adexpress/b/j;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    .line 55
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/b/a;->b:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    .line 56
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;)[I

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v2, v3

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/b/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/u;->c(Landroid/view/View;)[I

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v1, v3

    :cond_1
    const-string v3, ""

    .line 67
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 73
    :catch_0
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/j$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/f/j$a;-><init>()V

    .line 74
    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/f/j$a;->d(F)Lcom/bytedance/sdk/openadsdk/core/f/j$a;

    move-result-object p3

    .line 75
    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/f/j$a;->c(F)Lcom/bytedance/sdk/openadsdk/core/f/j$a;

    move-result-object p3

    .line 76
    invoke-virtual {p3, p5}, Lcom/bytedance/sdk/openadsdk/core/f/j$a;->b(F)Lcom/bytedance/sdk/openadsdk/core/f/j$a;

    move-result-object p3

    .line 77
    invoke-virtual {p3, p6}, Lcom/bytedance/sdk/openadsdk/core/f/j$a;->a(F)Lcom/bytedance/sdk/openadsdk/core/f/j$a;

    move-result-object p3

    iget-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/c/b/a;->w:J

    .line 78
    invoke-virtual {p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/f/j$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/f/j$a;

    move-result-object p3

    iget-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/c/b/a;->x:J

    .line 79
    invoke-virtual {p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/f/j$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/f/j$a;

    move-result-object p3

    const/4 p4, 0x0

    aget p5, v2, p4

    .line 80
    invoke-virtual {p3, p5}, Lcom/bytedance/sdk/openadsdk/core/f/j$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/f/j$a;

    move-result-object p3

    const/4 p5, 0x1

    aget p6, v2, p5

    .line 81
    invoke-virtual {p3, p6}, Lcom/bytedance/sdk/openadsdk/core/f/j$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/f/j$a;

    move-result-object p3

    aget p4, v1, p4

    .line 82
    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/f/j$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/f/j$a;

    move-result-object p3

    aget p4, v1, p5

    .line 83
    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/f/j$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/f/j$a;

    move-result-object p3

    .line 84
    invoke-virtual {p3, p7}, Lcom/bytedance/sdk/openadsdk/core/f/j$a;->a(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/f/j$a;

    move-result-object p3

    iget-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/c/b/a;->C:Z

    .line 85
    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/f/j$a;->a(Z)Lcom/bytedance/sdk/openadsdk/core/f/j$a;

    move-result-object p3

    .line 86
    invoke-virtual {p3, v3}, Lcom/bytedance/sdk/openadsdk/core/f/j$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/f/j$a;

    move-result-object p3

    .line 87
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/f/j$a;->a()Lcom/bytedance/sdk/openadsdk/core/f/j;

    move-result-object p3

    .line 88
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/c/b/a;->c:Lcom/bytedance/sdk/component/adexpress/b/j;

    invoke-interface {p4, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/b/j;->a(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/b;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/b/c$a;",
            ">;Z)V"
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 47
    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/c/b/a;->a(Landroid/view/View;IFFFFLandroid/util/SparseArray;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/adexpress/b/j;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b/a;->c:Lcom/bytedance/sdk/component/adexpress/b/j;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b/a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method
