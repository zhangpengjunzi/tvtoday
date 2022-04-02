.class public Lcom/bytedance/sdk/openadsdk/component/reward/a/f;
.super Ljava/lang/Object;
.source "RewardFullWebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/a/f$a;
    }
.end annotation


# static fields
.field private static final I:Lcom/bytedance/sdk/openadsdk/i/f$a;


# instance fields
.field private A:F

.field private B:J

.field private C:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private E:F

.field private F:F

.field private G:Lcom/bytedance/sdk/openadsdk/common/c;

.field private H:Z

.field a:Lcom/bytedance/sdk/openadsdk/core/y;

.field b:Lcom/bytedance/sdk/openadsdk/core/y;

.field protected c:Z

.field protected d:Ljava/lang/String;

.field e:Lcom/bytedance/sdk/openadsdk/b/n;

.field f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field g:I

.field h:Ljava/lang/String;

.field protected i:Lcom/bytedance/sdk/openadsdk/b/u;

.field j:Z

.field protected k:Lcom/bytedance/sdk/openadsdk/f/a;

.field private l:Landroid/app/Activity;

.field private m:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Z

.field private q:I

.field private r:I

.field private s:Lcom/bytedance/sdk/component/widget/SSWebView;

.field private t:Lcom/bytedance/sdk/component/widget/SSWebView;

.field private u:Z

.field private v:Z

