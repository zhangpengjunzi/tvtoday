.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;
.source "FullInteractionStyleView.java"


# instance fields
.field private a:F

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/FrameLayout;

.field private t:Lcom/bytedance/sdk/openadsdk/core/b/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 42
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->p:I

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/f/n;Landroid/content/Context;)Lcom/com/bytedance/overseas/sdk/a/c;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 292
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 293
    new-instance v0, Lcom/com/bytedance/overseas/sdk/a/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->f:Ljava/lang/String;

    invoke-direct {v0, p2, p1, v1}, Lcom/com/bytedance/overseas/sdk/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private a(F)V
    .locals 9

    .line 338
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->getHeightDp()F

    move-result v0

    .line 339
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->getWidthDp()F

    move-result v1

    .line 342
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->p:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 343
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 344
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 346
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 347
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 351
    :goto_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->p:I

    if-eq v1, v3, :cond_1

    .line 352
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/u;->c(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/k/u;->j(Landroid/content/Context;)F

    move-result v4

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/k/u;->d(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 357
    :cond_1
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->p:I

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x42c80000    # 100.0f

    const/16 v6, 0x14

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eq v1, v3, :cond_2

    cmpl-float v1, p1, v7

    if-eqz v1, :cond_3

    cmpl-float v1, p1, v5

    if-eqz v1, :cond_3

    int-to-float v1, v6

    sub-float/2addr v2, v1

    sub-float/2addr v2, v1

    div-float/2addr v2, p1

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    .line 361
    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    move v6, p1

    const/16 v0, 0x14

    const/16 v8, 0x14

    goto :goto_1

    :cond_2
    cmpl-float v1, p1, v7

    if-eqz v1, :cond_3

    cmpl-float v1, p1, v5

    if-eqz v1, :cond_3

    int-to-float v1, v6

    sub-float/2addr v0, v1

    sub-float/2addr v0, v1

    mul-float v0, v0, p1

    sub-float/2addr v2, v0

    div-float/2addr v2, v4

    .line 368
    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    move v0, p1

    move v8, v0

    const/16 p1, 0x14

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 373
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    int-to-float v2, v6

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result v1

    .line 374
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result p1

    .line 375
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    int-to-float v3, v8

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result v2

    .line 376
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result v0

    .line 377
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private a(Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 238
    invoke-static {p2, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 239
    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->a(Landroid/widget/ImageView;)V

    .line 242
    invoke-static {p2, v3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 243
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->P()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 252
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 253
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/f/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/k;)Lcom/bytedance/sdk/component/e/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/e/i;->a(Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/e/h;

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method private b()V
    .locals 6

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->n:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->g:I

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->o:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->h:I

    .line 76
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->a:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 78
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->p:I

    const/16 v2, 0x5dc

    const/16 v3, 0x3e8

    const/16 v4, 0x29a

    const/4 v5, 0x1

    if-ne v1, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/16 v1, 0x6f1

    if-eq v0, v1, :cond_0

    const v0, 0x3f0fdf3b    # 0.562f

    .line 94
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->a(F)V

    .line 95
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->l()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->m()V

    goto :goto_0

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->k()V

    goto :goto_0

    .line 88
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c()V

    goto :goto_0

    .line 82
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->e()V

    goto :goto_0

    :cond_4
    const/16 v1, 0x232

    if-eq v0, v1, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    const v0, 0x3fe374bc    # 1.777f

    .line 114
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->a(F)V

    .line 115
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->j()V

    goto :goto_0

    .line 105
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->h()V

    goto :goto_0

    .line 111
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c()V

    goto :goto_0

    .line 102
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->g()V

    goto :goto_0

    .line 108
    :cond_8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->i()V

    :goto_0
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->t:Lcom/bytedance/sdk/openadsdk/core/b/e;

    if-nez v0, :cond_1

    .line 277
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/b/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->f:Ljava/lang/String;

    .line 278
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/b/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;I)V

    .line 279
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Landroid/content/Context;)Lcom/com/bytedance/overseas/sdk/a/c;

    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/com/bytedance/overseas/sdk/a/c;)V

    .line 284
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 285
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->f:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v2, "tt_interaction_style_1_1"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    .line 124
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->d()V

    .line 125
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->f()V

    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    return-object p0
.end method

.method private d()V
    .locals 7

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v2, "tt_ad_container"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->s:Landroid/widget/FrameLayout;

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v2, "tt_full_img"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 131
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v3, "tt_full_ad_icon"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    .line 132
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v4, "tt_full_ad_app_name"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 133
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v5, "tt_full_ad_download"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 134
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v6, "tt_ad_logo_layout"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 135
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 136
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->s:Landroid/widget/FrameLayout;

    invoke-direct {p0, v5, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->a(Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    .line 139
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 140
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->s:Landroid/widget/FrameLayout;

    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b(Landroid/view/View;)V

    .line 145
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b(Landroid/view/View;)V

    .line 146
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b(Landroid/view/View;)V

    .line 147
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b(Landroid/view/View;)V

    .line 148
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b(Landroid/view/View;)V

    .line 149
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v2, "tt_interaction_style_2_3"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    .line 166
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->d()V

    .line 167
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->f()V

    return-void
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->f:Ljava/lang/String;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v2, "tt_full_ad_desc"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v2, "tt_interaction_style_2_3_h"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    .line 181
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->d()V

    .line 182
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->f()V

    return-void
.end method

.method private getHeightDp()F
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->h(Landroid/content/Context;)I

    move-result v0

    .line 325
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/k/u;->d(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getWidthDp()F
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->i(Landroid/content/Context;)I

    move-result v0

    .line 333
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/k/u;->d(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private h()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v2, "tt_interaction_style_3_2_h"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    .line 188
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->d()V

    return-void
.end method

.method private i()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v2, "tt_interaction_style_9_16_h"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    .line 194
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->d()V

    .line 195
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->f()V

    return-void
.end method

.method private j()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v2, "tt_interaction_style_16_9_h"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    .line 201
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->d()V

    return-void
.end method

.method private k()V
    .locals 5

    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v2, "tt_interaction_style_3_2"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    .line 208
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v2, "tt_ad_container"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->s:Landroid/widget/FrameLayout;

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v2, "tt_bu_img"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 210
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v3, "tt_bu_desc"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 211
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v4, "tt_ad_logo_layout"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 212
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->s:Landroid/widget/FrameLayout;

    invoke-direct {p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->a(Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    .line 213
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->s:Landroid/widget/FrameLayout;

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b(Landroid/view/View;)V

    .line 216
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b(Landroid/view/View;)V

    .line 217
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b(Landroid/view/View;)V

    .line 218
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private l()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v2, "tt_interaction_style_9_16_v"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    .line 260
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->d()V

    return-void
.end method

.method private m()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b:Landroid/content/Context;

    const-string v2, "tt_interaction_style_16_9_v"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    .line 266
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->d()V

    .line 267
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->f()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;ILcom/bytedance/sdk/openadsdk/core/f/j;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/f/n;FIII)V
    .locals 0

    .line 62
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->a:F

    .line 63
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->p:I

    .line 64
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const-string p1, "fullscreen_interstitial_ad"

    .line 65
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->f:Ljava/lang/String;

    .line 66
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->n:I

    .line 67
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->o:I

    .line 69
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->i:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->a(I)V

    .line 70
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->b()V

    return-void
.end method

.method public getInteractionStyleRootView()Landroid/view/View;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->q:Landroid/view/View;

    return-object v0
.end method

.method public getVideoContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->s:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/core/b/e;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->t:Lcom/bytedance/sdk/openadsdk/core/b/e;

    return-void
.end method

.method public setIsMute(Z)V
    .locals 2

    .line 303
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->m:Z

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->r:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    if-eqz v1, :cond_1

    .line 308
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsQuiet(Z)V

    :cond_1
    return-void
.end method
