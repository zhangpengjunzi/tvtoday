.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/a;
.super Ljava/lang/Object;
.source "RewardFullBackUpEndCard.java"


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Landroid/widget/FrameLayout;

.field c:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

.field d:Landroid/widget/TextView;

.field e:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field private final h:Landroid/app/Activity;

.field private i:Z

.field private j:Landroid/widget/TextView;

.field private k:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->h:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/view/a;)Landroid/app/Activity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->h:Landroid/app/Activity;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->h:Landroid/app/Activity;

    const-string v1, "tt_reward_full_endcard_backup_container"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->b:Landroid/widget/FrameLayout;

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->h:Landroid/app/Activity;

    const-string v1, "tt_reward_full_endcard_backup"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->a:Landroid/widget/LinearLayout;

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->h:Landroid/app/Activity;

    const-string v1, "tt_reward_ad_icon_backup"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->h:Landroid/app/Activity;

    const-string v1, "tt_reward_ad_appname_backup"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->d:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->h:Landroid/app/Activity;

    const-string v1, "tt_rb_score_backup"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->e:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->h:Landroid/app/Activity;

    const-string v1, "tt_comment_backup"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->f:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->h:Landroid/app/Activity;

    const-string v1, "tt_reward_ad_download_backup"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->g:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->h:Landroid/app/Activity;

    const-string v1, "tt_ad_endcard_logo"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->j:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->i:Z

    .line 57
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->d()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/b/e;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->b:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/a$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/a;)V

    const-string v2, "TTBaseVideoActivity#mFLEndCardBackupContainer"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->h:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/g;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/g;->a(Lcom/bytedance/sdk/openadsdk/core/b/e;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 3

    .line 109
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->h:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/g;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/g;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/k;Landroid/widget/ImageView;)V

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->e:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 122
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->h:Landroid/app/Activity;

    invoke-static {v1, v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;Lcom/bytedance/sdk/openadsdk/core/f/n;Landroid/content/Context;)V

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 125
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 134
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->h:Landroid/app/Activity;

    const-string v2, "tt_comment_num_backup"

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/f/n;Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/a$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/a;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/component/reward/a/e;)Z
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 168
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/a/e;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->b:Landroid/widget/FrameLayout;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 170
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->a:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public b()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->b:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->a:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->k:Lcom/bytedance/sdk/openadsdk/component/reward/a/g;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/g;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 103
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->h:Landroid/app/Activity;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->b(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 104
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
