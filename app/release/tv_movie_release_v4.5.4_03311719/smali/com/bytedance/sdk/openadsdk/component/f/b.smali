.class public Lcom/bytedance/sdk/openadsdk/component/f/b;
.super Ljava/lang/Object;
.source "TTAppOpenAdTopManager.java"


# static fields
.field private static g:Ljava/lang/String; = "Skip"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/bytedance/sdk/openadsdk/component/f/a;

.field private d:I

.field private e:F

.field private f:I

.field private h:Landroid/animation/ValueAnimator;

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->d:I

    const/high16 v1, 0x40a00000    # 5.0f

    .line 23
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->e:F

    .line 25
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->f:I

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_txt_skip"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/f/b;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/f/b;)Lcom/bytedance/sdk/openadsdk/component/f/a;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->c:Lcom/bytedance/sdk/openadsdk/component/f/a;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/f/b;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->i:Z

    return p0
.end method

.method private g()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/f/b$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/f/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/f/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/f/b$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/f/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/f/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 63
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->e:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 64
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->h:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->h:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->h:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/f/b$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/f/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/f/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public a(F)V
    .locals 1

    .line 104
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->e:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/high16 p1, 0x40a00000    # 5.0f

    .line 106
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->e:F

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/f/b;->a()V

    return-void
.end method

.method public a(I)V
    .locals 4

    .line 81
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->d:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    .line 83
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->e:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 86
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->c:Lcom/bytedance/sdk/openadsdk/component/f/a;

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->j:Z

    if-nez v3, :cond_0

    .line 87
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/component/f/a;->a()V

    .line 88
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->j:Z

    .line 91
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->f:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_1

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/f/b;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->i:Z

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "tt_top_dislike"

    .line 36
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->a:Landroid/widget/TextView;

    const-string v0, "tt_top_skip"

    .line 37
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->b:Landroid/widget/TextView;

    .line 38
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_reward_feedback"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/f/b;->g()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/component/f/a;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->c:Lcom/bytedance/sdk/openadsdk/component/f/a;

    return-void
.end method

.method public b()Landroid/animation/ValueAnimator;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->h:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->f:I

    return-void
.end method

.method public c()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->d:I

    return v0
.end method

.method public e()F
    .locals 1

    .line 139
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->e:F

    return v0
.end method

.method public f()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/f/b;->f:I

    return v0
.end method
