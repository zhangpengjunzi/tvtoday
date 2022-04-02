.class public Lcom/bytedance/sdk/openadsdk/core/k/c/a;
.super Ljava/lang/Object;
.source "ResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;,
        Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k/c/a$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/k/c/a$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k/c/a;->a:Ljava/util/Set;

    .line 122
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k/c/a$2;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/k/c/a$2;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k/c/a;->b:Ljava/util/Set;

    return-void
.end method

.method public static a(Landroid/content/Context;IILcom/bytedance/sdk/openadsdk/core/k/c/a$b;)Landroid/graphics/Point;
    .locals 6

    if-nez p0, :cond_0

    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p0

    .line 70
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    const-string v1, "window"

    .line 71
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 72
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 74
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float p1, p1

    .line 76
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result p1

    int-to-float p2, p2

    .line 77
    invoke-static {p0, p2}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result p2

    if-gt p1, v2, :cond_1

    if-gt p2, v1, :cond_1

    return-object v0

    .line 85
    :cond_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 86
    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;->a:Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;

    if-ne v4, p3, :cond_2

    .line 87
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v3, Landroid/graphics/Point;->x:I

    .line 88
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_2
    int-to-float p1, p1

    int-to-float p3, v2

    div-float p3, p1, p3

    int-to-float p2, p2

    int-to-float v4, v1

    div-float v4, p2, v4

    cmpl-float v5, p3, v4

    if-ltz v5, :cond_3

    .line 94
    iput v2, v3, Landroid/graphics/Point;->x:I

    div-float/2addr p2, p3

    float-to-int p1, p2

    .line 95
    iput p1, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_3
    div-float/2addr p1, v4

    float-to-int p1, p1

    .line 97
    iput p1, v3, Landroid/graphics/Point;->x:I

    .line 98
    iput v1, v3, Landroid/graphics/Point;->y:I

    .line 101
    :goto_0
    iget p1, v3, Landroid/graphics/Point;->x:I

    if-ltz p1, :cond_5

    iget p1, v3, Landroid/graphics/Point;->y:I

    if-gez p1, :cond_4

    goto :goto_1

    .line 105
    :cond_4
    iget p1, v3, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, v3, Landroid/graphics/Point;->x:I

    .line 106
    iget p1, v3, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->d(Landroid/content/Context;F)I

    move-result p0

    iput p0, v3, Landroid/graphics/Point;->y:I

    return-object v3

    :cond_5
    :goto_1
    return-object v0
.end method
