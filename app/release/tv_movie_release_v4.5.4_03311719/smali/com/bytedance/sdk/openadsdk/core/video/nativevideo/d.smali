.class public Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
.super Ljava/lang/Object;
.source "NativeVideoLayout.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/b/a;
.implements Lcom/bykv/vk/openvk/component/video/api/d/b;
.implements Lcom/bykv/vk/openvk/component/video/api/renderview/a;
.implements Lcom/bytedance/sdk/component/utils/x$a;
.implements Lcom/bytedance/sdk/openadsdk/core/widget/d$a;
.implements Lcom/bytedance/sdk/openadsdk/core/widget/e$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bykv/vk/openvk/component/video/api/b/a;",
        "Lcom/bykv/vk/openvk/component/video/api/d/b<",
        "Lcom/bytedance/sdk/openadsdk/core/f/n;",
        ">;",
        "Lcom/bykv/vk/openvk/component/video/api/renderview/a;",
        "Lcom/bytedance/sdk/component/utils/x$a;",
        "Lcom/bytedance/sdk/openadsdk/core/widget/d$a;",
        "Lcom/bytedance/sdk/openadsdk/core/widget/e$b;"
    }
.end annotation


# instance fields
.field A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

.field B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;

.field C:Z

.field D:Lcom/com/bytedance/overseas/sdk/a/c;

.field E:Lcom/bykv/vk/openvk/component/video/api/d/c;

.field F:Lcom/bytedance/sdk/openadsdk/core/b/a;

.field G:Lcom/bytedance/sdk/openadsdk/core/b/a;

.field H:Z

.field private I:Landroid/view/View;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;

.field private final M:Ljava/lang/String;

.field a:Landroid/view/View;

.field b:Lcom/bykv/vk/openvk/component/video/api/renderview/b;

.field c:Landroid/widget/ImageView;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/widget/ImageView;

.field g:Landroid/view/ViewStub;

.field h:Landroid/view/View;

.field i:Landroid/widget/ImageView;

.field j:Landroid/view/View;

.field k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/ProgressBar;

.field p:Landroid/view/ViewStub;

.field q:I

.field r:I

.field s:I

.field t:I

.field u:Z

.field v:Z

.field w:I

.field x:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/bykv/vk/openvk/component/video/api/d/b$a;",
            ">;"
        }
    .end annotation
.end field