.field private w:Lcom/bytedance/sdk/openadsdk/i/g;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 305
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$6;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$6;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->I:Lcom/bytedance/sdk/openadsdk/i/f$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->c:Z

    const/4 v1, 0x0

    .line 118
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->u:Z

    .line 120
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->g:I

    const-string v2, ""

    .line 122
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->h:Ljava/lang/String;

    .line 129
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->j:Z

    .line 145
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->C:Landroid/util/SparseArray;

    .line 146
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->D:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 147
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->E:F

    .line 148
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->F:F

    .line 213
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->k:Lcom/bytedance/sdk/openadsdk/f/a;

    .line 153
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->v:Z

    .line 154
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->l:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;F)F
    .locals 0

    .line 88
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->z:F

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;J)J
    .locals 0

    .line 88
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->B:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->C:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->y:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Ljava/lang/String;)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->D:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .line 914
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;F)F
    .locals 0

    .line 88
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->A:F

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->u:Z

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;F)F
    .locals 0

    .line 88
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->E:F

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;F)F
    .locals 0

    .line 88
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->F:F

    return p1
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Lcom/bytedance/sdk/openadsdk/i/g;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->w:Lcom/bytedance/sdk/openadsdk/i/g;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->B:J

    return-wide v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)F
    .locals 0

    .line 88
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->z:F

    return p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)F
    .locals 0

    .line 88
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->A:F

    return p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)F
    .locals 0

    .line 88
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->E:F

    return p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)F
    .locals 0

    .line 88
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->F:F

    return p0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->H:Z

    return p0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Lcom/bytedance/sdk/openadsdk/common/c;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->G:Lcom/bytedance/sdk/openadsdk/common/c;

    return-object p0
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/util/SparseArray;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->C:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic m(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->u:Z

    return p0
.end method

.method static synthetic n(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/app/Activity;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->l:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic o(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/view/View;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->y:Landroid/view/View;

    return-object p0
.end method

.method static synthetic p(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Landroid/view/View;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->x:Landroid/view/View;

    return-object p0
.end method

.method static synthetic q(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->D:Z

    return p0
.end method

.method static synthetic r(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->p:Z

    return p0
.end method

.method private y()Z
    .locals 3

    .line 924
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 928
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 929
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    const-string v2, "show_landingpage"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method private z()Lcom/bytedance/sdk/openadsdk/b/u;
    .locals 4

    .line 1134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 1135
    :goto_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/u;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->p:Z

    if-eqz v2, :cond_1

    const-string v2, "rewarded_video"

    goto :goto_1

    :cond_1
    const-string v2, "fullscreen_interstitial_ad"

    :goto_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-direct {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/u;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    return-object v1
.end method


# virtual methods
.method a()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->l:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->x:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->d(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->H:Z

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->G:Lcom/bytedance/sdk/openadsdk/common/c;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/c;->d()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->l:Landroid/app/Activity;

    const-string v1, "tt_reward_browser_webview"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->l:Landroid/app/Activity;

    const-string v1, "tt_browser_webview_loading"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->t:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 183
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->t:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 204
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLandingPage(Z)V

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->t:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->n:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, "landingpage_endcard"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setTag(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_3

    .line 208
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->t:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aA()Lcom/bytedance/sdk/component/widget/b/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setMaterialMeta(Lcom/bytedance/sdk/component/widget/b/a;)V

    :cond_3
    return-void
.end method

.method public a(F)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;F)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 556
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 559
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz p1, :cond_3

    .line 560
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->E()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 561
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLandingPage(Z)V

    .line 562
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->n:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "landingpage_endcard"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setTag(Ljava/lang/String;)V

    .line 564
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz p1, :cond_3

    .line 565
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aA()Lcom/bytedance/sdk/component/widget/b/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setMaterialMeta(Lcom/bytedance/sdk/component/widget/b/a;)V

    :cond_3
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->l:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "width"

    .line 463
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "height"

    .line 464
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 465
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    const-string p2, "resize"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 467
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/webkit/DownloadListener;)V
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 939
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/widget/SSWebView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->l:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/a/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a/b;->a(Z)Lcom/bytedance/sdk/openadsdk/core/widget/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a/b;->b(Z)Lcom/bytedance/sdk/openadsdk/core/widget/a/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a/b;->a(Landroid/webkit/WebView;)V

    .line 952
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v2, 0x1132

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/k/i;->a(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setUserAgentString(Ljava/lang/String;)V

    .line 954
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 955
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setMixedContentMode(I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/common/c;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->G:Lcom/bytedance/sdk/openadsdk/common/c;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;IZ)V
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->v:Z

    .line 162
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 163
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->n:Ljava/lang/String;

    .line 164
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->o:I

    .line 165
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->p:Z

    .line 166
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/f/e;Z)V
    .locals 5

    const-string v0, "PlayablePlugin_init"

    .line 323
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->I:Lcom/bytedance/sdk/openadsdk/i/f$a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/f;->a(Lcom/bytedance/sdk/openadsdk/i/f$a;)V

    .line 326
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$7;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Lcom/bytedance/sdk/openadsdk/f/e;)V

    .line 371
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$8;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$8;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)V

    .line 378
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "cid"

    .line 380
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "log_extra"

    .line 381
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-static {v3, v4, p1, v1}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/i/c;Lcom/bytedance/sdk/openadsdk/i/a;)Lcom/bytedance/sdk/openadsdk/i/g;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    .line 383
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/i/g;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/g;

    move-result-object p1

    .line 384
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/common/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/i/g;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/g;

    move-result-object p1

    .line 385
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/g;

    move-result-object p1

    .line 386
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/i/g;

    move-result-object p1

    const-string v1, "sdkEdition"

    .line 387
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/g;

    move-result-object p1

    .line 388
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/i/g;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/g;

    move-result-object p1

    .line 389
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/i/g;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/g;

    move-result-object p1

    const/4 v1, 0x0

    .line 390
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/i/g;->c(Z)Lcom/bytedance/sdk/openadsdk/i/g;

    move-result-object p1

    .line 391
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Z)Lcom/bytedance/sdk/openadsdk/i/g;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->w:Lcom/bytedance/sdk/openadsdk/i/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 396
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$9;

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$9;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    nop

    .line 395
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->w:Lcom/bytedance/sdk/openadsdk/i/g;

    if-nez p1, :cond_1

    .line 396
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$9;

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$9;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/g/e;->a(Lcom/bytedance/sdk/component/g/g;)V

    .line 411
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->w:Lcom/bytedance/sdk/openadsdk/i/g;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f/p;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 412
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->w:Lcom/bytedance/sdk/openadsdk/i/g;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/f/p;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/g;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/g;

    .line 415
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->w:Lcom/bytedance/sdk/openadsdk/i/g;

    if-eqz p1, :cond_5

    .line 416
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/g;->j()Ljava/util/Set;

    move-result-object p1

    .line 417
    new-instance p2, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->w:Lcom/bytedance/sdk/openadsdk/i/g;

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 419
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "subscribe_app_ad"

    .line 422
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "adInfo"

    .line 423
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "webview_time_track"

    .line 424
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "download_app_ad"

    .line 425
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 429
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/y;->a()Lcom/bytedance/sdk/component/a/r;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 431
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$10;

    invoke-direct {v2, p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$10;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/component/a/r;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/e;)Lcom/bytedance/sdk/component/a/r;

    goto :goto_1

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/Boolean;Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/f/e;Ljava/lang/String;)V
    .locals 4

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "rit_scene"

    .line 244
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result p2

    const-string v1, "click_scence"

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    .line 248
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 250
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->z()Lcom/bytedance/sdk/openadsdk/b/u;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->i:Lcom/bytedance/sdk/openadsdk/b/u;

    .line 253
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/y;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->l:Landroid/app/Activity;

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/y;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    .line 254
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->b(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 255
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 256
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 257
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p2

    .line 258
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x5

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    :goto_1
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->b(I)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->k:Lcom/bytedance/sdk/openadsdk/f/a;

    .line 259
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/openadsdk/f/a;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 260
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/t;->h(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 261
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p2

    .line 262
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->y()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p5, "landingpage_endcard"

    :cond_3
    invoke-virtual {p2, p5}, Lcom/bytedance/sdk/openadsdk/core/y;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p2

    .line 263
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p2

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->i:Lcom/bytedance/sdk/openadsdk/b/u;

    .line 264
    invoke-virtual {p2, p5}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/openadsdk/b/u;)Lcom/bytedance/sdk/openadsdk/core/y;

    .line 266
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/y;

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->l:Landroid/app/Activity;

    invoke-direct {p2, p5}, Lcom/bytedance/sdk/openadsdk/core/y;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->b:Lcom/bytedance/sdk/openadsdk/core/y;

    .line 267
    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->t:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p2, p5}, Lcom/bytedance/sdk/openadsdk/core/y;->b(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p2

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 268
    invoke-virtual {p2, p5}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p2

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 269
    invoke-virtual {p5}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Lcom/bytedance/sdk/openadsdk/core/y;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p2

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 270
    invoke-virtual {p5}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Lcom/bytedance/sdk/openadsdk/core/y;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p2

    .line 271
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x5

    :goto_2
    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/y;->b(I)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->t:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 272
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 273
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/k/t;->h(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/y;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->i:Lcom/bytedance/sdk/openadsdk/b/u;

    .line 274
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/openadsdk/b/u;)Lcom/bytedance/sdk/openadsdk/core/y;

    .line 277
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 278
    invoke-virtual {p0, p4, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Lcom/bytedance/sdk/openadsdk/f/e;Z)V

    .line 281
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$5;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/openadsdk/f/h;)Lcom/bytedance/sdk/openadsdk/core/y;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/a/f$a;)V
    .locals 11

    .line 590
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 591
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/n;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/n;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Landroid/webkit/WebView;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/n;->a(Z)Lcom/bytedance/sdk/openadsdk/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->e:Lcom/bytedance/sdk/openadsdk/b/n;

    .line 592
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/n;->a(Z)Lcom/bytedance/sdk/openadsdk/b/n;

    .line 593
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->e:Lcom/bytedance/sdk/openadsdk/b/n;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->y()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "landingpage_endcard"

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/n;->a(Ljava/lang/String;)V

    .line 594
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$11;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->e:Lcom/bytedance/sdk/openadsdk/b/n;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 595
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->E()Z

    move-result v2

    const/4 v10, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v8, 0x1

    :goto_1
    move-object v2, v0

    move-object v3, p0

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$11;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/y;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/b/n;ZLcom/bytedance/sdk/openadsdk/component/reward/a/f$a;)V

    .line 594
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 767
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->E()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 768
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 893
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$3;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->e:Lcom/bytedance/sdk/openadsdk/b/n;

    invoke-direct {v0, p0, v2, v3, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Lcom/bytedance/sdk/openadsdk/core/y;Lcom/bytedance/sdk/openadsdk/b/n;Lcom/bytedance/sdk/openadsdk/component/reward/a/f$a;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 902
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    .line 903
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_4

    .line 904
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 906
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setBackgroundColor(I)V

    .line 907
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p1, v10}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDisplayZoomControls(Z)V

    .line 909
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->b()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 472
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->c:Z

    return-void
