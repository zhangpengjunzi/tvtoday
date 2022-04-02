.class public Lcom/bytedance/sdk/openadsdk/core/f/l;
.super Ljava/lang/Object;
.source "LandingPageModel.java"


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/view/View;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/view/View;

.field private E:J

.field private F:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private G:Landroid/app/Activity;

.field private H:Ljava/lang/String;

.field private I:Lcom/com/bytedance/overseas/sdk/a/c;

.field private J:Lcom/bytedance/sdk/openadsdk/b/n;

.field private K:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private L:Z

.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/FrameLayout;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/FrameLayout;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/RelativeLayout;

.field g:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field h:Landroid/widget/FrameLayout;

.field i:Landroid/animation/ObjectAnimator;

.field j:Landroid/animation/ObjectAnimator;

.field k:Landroid/animation/ObjectAnimator;

.field l:Landroid/animation/ObjectAnimator;

.field m:Landroid/animation/ObjectAnimator;

.field n:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

.field o:Lcom/bytedance/sdk/openadsdk/core/b/a;

.field p:Lcom/bytedance/sdk/openadsdk/core/b/b;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

.field private v:Landroid/widget/TextView;

.field private w:Lcom/bytedance/sdk/openadsdk/core/y;

.field private x:Lcom/bytedance/sdk/component/widget/SSWebView;

.field private y:Landroid/widget/FrameLayout;

