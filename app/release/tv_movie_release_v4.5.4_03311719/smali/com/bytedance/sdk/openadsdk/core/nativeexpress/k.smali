.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;
.source "FeedExpressBackupView.java"


# static fields
.field private static a:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;


# instance fields
.field private m:Landroid/view/View;

.field private n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private o:Lcom/com/bytedance/overseas/sdk/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;

    .line 46
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;

    const/4 v2, 0x2

    const v3, 0x40418c63

    const/16 v4, 0x177

    const/16 v5, 0x7c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;-><init>(IFII)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;

    const/4 v3, 0x3

    const/high16 v5, 0x3fa00000    # 1.25f

    const/16 v6, 0x12c

    invoke-direct {v1, v3, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;-><init>(IFII)V

    const/4 v7, 0x1

    aput-object v1, v0, v7

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;

    const/4 v7, 0x4

    const v8, 0x3fb3c679

    const/16 v9, 0x10b

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;-><init>(IFII)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;-><init>(IFII)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;-><init>(IFII)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;

    const/16 v3, 0xf

    invoke-direct {v1, v3, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;-><init>(IFII)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;

    const/16 v2, 0x32

    invoke-direct {v1, v2, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;-><init>(IFII)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 9

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->P()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/f/k;

    if-eqz v0, :cond_3

    .line 214
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    .line 215
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->b()I

    move-result v2

    .line 216
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->c()I

    move-result v3

    int-to-float v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    int-to-float v6, v3

    div-float/2addr v4, v6

    const/4 v6, 0x1

    const/high16 v7, 0x41800000    # 16.0f

    cmpg-float v8, v4, v5

    if-gtz v8, :cond_0

    .line 221
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->h:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result v2

    sub-int v3, v1, v2

    .line 222
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->h:I

    :goto_0
    int-to-float v1, v1

    mul-float v1, v1, v5

    float-to-int v2, v1

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const v5, 0x3fe3d70a    # 1.78f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    const v5, 0x3ff47ae1    # 1.91f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 225
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->h:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result v2

    sub-int v3, v1, v2

    .line 226
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->h:I

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 232
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 233
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v2, 0x800033

    .line 234
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 235
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/k;Landroid/widget/ImageView;)V

    :cond_3
    return-void
.end method

.method private b(I)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;
    .locals 6

    .line 198
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 200
    :try_start_0
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 201
    iget v5, v4, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, p1, :cond_0

    move-object v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return-object v2
.end method

.method private b()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ad()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b(I)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->g:I

    .line 95
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->h:I

    .line 98
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->g:I

    if-gtz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/u;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->g:I

    .line 103
    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->h:I

    if-gtz v1, :cond_1

    .line 104
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->g:I

    int-to-float v1, v1

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;->b:F

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->h:I

    .line 108
    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->g:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->g:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/u;->c(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->c(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 110
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/u;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->g:I

    .line 111
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->h:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->h:I

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_3

    .line 116
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->g:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->h:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 118
    :cond_3
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->g:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 119
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->h:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_4

    .line 121
    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 123
    :cond_4
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/t;->e(Lcom/bytedance/sdk/openadsdk/core/f/n;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    const-string v0, "draw_ad"

    .line 126
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->f:Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->g()V

    return-void

    :cond_5
    const-string v0, "embeded_ad"

    .line 130
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->f:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ad()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    const/16 v1, 0x32

    if-eq v0, v1, :cond_8

    const/16 v1, 0xf

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    goto :goto_0

    .line 148
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->i()V

    goto :goto_0

    .line 145
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->f()V

    goto :goto_0

    .line 151
    :cond_8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c()V

    goto :goto_0

    .line 142
    :cond_9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->h()V

    goto :goto_0

    .line 136
    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->e()V

    goto :goto_0

    .line 133
    :cond_b
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->d()V

    :goto_0
    return-void
.end method

.method private b(Landroid/widget/ImageView;)V
    .locals 3

    .line 243
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->P()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/f/k;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/k;Landroid/widget/ImageView;)V

    return-void
.end method

.method private c()V
    .locals 9

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v2, "tt_backup_feed_horizontal"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    .line 162
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 164
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v5, "tt_bu_img_container"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    .line 165
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v5, "tt_bu_close"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 168
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v6, "tt_bu_desc"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 169
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v7, "tt_bu_title"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 170
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v8, "tt_bu_download"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 172
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$1;

    invoke-direct {v7, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getVideoView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 189
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 190
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->g:I

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->g:I

    mul-int/lit8 v7, v7, 0x9

    div-int/lit8 v7, v7, 0x10

    invoke-direct {v4, v5, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    :cond_1
    invoke-virtual {p0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Landroid/view/View;Z)V

    .line 194
    invoke-virtual {p0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private d()V
    .locals 7

    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v2, "tt_backup_feed_img_small"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    .line 250
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v3, "tt_bu_img"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 251
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v4, "tt_bu_close"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 252
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v5, "tt_bu_desc"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 253
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v6, "tt_bu_title"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 255
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Landroid/widget/ImageView;)V

    .line 256
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-virtual {p0, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private e()V
    .locals 9

    .line 310
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v2, "tt_backup_feed_horizontal"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    .line 313
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v3, "tt_bu_img_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 316
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v4, "tt_bu_img"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 319
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v5, "tt_bu_close"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 320
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v6, "tt_bu_desc"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 321
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v7, "tt_bu_title"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 322
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v8, "tt_bu_download"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 325
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 326
    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->h:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 328
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Landroid/widget/ImageView;)V

    .line 329
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :cond_0
    invoke-virtual {p0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Landroid/view/View;Z)V

    .line 344
    invoke-virtual {p0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private f()V
    .locals 14

    .line 348
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v2, "tt_backup_feed_vertical"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    .line 351
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 352
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v4, "tt_bu_img_container"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    .line 354
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v4, "tt_bu_video_container_inner"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 357
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v5, "tt_bu_video_icon"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 358
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v6, "tt_bu_close"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 359
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v7, "tt_bu_desc"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 360
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v8, "tt_bu_title"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 361
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v9, "tt_bu_video_name1"

    invoke-static {v8, v9}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 362
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v10, "tt_bu_video_name2"

    invoke-static {v9, v10}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 363
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v11, "tt_bu_download"

    invoke-static {v10, v11}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 364
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v12, "tt_bu_video_score"

    invoke-static {v11, v12}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 365
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v13, "tt_bu_video_score_bar"

    invoke-static {v12, v13}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    .line 367
    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 368
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v12

    iget-object v13, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v3}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 371
    :cond_0
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$4;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v11, :cond_1

    .line 379
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    invoke-static {v10, v11, v3, v4}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;Lcom/bytedance/sdk/openadsdk/core/f/n;Landroid/content/Context;)V

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getNameOrSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 388
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getVideoView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 394
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->g:I

    mul-int/lit8 v4, v4, 0x7b

    div-int/lit16 v4, v4, 0x177

    mul-int/lit8 v5, v4, 0x10

    .line 395
    div-int/lit8 v5, v5, 0x9

    .line 396
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 397
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    :cond_3
    invoke-virtual {p0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Landroid/view/View;Z)V

    .line 401
    invoke-virtual {p0, v9, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private g()V
    .locals 8

    .line 405
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v2, "tt_backup_draw"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    .line 407
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 408
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v4, "tt_bu_desc"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 409
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v5, "tt_bu_title"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 410
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v6, "tt_bu_download"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 412
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 416
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getVideoView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 422
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 423
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 v0, 0x0

    .line 426
    invoke-virtual {p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Landroid/view/View;Z)V

    .line 427
    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Landroid/view/View;Z)V

    .line 428
    invoke-virtual {p0, v4, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private h()V
    .locals 9

    .line 433
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v2, "tt_backup_feed_horizontal"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    .line 436
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 437
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 438
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v5, "tt_bu_img_container"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    .line 439
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v5, "tt_bu_close"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 442
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v6, "tt_bu_desc"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 443
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v7, "tt_bu_title"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 444
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v8, "tt_bu_download"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 446
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$5;

    invoke-direct {v7, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 457
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getVideoView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 463
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 464
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->g:I

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->g:I

    mul-int/lit8 v7, v7, 0x9

    div-int/lit8 v7, v7, 0x10

    invoke-direct {v4, v5, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    :cond_1
    invoke-virtual {p0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Landroid/view/View;Z)V

    .line 468
    invoke-virtual {p0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private i()V
    .locals 9

    .line 473
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v2, "tt_backup_feed_vertical"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    .line 476
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 477
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v3, "tt_bu_img_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 479
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v4, "tt_bu_img"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 482
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v5, "tt_bu_close"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 483
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v6, "tt_bu_desc"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 484
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v7, "tt_bu_title"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 485
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->m:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    const-string v8, "tt_bu_download"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 487
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b(Landroid/widget/ImageView;)V

    .line 488
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    :cond_0
    invoke-virtual {p0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Landroid/view/View;Z)V

    .line 503
    invoke-virtual {p0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;ILcom/bytedance/sdk/openadsdk/core/f/j;)V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/b;)V

    :cond_0
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/com/bytedance/overseas/sdk/a/c;)V
    .locals 2

    const-string v0, "FeedExpressBackupView"

    const-string v1, "show backup view"

    .line 76
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 77
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->setBackgroundColor(I)V

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 79
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 80
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->o:Lcom/com/bytedance/overseas/sdk/a/c;

    .line 82
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/t;->f(Lcom/bytedance/sdk/openadsdk/core/f/n;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->i:I

    .line 83
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->i:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(I)V

    .line 85
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b()V

    .line 86
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
