.class public Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;
.super Landroid/widget/FrameLayout;
.source "PressInteractView.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/bytedance/sdk/component/adexpress/widget/SplashDiffuseView;

.field private d:Landroid/animation/AnimatorSet;

.field private e:Z

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->e:Z

    .line 31
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->a:Landroid/content/Context;

    .line 32
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->d:Landroid/animation/AnimatorSet;

    .line 33
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->c()V

    .line 34
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->d()V

    .line 35
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView$1;-><init>(Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;)Landroid/widget/ImageView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;)Lcom/bytedance/sdk/component/adexpress/widget/SplashDiffuseView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->c:Lcom/bytedance/sdk/component/adexpress/widget/SplashDiffuseView;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->a:Landroid/content/Context;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 50
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/widget/SplashDiffuseView;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/adexpress/widget/SplashDiffuseView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->c:Lcom/bytedance/sdk/component/adexpress/widget/SplashDiffuseView;

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->a:Landroid/content/Context;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/c/b;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 52
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/adexpress/c/b;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 53
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x33

    .line 54
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->a:Landroid/content/Context;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/c/b;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/c/b;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->c:Lcom/bytedance/sdk/component/adexpress/widget/SplashDiffuseView;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->b:Landroid/widget/ImageView;

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->a:Landroid/content/Context;

    const/high16 v1, 0x429c0000    # 78.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/c/b;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 61
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/adexpress/c/b;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 62
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->a:Landroid/content/Context;

    const-string v3, "tt_splash_hand"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/t;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->f:Landroid/widget/TextView;

    const/4 v1, -0x1

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x51

    .line 68
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 69
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->a:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/adexpress/c/b;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 70
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private d()V
    .locals 8

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    .line 77
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 78
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 v4, -0x1

    .line 79
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 80
    new-instance v5, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView$2;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView$2;-><init>(Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 108
    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->b:Landroid/widget/ImageView;

    new-array v6, v1, [F

    fill-array-data v6, :array_1

    const-string v7, "scaleY"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 109
    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 110
    invoke-virtual {v5, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 111
    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 112
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->d:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    aput-object v5, v1, v0

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method static synthetic d(Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->e:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->d:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public setGuideText(Ljava/lang/String;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setGuideTextColor(I)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/PressInteractView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