.field private z:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Landroid/widget/FrameLayout;)V
    .locals 10

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->L:Z

    .line 113
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    .line 114
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 115
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->H:Ljava/lang/String;

    .line 116
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/f/l;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "landingpage_split_screen"

    .line 117
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->H:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/f/l;->c(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "landingpage_direct"

    .line 119
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->H:Ljava/lang/String;

    .line 121
    :cond_1
    :goto_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->H:Ljava/lang/String;

    .line 122
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p1, p2, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/b/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->o:Lcom/bytedance/sdk/openadsdk/core/b/a;

    .line 123
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/b/b;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->H:Ljava/lang/String;

    .line 124
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/core/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->p:Lcom/bytedance/sdk/openadsdk/core/b/b;

    .line 125
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->h:Landroid/widget/FrameLayout;

    .line 127
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f/l;->c(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "timeDown"

    const/4 p2, 0x2

    new-array p2, p2, [I

    aput v1, p2, v1

    const/4 p3, 0x1

    .line 128
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a()Lcom/bytedance/sdk/openadsdk/core/f/m;

    move-result-object p4

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/f/m;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    long-to-int p4, v0

    aput p4, p2, p3

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->k:Landroid/animation/ObjectAnimator;

    .line 129
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a()Lcom/bytedance/sdk/openadsdk/core/f/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/m;->b()J

    move-result-wide p2

    mul-long p2, p2, v2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 130
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->k:Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 131
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->k:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/f/l$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/f/l$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/l;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/f/l;J)J
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->E:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/f/l;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/f/l;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->L:Z

    return p1
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 311
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->c(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/f/l;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->H:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z
    .locals 3

    .line 522
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->f()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 524
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->am()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->an()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->an()F

    move-result p0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/f/l;)J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->E:J

    return-wide v0
.end method

.method public static c(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 537
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->f()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 538
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 539
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->an()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->an()F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/f/l;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->m()V

    return-void
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 562
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->E()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->c(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/f/l;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->k()V

    return-void
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/f/l;)Landroid/app/Activity;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/f/l;)Lcom/com/bytedance/overseas/sdk/a/c;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->I:Lcom/com/bytedance/overseas/sdk/a/c;

    return-object p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/f/l;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->L:Z

    return p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/core/f/l;)Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-object p0
.end method

.method private i()V
    .locals 10

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 205
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/a/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a/b;->a(Z)Lcom/bytedance/sdk/openadsdk/core/widget/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a/b;->b(Z)Lcom/bytedance/sdk/openadsdk/core/widget/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a/b;->a(Landroid/webkit/WebView;)V

    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/n;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/b/n;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/b/n;->a(Z)Lcom/bytedance/sdk/openadsdk/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->J:Lcom/bytedance/sdk/openadsdk/b/n;

    .line 208
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->H:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/b/n;->a(Ljava/lang/String;)V

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->j()V

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLandingPage(Z)V

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->H:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setTag(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aA()Lcom/bytedance/sdk/component/widget/b/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setMaterialMeta(Lcom/bytedance/sdk/component/widget/b/a;)V

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/f/l$4;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->w:Lcom/bytedance/sdk/openadsdk/core/y;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 215
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->J:Lcom/bytedance/sdk/openadsdk/b/n;

    const/4 v8, 0x1

    move-object v2, v9

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/f/l$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/l;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/y;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/b/n;Z)V

    .line 214
    invoke-virtual {v0, v9}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 245
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/f/l$5;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->w:Lcom/bytedance/sdk/openadsdk/core/y;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->J:Lcom/bytedance/sdk/openadsdk/b/n;

    invoke-direct {v2, p0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/f/l$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/l;Lcom/bytedance/sdk/openadsdk/core/y;Lcom/bytedance/sdk/openadsdk/b/n;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->I:Lcom/com/bytedance/overseas/sdk/a/c;

    if-nez v0, :cond_1

    .line 257
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->H:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/com/bytedance/overseas/sdk/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)Lcom/com/bytedance/overseas/sdk/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->I:Lcom/com/bytedance/overseas/sdk/a/c;

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/f/l$6;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/f/l$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/l;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    const/16 v3, 0x1132

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/i;->a(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setUserAgentString(Ljava/lang/String;)V

    .line 271
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    .line 272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setMixedContentMode(I)V

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/l$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/f/l$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/l;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->p:Lcom/bytedance/sdk/openadsdk/core/b/b;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->H:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->O()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/j;->a(Lcom/bytedance/sdk/component/widget/SSWebView;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->p()V

    :cond_4
    return-void
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/core/f/l;)Landroid/widget/FrameLayout;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->y:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 295
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/y;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->w:Lcom/bytedance/sdk/openadsdk/core/y;

    .line 296
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->b(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 297
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 298
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 299
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object v0

    const/4 v1, -0x1

    .line 300
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->b(I)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 301
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->F()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->a(I)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->H:Ljava/lang/String;

    .line 302
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 303
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/t;->h(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 304
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/y;

    return-void
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/core/f/l;)Landroid/view/View;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->B:Landroid/view/View;

    return-object p0
.end method

.method private k()V
    .locals 8

    .line 315
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 319
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->H:Ljava/lang/String;

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->E:J

    sub-long v5, v0, v5

    const/4 v7, 0x1

    .line 319
    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;JZ)V

    .line 321
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->l()V

    :cond_1
    :goto_0
    return-void
.end method

.method private l()V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->f:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->c(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 329
    fill-array-data v0, :array_0

    const-string v1, "timeVisible"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->m:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 331
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->m:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/l$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/f/l$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/l;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 340
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/core/f/l;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->o()Z

    move-result p0

    return p0
.end method

.method private m()V
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 348
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-eqz v2, :cond_1

    .line 349
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->j()V

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->q:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->r:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xd

    .line 354
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xa

    .line 355
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 356
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->r:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 358
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->u:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->s:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->t:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->V()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 363
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->b()V

    .line 364
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 365
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->o:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->o:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    return-void
.end method

.method private n()V
    .locals 5

    .line 378
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->C:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "translationY"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    .line 381
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->i:Landroid/animation/ObjectAnimator;

    .line 382
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 383
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->i:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 384
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 385
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->B:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 386
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->B:Landroid/view/View;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/f/l$9;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/f/l$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/l;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 413
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->B:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->p:Lcom/bytedance/sdk/openadsdk/core/b/b;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->h:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->a:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 419
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->a:Landroid/widget/ImageView;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/f/l$10;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/f/l$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/l;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->P()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->P()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 426
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->P()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->P()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/f/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->P()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/f/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/k;Landroid/widget/ImageView;)V

    .line 431
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/a;->a()Lcom/bytedance/sdk/component/e/m;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->P()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/f/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/e/m;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/e/i;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/component/e/t;->b:Lcom/bytedance/sdk/component/e/t;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/e/i;->a(Lcom/bytedance/sdk/component/e/t;)Lcom/bytedance/sdk/component/e/i;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/l$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/f/l$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/l;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/e/i;->a(Lcom/bytedance/sdk/component/e/n;)Lcom/bytedance/sdk/component/e/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :array_0
    .array-data 4
        0x41800000    # 16.0f
        0x0
    .end array-data
.end method

.method private o()Z
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    return v0
.end method

.method private p()V
    .locals 15

    .line 481
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->z:Landroid/animation/AnimatorSet;

    .line 482
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->A:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 484
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/high16 v4, -0x3ef00000    # -9.0f

    aput v4, v3, v1

    const/4 v5, 0x1

    const/high16 v6, 0x41100000    # 9.0f

    aput v6, v3, v5

    const-string v7, "translationY"

    invoke-static {v0, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->j:Landroid/animation/ObjectAnimator;

    .line 485
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 486
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->j:Landroid/animation/ObjectAnimator;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 487
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->z:Landroid/animation/AnimatorSet;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    const/4 v10, 0x1

    .line 488
    :goto_0
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 490
    rem-int/lit8 v11, v10, 0x2

    if-nez v11, :cond_0

    const/high16 v11, 0x41100000    # 9.0f

    goto :goto_1

    :cond_0
    const/high16 v11, -0x3ef00000    # -9.0f

    .line 493
    :goto_1
    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    new-array v13, v2, [F

    neg-float v14, v11

    aput v14, v13, v1

    aput v11, v13, v5

    invoke-static {v12, v7, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 494
    invoke-virtual {v11, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 495
    invoke-virtual {v11, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 496
    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->z:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_reward_browser_webview_loading"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_reward_loading_container"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->y:Landroid/widget/FrameLayout;

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "wave_container"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->A:Landroid/widget/LinearLayout;

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_up_slide"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->B:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_up_slide_image"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->C:Landroid/widget/ImageView;

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_video_container_root"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->D:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_image_reward_container"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->b:Landroid/widget/FrameLayout;

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_image_reward"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->a:Landroid/widget/ImageView;

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_browser_webview_page_loading"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->f:Landroid/widget/RelativeLayout;

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_loading_tip"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->c:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_video_container_back"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->d:Landroid/widget/FrameLayout;

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_back_container"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->r:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_loading_container"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->q:Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_back_container_title"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->s:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_back_container_des"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->t:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_back_container_icon"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->u:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_back_container_download"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->v:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a()Lcom/bytedance/sdk/openadsdk/core/f/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a()Lcom/bytedance/sdk/openadsdk/core/f/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    const-string v1, "tt_ad_loading_logo"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->c(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/l;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/f/l$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/f/l$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/l;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 187
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a()Lcom/bytedance/sdk/openadsdk/core/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/f/m;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    .line 178
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->i()V

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->n()V

    .line 192
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->y:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x40151eb8    # 2.33f

    .line 194
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 195
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->y:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->c(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public a(F)V
    .locals 0

    .line 512
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->G:Landroid/app/Activity;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/c$a;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->n:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    return-void
.end method

.method protected b()V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ad()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 504
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ad()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d()V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->y:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 568
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->D:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->k:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    .line 577
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->l:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 580
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    .line 581
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->l:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->m:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 584
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    .line 585
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->z:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 588
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 590
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->j:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 591
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->i:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    .line 594
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 596
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_6

    .line 597
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ab;->a(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 598
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ab;->a(Landroid/webkit/WebView;)V

    :cond_6
    const/4 v0, 0x0

    .line 600
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->x:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 602
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->w:Lcom/bytedance/sdk/openadsdk/core/y;

    if-eqz v0, :cond_7

    .line 603
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/y;->m()V

    .line 606
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->J:Lcom/bytedance/sdk/openadsdk/b/n;

    if-eqz v0, :cond_8

    .line 607
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/n;->f()V

    :cond_8
    return-void
.end method

.method public f()V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->w:Lcom/bytedance/sdk/openadsdk/core/y;

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/y;->k()V

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->J:Lcom/bytedance/sdk/openadsdk/b/n;

    if-eqz v0, :cond_1

    .line 616
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/n;->d()V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->J:Lcom/bytedance/sdk/openadsdk/b/n;

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/n;->e()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 627
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/v;->a()Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/v;->b(Z)V

    .line 628
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l;->w:Lcom/bytedance/sdk/openadsdk/core/y;

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/y;->l()V

    :cond_0
    return-void
.end method