.end method

.method public a(ZILjava/lang/String;)V
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->i:Lcom/bytedance/sdk/openadsdk/b/u;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1097
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->b()V

    goto :goto_0

    .line 1099
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/b/u;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 1008
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "endcard_mute"

    .line 1009
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "endcard_show"

    .line 1010
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1011
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    const-string p2, "endcard_control_event"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1013
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    const-string v1, "play.google.com/store"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 479
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->j:Z

    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->c:Z

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/j;->a(Lcom/bytedance/sdk/component/widget/SSWebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(II)V
    .locals 0

    .line 489
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->q:I

    .line 490
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->r:I

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->l:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/y;->b(Z)Lcom/bytedance/sdk/openadsdk/core/y;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 585
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .line 988
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->w:Lcom/bytedance/sdk/openadsdk/i/g;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->w:Lcom/bytedance/sdk/openadsdk/i/g;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/g;->b(Z)Lcom/bytedance/sdk/openadsdk/i/g;

    .line 991
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "viewStatus"

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 992
    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 993
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    const-string v1, "viewableChange"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 996
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public d()Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->t:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-object v0
.end method

.method public d(Z)V
    .locals 2

    .line 1023
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->l:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->w:Lcom/bytedance/sdk/openadsdk/i/g;

    if-eqz v0, :cond_1

    .line 1028
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Z)Lcom/bytedance/sdk/openadsdk/i/g;

    .line 1032
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "endcard_mute"

    .line 1033
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1034
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    const-string v1, "volumeChange"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1036
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public e()Lcom/bytedance/sdk/openadsdk/core/y;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/openadsdk/core/y;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->b:Lcom/bytedance/sdk/openadsdk/core/y;

    return-object v0
