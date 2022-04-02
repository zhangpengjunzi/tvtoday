.class public Lcom/bytedance/sdk/openadsdk/component/view/a;
.super Ljava/lang/Object;
.source "TTAppOpenAdUserInfo.java"


# static fields
.field private static a:Z

.field private static b:Landroid/graphics/drawable/Drawable;


# instance fields
.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 84
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/view/a;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->g()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/view/a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/view/a;->b()V

    .line 51
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/view/a;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/a;->d:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setVisibility(I)V

    goto :goto_1

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/a;->d:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/view/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/a;->d:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 58
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/view/a;->d:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 62
    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/a;->d:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "tt_user_info"

    .line 28
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/a;->c:Landroid/widget/LinearLayout;

    const-string v0, "tt_app_icon"

    .line 29
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/a;->d:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    const-string v0, "tt_app_name"

    .line 30
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/a;->e:Landroid/widget/TextView;

    .line 31
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/a;->c:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/view/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/view/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/view/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/f/n;FF)V
    .locals 2

    .line 91
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->d()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 95
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->c()I

    move-result v0

    .line 97
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->b()I

    move-result p1

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->P()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/f/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->b()I

    move-result v0

    .line 100
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->P()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/f/k;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/k;->c()I

    move-result p1

    :goto_0
    if-lez v0, :cond_4

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    div-float/2addr p2, v0

    int-to-float p1, p1

    div-float v0, p3, p1

    .line 106
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float p1, p1, p2

    sub-float/2addr p3, p1

    .line 113
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42700000    # 60.0f

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    cmpg-float p2, p3, p1

    if-gez p2, :cond_3

    move p3, p1

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/a;->c:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    float-to-int p3, p3

    invoke-direct {p2, v0, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_1
    return-void
.end method

.method public b()V
    .locals 3

    .line 70
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/component/view/a;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 72
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h;->h()I

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/view/a;->b:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :catchall_0
    :cond_0
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/component/view/a;->a:Z

    :cond_1
    return-void
.end method
