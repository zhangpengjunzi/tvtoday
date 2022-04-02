.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/d;
.super Ljava/lang/Object;
.source "RewardFullVideoLayout.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Z

.field a:I

.field b:Landroid/app/Activity;

.field c:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field d:Lcom/bytedance/sdk/openadsdk/component/reward/a/c;

.field public e:Landroid/view/View;

.field f:Landroid/widget/RelativeLayout;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/RelativeLayout;

.field i:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/FrameLayout;

.field n:Landroid/widget/FrameLayout;

.field o:Landroid/widget/FrameLayout;

.field p:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/RelativeLayout;

.field t:Lcom/bytedance/sdk/openadsdk/component/reward/a/d;

.field u:Z

.field protected v:I

.field protected final w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public x:Lcom/bytedance/sdk/openadsdk/core/f/l;

.field y:Ljava/lang/Runnable;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 72
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->a:I

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->u:Z

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->v:I

    .line 107
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 712
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/d;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->y:Ljava/lang/Runnable;

    .line 119
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->C:Z

    .line 120
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/view/d;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->A:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/b/c;)V
    .locals 2

    .line 753
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->m:Landroid/widget/FrameLayout;

    const-string v1, "TTBaseVideoActivity#mVideoNativeFrame"

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/k/a;)V
    .locals 0

    return-void
.end method

.method private b(Ljava/lang/String;)I
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "dimen"

    const-string v2, "android"

    .line 514
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 515
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private s()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v1, "tt_reward_root"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->e:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v1, "tt_video_reward_bar"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v1, "tt_reward_ad_download"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->l:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v1, "tt_reward_ad_icon"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->i:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v1, "tt_reward_ad_appname"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->j:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v1, "tt_comment_vertical"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->k:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v1, "tt_ad_logo"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->q:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v1, "tt_video_ad_close"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->g:Landroid/widget/ImageView;

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v1, "tt_video_ad_close_layout"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->h:Landroid/widget/RelativeLayout;

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v1, "tt_video_reward_container"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->m:Landroid/widget/FrameLayout;

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v1, "tt_click_upper_non_content_layout"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->n:Landroid/widget/FrameLayout;

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v1, "tt_click_lower_non_content_layout"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->o:Landroid/widget/FrameLayout;

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v1, "tt_rb_score"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->p:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v1, "tt_full_reward_video_loading_container"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->s:Landroid/widget/RelativeLayout;

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->p:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 162
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;Lcom/bytedance/sdk/openadsdk/core/f/n;Landroid/content/Context;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->t:Lcom/bytedance/sdk/openadsdk/component/reward/a/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->t:Lcom/bytedance/sdk/openadsdk/component/reward/a/d;

    .line 165
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/d;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->s:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 166
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->t:Lcom/bytedance/sdk/openadsdk/component/reward/a/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/d;->c()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->t:Lcom/bytedance/sdk/openadsdk/component/reward/a/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/d;->a()V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v1, "tt_reward_ad_description"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->r:Landroid/widget/TextView;

    :cond_2
    return-void
.end method

