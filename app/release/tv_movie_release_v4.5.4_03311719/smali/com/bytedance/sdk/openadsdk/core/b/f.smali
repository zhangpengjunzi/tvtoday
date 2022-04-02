.class public Lcom/bytedance/sdk/openadsdk/core/b/f;
.super Ljava/lang/Object;
.source "TouchInfoHelper.java"


# static fields
.field public static j:I = 0x8

.field private static m:F

.field private static n:F

.field private static o:F

.field private static p:F

.field private static q:J


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:J

.field public f:J

.field public g:I

.field public h:I

.field public i:I

.field public k:Z

.field public l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/b/f;->j:I

    :cond_0
    const/4 v0, 0x0

    .line 37
    sput v0, Lcom/bytedance/sdk/openadsdk/core/b/f;->m:F

    .line 38
    sput v0, Lcom/bytedance/sdk/openadsdk/core/b/f;->n:F

    .line 39
    sput v0, Lcom/bytedance/sdk/openadsdk/core/b/f;->o:F

    .line 40
    sput v0, Lcom/bytedance/sdk/openadsdk/core/b/f;->p:F

    const-wide/16 v0, 0x0

    .line 41
    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/b/f;->q:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 19
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->a:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->b:F

    .line 20
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->c:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->d:F

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->e:J

    .line 22
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->f:J

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->g:I

    const/16 v1, -0x400

    .line 24
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->h:I

    .line 25
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->i:I

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->k:Z

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->l:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->r:I

    .line 43
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->s:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 12

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->h:I

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->g:I

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->i:I

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    if-eq v1, v3, :cond_6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v0, -0x1

    const/4 v5, -0x1

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x4

    const/4 v5, 0x4

    goto/16 :goto_1

    .line 65
    :cond_1
    sget v1, Lcom/bytedance/sdk/openadsdk/core/b/f;->o:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sget v5, Lcom/bytedance/sdk/openadsdk/core/b/f;->m:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    sput v1, Lcom/bytedance/sdk/openadsdk/core/b/f;->o:F

    .line 66
    sget v1, Lcom/bytedance/sdk/openadsdk/core/b/f;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v5, Lcom/bytedance/sdk/openadsdk/core/b/f;->n:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    sput v1, Lcom/bytedance/sdk/openadsdk/core/b/f;->p:F

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/core/b/f;->m:F

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/core/b/f;->n:F

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v5, Lcom/bytedance/sdk/openadsdk/core/b/f;->q:J

    sub-long/2addr v1, v5

    const-wide/16 v5, 0xc8

    cmp-long v7, v1, v5

    if-lez v7, :cond_2

    .line 70
    sget v1, Lcom/bytedance/sdk/openadsdk/core/b/f;->o:F

    sget v2, Lcom/bytedance/sdk/openadsdk/core/b/f;->j:I

    int-to-float v5, v2

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_3

    sget v1, Lcom/bytedance/sdk/openadsdk/core/b/f;->p:F

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 76
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->c:F

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->d:F

    .line 78
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->c:F

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->r:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/o;->a:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gez v1, :cond_4

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->d:F

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->s:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/o;->a:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    .line 79
    :cond_4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->k:Z

    :cond_5
    move v5, v3

    goto :goto_1

    .line 83
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->c:F

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->d:F

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->f:J

    .line 87
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->c:F

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->r:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/core/o;->a:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-gez v1, :cond_7

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->d:F

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->s:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/core/o;->a:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_8

    .line 88
    :cond_7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->k:Z

    :cond_8
    const/4 v5, 0x3

    goto :goto_1

    .line 52
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->r:I

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->s:I

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->a:F

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->b:F

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->e:J

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->g:I

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->h:I

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->i:I

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/bytedance/sdk/openadsdk/core/b/f;->q:J

    .line 62
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->k:Z

    const/4 v5, 0x0

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/f;->l:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/b/c$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v3

    float-to-double v6, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result p1

    float-to-double v8, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/core/b/c$a;-><init>(IDDJ)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
