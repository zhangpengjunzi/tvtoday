.class public Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;
.super Landroid/widget/LinearLayout;
.source "ShakeAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView$a;,
        Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/bytedance/sdk/component/utils/v;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView$a;

.field private f:Landroid/widget/LinearLayout;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput p3, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->g:I

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->a(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 0

    .line 43
    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p2, "tt_hand_container"

    .line 44
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->f:Landroid/widget/LinearLayout;

    const-string p2, "tt_splash_rock_img"

    .line 45
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->b:Landroid/widget/ImageView;

    const-string p2, "tt_splash_rock_top_text"

    .line 46
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->a:Landroid/widget/TextView;

    const-string p2, "tt_splash_rock_text"

    .line 47
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->d:Landroid/widget/TextView;

    .line 49
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 p2, 0x1

    .line 50
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-string p2, "#57000000"

    .line 51
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 52
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;)Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView$a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->e:Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 72
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 74
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 76
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView$1;-><init>(Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getShakeLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 128
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 129
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->c:Lcom/bytedance/sdk/component/utils/v;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/bytedance/sdk/component/utils/v;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/utils/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->c:Lcom/bytedance/sdk/component/utils/v;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->c:Lcom/bytedance/sdk/component/utils/v;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView$2;-><init>(Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/v;->a(Lcom/bytedance/sdk/component/utils/v$a;)V

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->c:Lcom/bytedance/sdk/component/utils/v;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/v;->a(F)V

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->c:Lcom/bytedance/sdk/component/utils/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/v;->a()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 161
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->c:Lcom/bytedance/sdk/component/utils/v;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/v;->b()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->c:Lcom/bytedance/sdk/component/utils/v;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/v;->a()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/v;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnShakeViewListener(Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView$a;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->e:Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView$a;

    return-void
.end method

.method public setShakeText(Ljava/lang/String;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
