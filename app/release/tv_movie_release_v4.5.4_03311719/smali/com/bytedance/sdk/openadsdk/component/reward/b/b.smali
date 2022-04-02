.class public Lcom/bytedance/sdk/openadsdk/component/reward/b/b;
.super Lcom/bytedance/sdk/openadsdk/component/reward/b/a;
.source "RewardFullTypeImage.java"


# instance fields
.field protected i:Landroid/view/View;

.field private j:Z

.field private k:I

.field private l:Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

.field private m:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/f/n;II)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/b/a;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/f/n;II)V

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->j:Z

    const/16 p3, 0x21

    .line 58
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->k:I

    const-string p3, "fullscreen_interstitial_ad"

    .line 69
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->t:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->s:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 74
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ad()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->k:I

    .line 75
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->e:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/b/b;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->s:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->s:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->P()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 304
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/f/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/k;)Lcom/bytedance/sdk/component/e/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/e/i;->a(Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/e/h;

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/b/b;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/reward/b/b;)Landroid/widget/TextView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method public static c(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 384
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 387
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->an()F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private d()V
    .locals 3

    .line 79
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->j:Z

    const/16 v1, 0x21

    const/4 v2, 0x3

    if-eqz v0, :cond_3

    .line 82
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->k:I

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->j()V

    goto :goto_1

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->h()V

    goto :goto_1

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->f()V

    goto :goto_1

    .line 95
    :cond_3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->k:I

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    .line 103
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i()V

    goto :goto_1

    .line 100
    :cond_4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->g()V

    goto :goto_1

    .line 97
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->e()V

    :goto_1
    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->l:Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    if-eqz p1, :cond_3

    .line 241
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->k:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 242
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;->setRatio(F)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const v0, 0x3ff47ae1    # 1.91f

    .line 244
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;->setRatio(F)V

    goto :goto_0

    :cond_2
    const v0, 0x3f0f5c29    # 0.56f

    .line 246
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;->setRatio(F)V

    .line 248
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->l:Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/widget/ImageView;)V

    .line 251
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->m:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    if-eqz p1, :cond_4

    .line 252
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->s:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->s:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 253
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->s:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->m:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 257
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->n:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->s:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->o:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 262
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->s:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->l()V

    .line 265
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->m()V

    return-void
.end method

.method private e(Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/com/bytedance/overseas/sdk/a/c;
    .locals 3

    .line 359
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 360
    new-instance v0, Lcom/com/bytedance/overseas/sdk/a/b;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->t:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/com/bytedance/overseas/sdk/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private e()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_activity_full_image_model_3_191_v"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    .line 112
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->k()V

    return-void
.end method

.method private f()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_activity_full_image_model_3_191_h"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    .line 118
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_ratio_image_view"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->l:Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_full_ad_icon"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->m:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_full_ad_app_name"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->n:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_full_desc"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->o:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_full_comment"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->p:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_full_ad_download"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->r:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_ad_logo"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v3, "tt_image_full_bar"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->l:Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 127
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->m:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 128
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->n:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 129
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->o:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 130
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->p:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 131
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->r:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 132
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/b/b$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/b/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->r:Landroid/widget/TextView;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/b/b$2;

    invoke-direct {v2, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/b/b;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private g()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_activity_full_image_model_33_v"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    .line 161
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->k()V

    return-void
.end method

.method private h()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_activity_full_image_model_33_h"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    .line 167
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->k()V

    return-void
.end method

.method private i()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_activity_full_image_model_173_v"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    .line 173
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_ratio_image_view"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->l:Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_full_ad_icon"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->m:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_full_ad_app_name"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->n:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_full_desc"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->o:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_full_ad_download"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->r:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_ad_logo"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->l:Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 180
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->m:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 181
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->n:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 182
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->o:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 183
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->r:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 184
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/b/b$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/b/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private j()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_activity_full_image_model_173_h"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    .line 200
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->k()V

    return-void
.end method

.method private k()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_ratio_image_view"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->l:Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_full_ad_icon"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->m:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_full_ad_app_name"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->n:Landroid/widget/TextView;

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_full_desc"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->o:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_full_comment"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->p:Landroid/widget/TextView;

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_full_rb_score"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->q:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_full_ad_download"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->r:Landroid/widget/TextView;

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v2, "tt_ad_logo"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 216
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->l:Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 217
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->m:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 218
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->n:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 219
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->o:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 220
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->p:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 221
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->q:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 222
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->r:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a(Landroid/view/View;)V

    .line 223
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/b/b$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/b/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private l()V
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->q:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 312
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;Lcom/bytedance/sdk/openadsdk/core/f/n;Landroid/content/Context;)V

    return-void
.end method

.method private m()V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->s:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v1, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    const-string v3, "tt_comment_num_backup"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/f/n;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private n()Z
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->s:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 412
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->l()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method protected a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 273
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/c;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 276
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->K()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 277
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->K()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 279
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->U()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 280
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->U()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method protected a(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 331
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->s:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    goto :goto_2

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->h:Lcom/bytedance/sdk/openadsdk/core/b/e;

    if-nez v0, :cond_2

    .line 337
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/b/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->s:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->t:Ljava/lang/String;

    .line 338
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/b/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;I)V

    .line 339
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->s:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->e(Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/com/bytedance/overseas/sdk/a/c;

    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Lcom/com/bytedance/overseas/sdk/a/c;)V

    .line 341
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 342
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/f/p;->i(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v2

    const-string v3, "click_scence"

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    .line 343
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Ljava/util/Map;)V

    goto :goto_1

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->h:Lcom/bytedance/sdk/openadsdk/core/b/e;

    .line 351
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 352
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Landroid/app/Activity;)V

    .line 354
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 355
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public a(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 375
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->d()V

    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->s:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->d(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    .line 377
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/component/reward/a/c;Lcom/bytedance/sdk/openadsdk/component/reward/view/d;)V
    .locals 4

    const/16 v0, 0x8

    .line 421
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b(I)V

    .line 422
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->a(I)V

    const/4 v1, 0x0

    .line 423
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/c;->c(Z)V

    .line 424
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/c;->d(Z)V

    .line 425
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->l()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 427
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/c;->a(Z)V

    .line 428
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->d(I)V

    goto :goto_1

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ap()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/c;->a(Z)V

    .line 431
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->d(I)V

    .line 432
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/c;->d()V

    :goto_1
    return-void
.end method

.method protected b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 289
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->U()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->U()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 292
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->V()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 293
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->V()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 392
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 401
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