.method private t()Ljava/lang/String;
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 590
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const-string v0, "View"

    return-object v0

    :cond_1
    const-string v0, "Install"

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/f/n;)I
    .locals 4

    .line 639
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v1, "tt_activity_full_reward_video_default_style"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 640
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f/l;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    .line 641
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/f/n;->k(I)V

    .line 642
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v0, "tt_activity_full_reward_video_landingpage_style"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 643
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f/l;->c(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 644
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/f/n;->k(I)V

    .line 645
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v0, "tt_activity_full_reward_landingpage_style"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 647
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->v()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 662
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v0, "tt_activity_full_reward_video_vast_bar_style"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 659
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v0, "tt_activity_full_reward_video_new_bar_style"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 653
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v0, "tt_activity_full_reward_video_no_bar_style"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 654
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f/p;->i(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 655
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 649
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :cond_6
    :goto_0
    return v0
.end method

.method public a(F)V
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->g:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;F)V

    .line 766
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->h:Landroid/widget/RelativeLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;F)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(II)V
    .locals 3

    .line 194
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->u:Z

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 195
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->a(I)V

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x2

    .line 199
    :try_start_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->B:I

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->v()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 201
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const/high16 v2, 0x425c0000    # 55.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->b(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 202
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->b(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 203
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 206
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->b(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 207
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 213
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->v()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 214
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->m:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_2

    .line 215
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/u;->c(Landroid/content/Context;)I

    move-result p1

    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 217
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit8 p1, p1, 0x9

    .line 218
    div-int/lit8 p1, p1, 0x10

    .line 219
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 220
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->d(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v0, p1

    div-int/2addr v0, p2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->v:I

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NonContentAreaHeight:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->v:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RewardFullVideoLayout"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 746
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->m:Landroid/widget/FrameLayout;

    const-string v1, "TTBaseVideoActivity#mVideoNativeFrame"

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->s:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/b/c;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Lcom/bytedance/sdk/openadsdk/component/reward/a/e;)V
    .locals 14

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 236
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const/4 v11, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->w()Lcom/bytedance/sdk/openadsdk/core/f/f;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 237
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->v()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 239
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->w()Lcom/bytedance/sdk/openadsdk/core/f/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/f;->e:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :cond_1
    :goto_0
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->v()I

    move-result v0

    const-string v2, "TTBaseVideoActivity#mRlDownloadBar"

    if-ne v0, v11, :cond_3

    .line 248
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->w()Lcom/bytedance/sdk/openadsdk/core/f/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/f;->a:Z

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 250
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0, v8, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 252
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 255
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->p:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->p:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 261
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->i:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->i:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    .line 264
    :cond_2
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0, v9, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 266
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->p:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    invoke-virtual {v0, v9}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->i:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v0, v9}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 271
    :cond_3
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->v()I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 273
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->w()Lcom/bytedance/sdk/openadsdk/core/f/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/f;->e:Z

    if-eqz v0, :cond_7

    .line 274
    new-instance v12, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$1;

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v3

    const-string v2, "VAST_ACTION_BUTTON"

    move-object v0, v12

    move-object v1, p0

    move-object v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/d;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/k/a;Lcom/bytedance/sdk/openadsdk/core/b/c;Lcom/bytedance/sdk/openadsdk/component/reward/a/e;)V

    .line 283
    new-instance v13, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$2;

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v3

    const-string v2, "VAST_ICON"

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/d;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/k/a;Lcom/bytedance/sdk/openadsdk/core/b/c;Lcom/bytedance/sdk/openadsdk/component/reward/a/e;)V

    .line 291
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 292
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 295
    :cond_4
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->i:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    if-eqz v0, :cond_5

    .line 296
    invoke-virtual {v0, v13}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->i:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v0, v13}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 301
    :cond_5
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 302
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 305
    :cond_6
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 306
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 310
    :cond_7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$3;

    invoke-direct {v0, p0, v9, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/d;Landroid/view/View$OnClickListener;Lcom/bytedance/sdk/openadsdk/component/reward/a/e;)V

    .line 321
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    :cond_8
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 323
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    :cond_9
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->r:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 325
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :cond_a
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->i:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    if-eqz v0, :cond_d

    .line 328
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$4;

    invoke-direct {v1, p0, v9, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/d;Landroid/view/View$OnClickListener;Lcom/bytedance/sdk/openadsdk/component/reward/a/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 344
    :cond_b
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->w()Lcom/bytedance/sdk/openadsdk/core/f/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/f;->c:Z

    if-eqz v0, :cond_c

    .line 345
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 346
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0, v8, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    goto :goto_1

    .line 349
    :cond_c
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0, v9, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 355
    :cond_d
    :goto_1
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->m:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_f

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->w()Lcom/bytedance/sdk/openadsdk/core/f/f;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 356
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->w()Lcom/bytedance/sdk/openadsdk/core/f/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/f;->f:Z

    if-eqz v0, :cond_e

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 357
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->a(Landroid/view/View$OnClickListener;)V

    .line 358
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->a(Lcom/bytedance/sdk/openadsdk/core/b/c;)V

    goto :goto_2

    .line 360
    :cond_e
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->a(Landroid/view/View$OnClickListener;)V

    .line 365
    :cond_f
    :goto_2
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->v()I

    move-result v0

    if-ne v0, v11, :cond_13

    .line 366
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->w()Lcom/bytedance/sdk/openadsdk/core/f/f;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->n:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_11

    .line 367
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 368
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 369
    iget v2, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->v:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 370
    iget-object v2, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->w()Lcom/bytedance/sdk/openadsdk/core/f/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/f;->b:Z

    if-eqz v0, :cond_10

    .line 373
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_3

    .line 376
    :cond_10
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    :cond_11
    :goto_3
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->w()Lcom/bytedance/sdk/openadsdk/core/f/f;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 381
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->o:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_13

    .line 382
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 383
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 384
    iget v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->v:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 385
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->w()Lcom/bytedance/sdk/openadsdk/core/f/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/f;->d:Z

    if-eqz v0, :cond_12

    .line 388
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_4

    .line 391
    :cond_12
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    :cond_13
    :goto_4
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    .line 398
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;IZLcom/bytedance/sdk/openadsdk/component/reward/a/c;)V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->C:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->C:Z

    .line 128
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 129
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->A:Ljava/lang/String;

    .line 130
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->B:I

    .line 131
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->z:Z

    .line 132
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->d:Lcom/bytedance/sdk/openadsdk/component/reward/a/c;

    .line 134
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 135
    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/a/d;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    invoke-direct {p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/a/d;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->t:Lcom/bytedance/sdk/openadsdk/component/reward/a/d;

    .line 136
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->A:Ljava/lang/String;

    iget p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->B:I

    invoke-virtual {p3, p1, p4, p5}, Lcom/bytedance/sdk/openadsdk/component/reward/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;I)V

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->s()V

    .line 139
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/f/l;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->m:Landroid/widget/FrameLayout;

    invoke-direct {p1, p3, p4, p2, p5}, Lcom/bytedance/sdk/openadsdk/core/f/l;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Landroid/widget/FrameLayout;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->x:Lcom/bytedance/sdk/openadsdk/core/f/l;

    .line 140
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/l;->a()V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 524
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/k/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 525
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->l:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 526
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    :cond_0
    return-void

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 533
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->v()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->e()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->g()V

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f/p;->i(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 177
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f()V

    .line 178
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->a(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->a(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->d()V

    .line 181
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->z:Z

    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c()V

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 185
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->a(Lcom/bytedance/sdk/openadsdk/core/k/a;)V

    :cond_2
    return-void
.end method

.method a(Z)V
    .locals 4

    .line 480
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->B:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 482
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 483
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const/high16 v1, 0x43190000    # 153.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->b(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 487
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const/high16 v2, 0x43ca0000    # 404.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->b(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 491
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 492
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_3

    const-string v0, "status_bar_height"

    .line 493
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b(Ljava/lang/String;)I

    move-result v0

    const-string v1, "navigation_bar_height"

    .line 494
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b(Ljava/lang/String;)I

    move-result v1

    if-lez v0, :cond_2

    .line 495
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-le v0, v3, :cond_2

    .line 496
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 497
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->d:Lcom/bytedance/sdk/openadsdk/component/reward/a/c;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/c;->a(I)V

    :cond_2
    if-lez v1, :cond_3

    .line 499
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-le v1, v0, :cond_3

    .line 500
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 506
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->z:Z

    if-nez p1, :cond_4

    .line 507
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    :cond_4
    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->m:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 432
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->n:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 433
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->o:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 434
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 435
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->j:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 436
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->i:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 437
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->k:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 438
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->p:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 439
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->g:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 440
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->h:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 441
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->l:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 442
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->q:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 443
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->s:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->q:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 628
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->u:Z

    return-void
.end method

.method c()V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->z()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->a:I

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_0

    .line 449
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/t;->f(Lcom/bytedance/sdk/openadsdk/core/f/n;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->k(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->a:I

    .line 452
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->u:Z

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 686
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne p1, v0, :cond_0

    .line 687
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 688
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 689
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 690
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->i()V

    :cond_0
    return-void
.end method

.method d()V
    .locals 7

    .line 461
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->v()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const-string v1, "#0070FF"

    .line 462
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 463
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result v1

    const-string v3, "#80000000"

    .line 464
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 465
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result v4

    .line 467
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;-><init>()V

    aget v6, v0, v2

    .line 468
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;

    move-result-object v5

    .line 469
    invoke-virtual {v5, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;

    move-result-object v3

    .line 470
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->a([I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;

    move-result-object v0

    .line 471
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;

    move-result-object v0

    .line 472
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;

    move-result-object v0

    .line 473
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v2, "tt_reward_ad_download_layout"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 475
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->a(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/widget/c$a;)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->g:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 729
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->h:Landroid/widget/RelativeLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 730
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->h:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    .line 731
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->y:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 5

    .line 546
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/t;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 551
    :try_start_0
    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 552
    :cond_2
    :goto_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    .line 556
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const-string v3, "Install"

    if-nez v0, :cond_3

    return-object v3

    .line 561
    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 562
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_8

    const-string v3, "View"

    goto :goto_2

    .line 566
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 568
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/t;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x2

    if-le v0, v4, :cond_6

    if-nez v2, :cond_5

    if-eqz v1, :cond_8

    .line 570
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->t()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_8

    .line 572
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/t;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x7

    if-le v0, v4, :cond_8

    if-nez v2, :cond_7

    if-eqz v1, :cond_8

    .line 574
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->t()Ljava/lang/String;

    move-result-object v3

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    .line 579
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/t;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 580
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 581
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 582
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-object v3
.end method

.method protected f()V
    .locals 4

    .line 598
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->k:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->b:Landroid/app/Activity;

    const-string v3, "tt_comment_num"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/f/n;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected g()V
    .locals 3

    .line 605
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->i:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->i:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/k;Landroid/widget/ImageView;)V

    .line 608
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->b()Lcom/bytedance/sdk/openadsdk/core/k/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->b()Lcom/bytedance/sdk/openadsdk/core/k/b;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/k/b;->b(J)V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 615
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->B:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 623
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public h()Landroid/widget/FrameLayout;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->m:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected i()V
    .locals 15

    .line 696
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 698
    invoke-static {v0, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const v1, 0x3f266666    # 0.65f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 699
    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    const v3, 0x3f43d70a    # 0.765f

    const v4, 0x3f666666    # 0.9f

    .line 700
    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const v4, 0x3f6147ae    # 0.88f

    .line 701
    invoke-static {v4, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const v5, 0x3f733333    # 0.95f

    .line 702
    invoke-static {v5, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 703
    invoke-static {v2, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const/4 v6, 0x6

    new-array v7, v6, [Landroid/animation/Keyframe;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v9, 0x1

    aput-object v1, v7, v9

    const/4 v10, 0x2

    aput-object v3, v7, v10

    const/4 v11, 0x3

    aput-object v4, v7, v11

    const/4 v12, 0x4

    aput-object v5, v7, v12

    const/4 v13, 0x5

    aput-object v2, v7, v13

    const-string v14, "scaleX"

    .line 705
    invoke-static {v14, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    new-array v6, v6, [Landroid/animation/Keyframe;

    aput-object v0, v6, v8

    aput-object v1, v6, v9

    aput-object v3, v6, v10

    aput-object v4, v6, v11

    aput-object v5, v6, v12

    aput-object v2, v6, v13

    const-string v0, "scaleY"

    .line 706
    invoke-static {v0, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 707
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    new-array v2, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v2, v8

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 708
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 709
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public j()Z
    .locals 3

    .line 736
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->h:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 737
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public k()Landroid/view/View;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public l()Landroid/view/View;
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public m()V
    .locals 2

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->t:Lcom/bytedance/sdk/openadsdk/component/reward/a/d;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->t:Lcom/bytedance/sdk/openadsdk/component/reward/a/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/d;->b()V

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->s:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->e:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 784
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->s:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 785
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->x:Lcom/bytedance/sdk/openadsdk/core/f/l;

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->e()V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 799
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public o()V
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->x:Lcom/bytedance/sdk/openadsdk/core/f/l;

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->f()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->x:Lcom/bytedance/sdk/openadsdk/core/f/l;

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->g()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->x:Lcom/bytedance/sdk/openadsdk/core/f/l;

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->h()V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .line 822
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 824
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 825
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 826
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/d;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