.end method

.method public g()Lcom/bytedance/sdk/openadsdk/b/n;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->e:Lcom/bytedance/sdk/openadsdk/b/n;

    return-object v0
.end method

.method public h()V
    .locals 5

    .line 514
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->d(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->an()F

    move-result v0

    .line 516
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 517
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->o:I

    const/4 v2, 0x1

    const-string v3, "?"

    if-ne v1, v2, :cond_1

    .line 518
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&orientation=portrait"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    goto :goto_0

    .line 521
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?orientation=portrait"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    .line 524
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "&aspect_ratio="

    const-string v3, "&width="

    if-eqz v1, :cond_2

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&height="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->r:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->q:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    goto :goto_1

    .line 527
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?height="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->r:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->q:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    .line 530
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->m:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 531
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public i()V
    .locals 3

    const/4 v0, 0x0

    .line 536
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 537
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->i:Lcom/bytedance/sdk/openadsdk/b/u;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 538
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/b/u;->a(Z)V

    .line 539
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->i:Lcom/bytedance/sdk/openadsdk/b/u;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/b/u;->m()V

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    if-eqz v1, :cond_1

    .line 542
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/y;->m()V

    .line 544
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->e:Lcom/bytedance/sdk/openadsdk/b/n;

    if-eqz v1, :cond_2

    .line 545
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/b/n;->f()V

    .line 548
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->w:Lcom/bytedance/sdk/openadsdk/i/g;

    if-eqz v1, :cond_3

    .line 549
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/g;->v()V

    .line 551
    :cond_3
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->l:Landroid/app/Activity;

    return-void
.end method

.method public j()Z
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->i:Lcom/bytedance/sdk/openadsdk/b/u;

    if-eqz v0, :cond_0

    .line 961
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->j()V

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->e:Lcom/bytedance/sdk/openadsdk/b/n;

    if-eqz v0, :cond_1

    .line 964
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/n;->e()V

    :cond_1
    return-void
.end method

.method public l()V
    .locals 2

    .line 969
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->j()V

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 974
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/y;->l()V

    .line 975
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->b(Z)Lcom/bytedance/sdk/openadsdk/core/y;

    .line 976
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->c(Z)V

    const/4 v0, 0x1

    .line 977
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(ZZ)V

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->w:Lcom/bytedance/sdk/openadsdk/i/g;

    if-eqz v0, :cond_2

    .line 981
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/g;->q()V

    .line 982
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->w:Lcom/bytedance/sdk/openadsdk/i/g;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/i/g;->b(Z)Lcom/bytedance/sdk/openadsdk/i/g;

    :cond_2
    return-void
.end method

.method public m()V
    .locals 3

    .line 1041
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_0

    .line 1042
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->h()V

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1045
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/y;->k()V

    .line 1046
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_2

    .line 1047
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->b(Z)Lcom/bytedance/sdk/openadsdk/core/y;

    .line 1049
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->c(Z)V

    .line 1050
    invoke-virtual {p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(ZZ)V

    goto :goto_0

    .line 1052
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/y;->b(Z)Lcom/bytedance/sdk/openadsdk/core/y;

    .line 1053
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->c(Z)V

    .line 1054
    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(ZZ)V

    .line 1058
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->e:Lcom/bytedance/sdk/openadsdk/b/n;

    if-eqz v0, :cond_3

    .line 1059
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/n;->d()V

    .line 1062
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->w:Lcom/bytedance/sdk/openadsdk/i/g;

    if-eqz v0, :cond_4

    .line 1063
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/g;->r()V

    .line 1064
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->s:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1065
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->w:Lcom/bytedance/sdk/openadsdk/i/g;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/i/g;->b(Z)Lcom/bytedance/sdk/openadsdk/i/g;

    :cond_4
    return-void
.end method

.method public n()I
    .locals 1

    .line 1071
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->g:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1079
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->i:Lcom/bytedance/sdk/openadsdk/b/u;

    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->i()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->i:Lcom/bytedance/sdk/openadsdk/b/u;

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->h()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 3

    .line 1110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->e:Lcom/bytedance/sdk/openadsdk/b/n;

    if-eqz v0, :cond_0

    .line 1111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/n;->a(J)V

    :cond_0
    return-void
.end method

.method public u()Z
    .locals 1

    .line 1116
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->j:Z

    return v0
.end method

.method public v()V
    .locals 1

    .line 1121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->i:Lcom/bytedance/sdk/openadsdk/b/u;

    if-eqz v0, :cond_0

    .line 1122
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->c()V

    .line 1123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->i:Lcom/bytedance/sdk/openadsdk/b/u;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->d()V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->i:Lcom/bytedance/sdk/openadsdk/b/u;

    if-eqz v0, :cond_0

    .line 1129
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->k()V

    :cond_0
    return-void
.end method

.method public x()Z
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1142
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/y;->i()Z

    move-result v0

    return v0
.end method