.field y:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bykv/vk/openvk/component/video/api/d/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/EnumSet<",
            "Lcom/bykv/vk/openvk/component/video/api/d/b$a;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Lcom/bykv/vk/openvk/component/video/api/d/c;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 154
    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bykv/vk/openvk/component/video/api/d/c;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bykv/vk/openvk/component/video/api/d/c;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/EnumSet<",
            "Lcom/bykv/vk/openvk/component/video/api/d/b$a;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Lcom/bykv/vk/openvk/component/video/api/d/c;",
            "Z)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->u:Z

    .line 121
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->C:Z

    .line 131
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->H:Z

    .line 321
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->M:Ljava/lang/String;

    .line 139
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    .line 141
    invoke-virtual {p0, p7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->d(Z)V

    .line 142
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    .line 143
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->u:Z

    if-nez p4, :cond_1

    .line 144
    const-class p2, Lcom/bykv/vk/openvk/component/video/api/d/b$a;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->x:Ljava/util/EnumSet;

    .line 145
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->E:Lcom/bykv/vk/openvk/component/video/api/d/c;

    .line 146
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const/16 p2, 0x8

    .line 147
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(I)V

    .line 148
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 149
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->d()V

    .line 150
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->p()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->L:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;

    return-object p0
.end method

.method private b(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 384
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->p:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->p:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const-string v0, "tt_video_ad_cover_center_layout_draw"

    .line 389
    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->I:Landroid/view/View;

    const-string v0, "tt_video_ad_button_draw"

    .line 390
    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->J:Landroid/widget/TextView;

    const-string v0, "tt_video_ad_replay"

    .line 391
    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->K:Landroid/widget/TextView;

    :cond_1
    :goto_0
    return-void
.end method

.method private e(I)I
    .locals 4

    .line 550
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->s:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->t:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    const-string v2, "tt_video_container_maxheight"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/t;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 554
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    const-string v3, "tt_video_container_minheight"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/t;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float p1, p1, v2

    .line 556
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->s:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 557
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->t:I

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int p1, v2

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ge p1, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private f(I)V
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->j:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 687
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->I:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    return-void
.end method

.method private y()Z
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->G()Lcom/bytedance/sdk/openadsdk/core/f/n$a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->p()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private z()V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d$4;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;Landroid/content/Context;)V

    .line 310
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 311
    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 638
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->u:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(ZZ)V

    .line 639
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->w()V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSeekProgress-percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Progress"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->o:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 578
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public a(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 501
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/u;->c(Landroid/content/Context;)I

    move-result p1

    :cond_0
    if-gtz p1, :cond_1

    return-void

    .line 507
    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->q:I

    .line 508
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->k()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->j()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->x:Ljava/util/EnumSet;

    sget-object v1, Lcom/bykv/vk/openvk/component/video/api/d/b$a;->d:Lcom/bykv/vk/openvk/component/video/api/d/b$a;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 511
    :cond_2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->e(I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->r:I

    goto :goto_1

    .line 509
    :cond_3
    :goto_0
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->r:I

    .line 513
    :goto_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->q:I

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->r:I

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(II)V

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(JJ)V
    .locals 0

    return-void
.end method

.method a(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    .line 334
    invoke-virtual {p2, v2}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 337
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "0"

    .line 339
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 341
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_2

    const/high16 v3, 0x180000

    .line 343
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->E:Lcom/bykv/vk/openvk/component/video/api/d/c;

    const-string v3, "NewLiveViewLayout"

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/bykv/vk/openvk/component/video/api/d/c;->s()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    new-instance v2, Lcom/bykv/vk/openvk/component/video/api/renderview/SSRenderTextureView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/bykv/vk/openvk/component/video/api/renderview/SSRenderTextureView;-><init>(Landroid/content/Context;)V

    const-string v4, "use TextureView......"

    .line 345
    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 347
    :cond_3
    new-instance v2, Lcom/bykv/vk/openvk/component/video/api/renderview/SSRenderSurfaceView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/bykv/vk/openvk/component/video/api/renderview/SSRenderSurfaceView;-><init>(Landroid/content/Context;)V

    const-string v4, "use SurfaceView......"

    .line 348
    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_1
    instance-of v3, p2, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_4

    .line 351
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 352
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 353
    move-object v4, p2

    check-cast v4, Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const/16 v3, 0x8

    .line 355
    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 356
    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b:Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    const-string v2, "tt_video_play"

    .line 358
    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c:Landroid/widget/ImageView;

    const-string v2, "tt_video_progress"

    .line 359
    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->o:Landroid/widget/ProgressBar;

    const-string v2, "tt_video_loading_retry_layout"

    .line 360
    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->d:Landroid/view/View;

    const-string v2, "tt_video_loading_progress"

    .line 361
    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->e:Landroid/view/View;

    const-string v2, "tt_video_loading_cover_image"

    .line 362
    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->f:Landroid/widget/ImageView;

    const-string v2, "tt_video_ad_cover"

    .line 364
    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->g:Landroid/view/ViewStub;

    const-string v2, "tt_video_draw_layout_viewStub"

    .line 365
    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->p:Landroid/view/ViewStub;

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NativeVideoLayout**findViews use time :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "useTime"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p2, 0x1

    .line 898
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->v:Z

    .line 899
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->t()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 900
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;

    invoke-interface {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;->a(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1051
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b:Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/renderview/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 867
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->v:Z

    .line 868
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;->a(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;III)V
    .locals 7

    .line 875
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b:Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/renderview/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 878
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;->a(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/SurfaceHolder;III)V

    :cond_1
    return-void
.end method

.method a(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 372
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->g:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->g:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->h:Landroid/view/View;

    const-string v0, "tt_video_ad_finish_cover_image"

    .line 375
    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->i:Landroid/widget/ImageView;

    const-string v0, "tt_video_ad_cover_center_layout"

    .line 376
    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->j:Landroid/view/View;

    const-string v0, "tt_video_ad_logo_image"

    .line 377
    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    const-string v0, "tt_video_btn_ad_image_tv"

    .line 378
    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->l:Landroid/widget/TextView;

    const-string v0, "tt_video_ad_name"

    .line 379
    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->m:Landroid/widget/TextView;

    const-string v0, "tt_video_ad_button"

    .line 380
    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->n:Landroid/widget/TextView;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/a;)V
    .locals 1

    .line 421
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;

    if-eqz v0, :cond_0

    .line 422
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;

    .line 423
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->r()V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/ref/WeakReference;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 699
    :cond_0
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->u:Z

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(ZZ)V

    .line 700
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 701
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->h:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 702
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 704
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    .line 705
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 709
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/k/t;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 710
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(Landroid/view/View;Landroid/content/Context;)V

    .line 711
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->j:Landroid/view/View;

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 712
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->i:Landroid/widget/ImageView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 713
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->I:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 714
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->J:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 715
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->K:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 716
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->K:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result p2

    if-nez p2, :cond_3

    .line 717
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->K:Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 720
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->h:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 721
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/c/b;->g()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 732
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/c/b;->e()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/c/b;->h()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d$7;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;)V

    invoke-static {v0, v1, p2, v2}, Lcom/bykv/vk/openvk/component/video/a/e/b;->a(JLjava/lang/String;Lcom/bykv/vk/openvk/component/video/a/e/b$b;)V

    goto :goto_0

    .line 755
    :cond_5
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->j:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 756
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/c/b;->g()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 757
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->i:Landroid/widget/ImageView;

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 762
    :cond_6
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->K()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 763
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->K()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 764
    :cond_7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->U()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 765
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->U()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 766
    :cond_8
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->V()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 767
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->V()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_9
    const-string p2, ""

    .line 771
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    const/4 v1, 0x4

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 772
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 773
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->l:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 774
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/k;Landroid/widget/ImageView;)V

    .line 776
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 777
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 780
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 785
    :cond_b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 786
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 787
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->l:Landroid/widget/TextView;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 788
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    const/4 v2, 0x1

    .line 789
    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 791
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 794
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 795
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 800
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 801
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    :cond_e
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->m:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 804
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->n:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 806
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->W()Ljava/lang/String;

    move-result-object p2

    .line 807
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 808
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result p1

    const/4 p2, 0x2

    const-string p3, "tt_video_mobile_go_detail"

    if-eq p1, p2, :cond_11

    const/4 p2, 0x3

    if-eq p1, p2, :cond_11

    if-eq p1, v1, :cond_10

    const/4 p2, 0x5

    if-eq p1, p2, :cond_f

    .line 820
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 813
    :cond_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    const-string p2, "tt_video_dial_phone"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 810
    :cond_10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    const-string p2, "tt_video_download_apk"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 817
    :cond_11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/bytedance/sdk/component/utils/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 824
    :cond_12
    :goto_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->n:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    .line 825
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->n:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->n:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 830
    :cond_13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->J:Landroid/widget/TextView;

    if-eqz p1, :cond_14

    .line 831
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->J:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->J:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 836
    :cond_14
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->H:Z

    if-nez p1, :cond_15

    .line 837
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->f(I)V

    :cond_15
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->L:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/ref/WeakReference;Z)V
    .locals 0

    .line 66
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 691
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->H:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 986
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->o:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 987
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(ZZZ)V
    .locals 0

    .line 972
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->o:Landroid/widget/ProgressBar;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 973
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(ILcom/bykv/vk/openvk/component/video/api/c/b;Z)Z
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(ILcom/bykv/vk/openvk/component/video/api/c/b;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public a(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x0

    .line 911
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->v:Z

    .line 912
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;->b(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/graphics/SurfaceTexture;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/view/View;)V

    .line 845
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/view/View;)V

    .line 846
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 847
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-lez p1, :cond_1

    .line 541
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_2

    if-lez p2, :cond_3

    .line 544
    :cond_2
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 546
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b:Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/renderview/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 888
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->v:Z

    .line 889
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;->b(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public b(ZZ)V
    .locals 1

    .line 518
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 520
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    const-string v0, "tt_play_movebar_textpage"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 522
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    const-string v0, "tt_stop_movebar_textpage"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()Landroid/view/View;
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .line 1011
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->w:I

    .line 1012
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    return-void
.end method

.method public c(II)V
    .locals 0

    .line 570
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->s:I

    .line 571
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->t:I

    return-void
.end method

.method public c(Landroid/view/ViewGroup;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x0

    .line 604
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(I)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method d()V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b:Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/api/renderview/b;->a(Lcom/bykv/vk/openvk/component/video/api/renderview/a;)V

    .line 444
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 461
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b:Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    if-eqz v0, :cond_0

    .line 462
    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/renderview/b;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 467
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->C:Z

    if-eqz p1, :cond_1

    .line 469
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 470
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    .line 472
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    if-eqz p1, :cond_3

    .line 473
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    goto :goto_0

    .line 476
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 477
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    .line 479
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    if-eqz p1, :cond_3

    .line 480
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 3

    .line 613
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->f(Landroid/view/View;)V

    .line 614
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->f(Landroid/view/View;)V

    .line 616
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->f(Landroid/view/View;)V

    .line 619
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->e(Landroid/view/View;)V

    return-void
.end method

.method public i()V
    .locals 3

    .line 925
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->o:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 926
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    const/16 v0, 0x8

    .line 928
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(I)V

    .line 929
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b:Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    invoke-interface {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/renderview/b;->setVisibility(I)V

    .line 932
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 933
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 935
    :cond_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(I)V

    .line 936
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->h:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 937
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->i:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 938
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->j:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 939
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 940
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->l:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 941
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->m:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 942
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 943
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Z)V

    :cond_2
    return-void
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    .line 954
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->u:Z

    return v0
.end method

.method public l()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 992
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(ZZ)V

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1006
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->v:Z

    return v0
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()Z
    .locals 1

    .line 1030
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method p()V
    .locals 9

    .line 159
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->C:Z

    if-eqz v0, :cond_0

    const-string v0, "embeded_ad"

    goto :goto_0

    :cond_0
    const-string v0, "embeded_ad_landingpage"

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/t;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 161
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->C:Z

    if-eqz v0, :cond_1

    const-string v0, "draw_ad"

    goto :goto_1

    :cond_1
    const-string v0, "draw_ad_landingpage"

    :goto_1
    const/4 v1, 0x6

    move-object v7, v0

    const/4 v8, 0x6

    goto :goto_2

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/t;->c(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    const-string v0, "rewarded_video"

    move-object v7, v0

    const/4 v8, 0x7

    goto :goto_2

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/t;->d(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    const-string v0, "fullscreen_interstitial_ad"

    move-object v7, v0

    const/4 v8, 0x5

    goto :goto_2

    :cond_4
    move-object v7, v0

    const/4 v8, 0x1

    .line 178
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0, v1, v7}, Lcom/com/bytedance/overseas/sdk/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)Lcom/com/bytedance/overseas/sdk/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->D:Lcom/com/bytedance/overseas/sdk/a/c;

    .line 183
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z()V

    .line 185
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/b/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-direct {v0, v1, v3, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/b/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    .line 186
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b(Z)V

    .line 187
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->C:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    goto :goto_3

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->c(Z)V

    .line 193
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->E:Lcom/bykv/vk/openvk/component/video/api/d/c;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/bykv/vk/openvk/component/video/api/d/c;)V

    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->d(Z)V

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->D:Lcom/com/bytedance/overseas/sdk/a/c;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    if-eqz v3, :cond_7

    .line 204
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/com/bytedance/overseas/sdk/a/c;)V

    .line 208
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 209
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d$2;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->y:Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    .line 229
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d$3;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b(Z)V

    .line 239
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->C:Z

    if-eqz v0, :cond_8

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    goto :goto_4

    .line 242
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    .line 244
    :goto_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->E:Lcom/bykv/vk/openvk/component/video/api/d/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/bykv/vk/openvk/component/video/api/d/c;)V

    .line 245
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->d(Z)V

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->D:Lcom/com/bytedance/overseas/sdk/a/c;

    if-eqz v0, :cond_9

    .line 247
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/com/bytedance/overseas/sdk/a/c;)V

    .line 250
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 251
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_a
    return-void
.end method

.method public q()Lcom/bykv/vk/openvk/component/video/api/renderview/b;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b:Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    return-object v0
.end method

.method r()V
    .locals 5

    .line 397
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-nez v0, :cond_0

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 400
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/e;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    .line 401
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->z:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 402
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;

    invoke-virtual {v2, v3, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;Lcom/bytedance/sdk/openadsdk/core/widget/e$b;)V

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoTrafficTipLayout use time :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "useTime"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 415
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Z)V

    :cond_0
    return-void
.end method

.method t()Z
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;

    if-nez v0, :cond_0

    const-string v0, "NewLiveViewLayout"

    const-string v1, "callback is null"

    .line 436
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public u()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->f(Landroid/view/View;)V

    .line 631
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->f(Landroid/view/View;)V

    .line 632
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 655
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b:Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    if-eqz v0, :cond_0

    .line 656
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/renderview/b;->getView()Landroid/view/View;

    move-result-object v0

    .line 667
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method w()V
    .locals 2

    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 674
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->i:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 675
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->j:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 676
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 677
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->l:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 678
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->m:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V

    .line 679
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->n:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/u;->a(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method x()Z
    .locals 2

    .line 1039
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->x:Ljava/util/EnumSet;

    sget-object v1, Lcom/bykv/vk/openvk/component/video/api/d/b$a;->c:Lcom/bykv/vk/openvk/component/video/api/d/b$a;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->u:Z

    if-eqz v0, :cond_0

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
