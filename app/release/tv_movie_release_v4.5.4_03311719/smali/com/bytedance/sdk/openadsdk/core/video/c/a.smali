.class public abstract Lcom/bytedance/sdk/openadsdk/core/video/c/a;
.super Lcom/bytedance/sdk/openadsdk/core/video/a/a;
.source "BaseVideoController.java"


# instance fields
.field private A:J

.field private B:J

.field private C:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/openvk/component/video/api/d/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private H:I

.field private I:Z

.field private J:Z

.field private K:J

.field private L:Z

.field private M:Z

.field private final N:Ljava/lang/Runnable;

.field private O:J

.field private final P:Landroid/content/BroadcastReceiver;

.field private Q:I

.field private R:Z

.field protected s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected t:J

.field protected u:J

.field protected v:Z

.field protected w:Z

.field protected x:Lcom/bykv/vk/openvk/component/video/api/c/c;

.field y:Lcom/bykv/vk/openvk/component/video/api/a$a;

.field private final z:Landroid/view/ViewGroup;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 4

    .line 386
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;-><init>()V

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A:J

    .line 80
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->B:J

    const/4 v2, 0x0

    .line 83
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->D:Z

    .line 84
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E:Z

    .line 87
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F:Z

    const/4 v3, 0x0

    .line 90
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->s:Ljava/util/Map;

    .line 93
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->t:J

    .line 94
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u:J

    .line 96
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    .line 97
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->w:Z

    .line 98
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Z

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J:Z

    .line 106
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L:Z

    .line 110
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y:Lcom/bykv/vk/openvk/component/video/api/a$a;

    .line 531
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/c/a$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N:Ljava/lang/Runnable;

    .line 1311
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/c/a$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->P:Landroid/content/BroadcastReceiver;

    .line 1327
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->Q:I

    .line 1346
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->R:Z

    .line 387
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->Q:I

    .line 388
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:Landroid/view/ViewGroup;

    .line 389
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h:Ljava/lang/ref/WeakReference;

    .line 390
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 391
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Landroid/content/Context;)V

    .line 392
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/t;->f(Lcom/bytedance/sdk/openadsdk/core/f/n;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->H:I

    return-void
.end method

.method static synthetic A(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic B(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic C(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic D(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic E(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Z
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->P()Z

    move-result p0

    return p0
.end method

.method static synthetic F(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic G(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic H(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M:Z

    return p0
.end method

.method static synthetic I(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic J(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic K(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic L(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic M(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->T()V

    return-void
.end method

.method private N()V
    .locals 5

    .line 544
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->t()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 548
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->H:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->e(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    goto :goto_1

    .line 546
    :cond_2
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/j/f;->y()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 550
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/utils/x;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 551
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/bytedance/sdk/component/utils/x;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic N(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->S()V

    return-void
.end method

.method private O()V
    .locals 7

    .line 561
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-nez v0, :cond_1

    return-void

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/x;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 569
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b()V

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->B:J

    .line 571
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    if-eqz v2, :cond_2

    .line 572
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    invoke-static {v3, v4, v5, v6}, Lcom/bykv/vk/openvk/component/video/a/e/a;->a(JJ)I

    move-result v3

    invoke-interface {v2, v0, v1, v3}, Lcom/bykv/vk/openvk/component/video/api/d/c$a;->a(JI)V

    .line 575
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 576
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E:Z

    .line 577
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(JJ)V

    .line 578
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:J

    .line 579
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u()V

    .line 581
    :cond_3
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Z

    return-void
.end method

.method static synthetic O(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->Q()V

    return-void
.end method

.method static synthetic P(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method private P()Z
    .locals 3

    .line 722
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->an()F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic Q(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method private Q()V
    .locals 7

    .line 736
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_1

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 740
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 741
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v2}, Lcom/bykv/vk/openvk/component/video/api/a;->j()I

    move-result v2

    int-to-float v2, v2

    .line 742
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v3}, Lcom/bykv/vk/openvk/component/video/api/a;->k()I

    move-result v3

    int-to-float v3, v3

    int-to-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v5, v0, v4

    div-float v5, v2, v5

    int-to-float v1, v1

    mul-float v6, v1, v4

    div-float v6, v3, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    mul-float v3, v3, v4

    div-float v0, v1, v3

    mul-float v0, v0, v2

    goto :goto_0

    :cond_1
    mul-float v2, v2, v4

    div-float v1, v0, v2

    mul-float v1, v1, v3

    .line 753
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 754
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 756
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v0

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 757
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 758
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v0

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_4

    .line 759
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "changeVideoSize"

    const-string v2, "changeVideoSizeSupportInteraction error"

    .line 762
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic R(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method private R()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 768
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->G()Lcom/bytedance/sdk/openadsdk/core/f/n$a;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->v()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private S()V
    .locals 15

    const-string v0, ",videoWidth="

    const-string v1, "changeVideoSize"

    .line 825
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeVideoSize start.......mMaterialMeta.getAdSlot()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/f/n;->x()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->R()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, "changeVideoSize start check condition complete ... go .."

    .line 829
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/u;->b(Landroid/content/Context;)[I

    move-result-object v2

    .line 833
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/f/n;->am()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 835
    :goto_0
    aget v6, v2, v4

    int-to-float v8, v6

    .line 836
    aget v2, v2, v5

    int-to-float v9, v2

    .line 837
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v2}, Lcom/bykv/vk/openvk/component/video/api/a;->j()I

    move-result v2

    int-to-float v10, v2

    .line 838
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v2}, Lcom/bykv/vk/openvk/component/video/api/a;->k()I

    move-result v2

    int-to-float v11, v2

    if-eqz v3, :cond_2

    cmpl-float v2, v10, v11

    if-lez v2, :cond_3

    const-string v0, "Separate adaptation for landscape to portrait ....."

    .line 844
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    move-object v7, p0

    .line 845
    invoke-direct/range {v7 .. v12}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(FFFFZ)V

    return-void

    :cond_2
    cmpg-float v2, v10, v11

    if-gez v2, :cond_3

    const-string v0, "Separate adaptation for portrait to landscape....."

    .line 851
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    move-object v7, p0

    .line 852
    invoke-direct/range {v7 .. v12}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(FFFFZ)V

    return-void

    :cond_3
    div-float v2, v10, v11

    div-float v6, v8, v9

    .line 860
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "screenHeight="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ",screenWidth="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "videoHeight="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "video w/h,videoScale="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ",screen  w/h .screenScale="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ",VERTICAL_SCALE(9:16)="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v12, 0x3f100000    # 0.5625f

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ",HORIZONTAL_SCALE(16:9) ="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v13, 0x3fe38e39

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v14, 0x41100000    # 9.0f

    if-eqz v3, :cond_4

    cmpg-float v3, v6, v12

    if-gez v3, :cond_5

    cmpl-float v2, v2, v12

    if-nez v2, :cond_5

    mul-float v14, v14, v9

    div-float v10, v14, v7

    move v11, v9

    goto :goto_1

    :cond_4
    cmpl-float v3, v6, v13

    if-lez v3, :cond_5

    cmpl-float v2, v2, v13

    if-nez v2, :cond_5

    mul-float v14, v14, v8

    div-float v11, v14, v7

    move v10, v8

    :goto_1
    const/4 v4, 0x1

    .line 882
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9002\u914d\u540e\u5bbd\u9ad8\uff1avideoHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_6

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Screen w/h == Video w/h and in other cases\uff0cuse screen width and height\uff0cvideoHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\uff0cvideoWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move v8, v10

    move v9, v11

    .line 892
    :goto_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v2, v8

    float-to-int v3, v9

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 893
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 895
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 896
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v4

    instance-of v4, v4, Landroid/view/TextureView;

    if-eqz v4, :cond_7

    .line 897
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v4

    check-cast v4, Landroid/view/TextureView;

    invoke-virtual {v4, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 898
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v4

    instance-of v4, v4, Landroid/view/SurfaceView;

    if-eqz v4, :cond_8

    .line 899
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    invoke-virtual {v4, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 904
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 906
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 907
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 908
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    const-string v0, "changeVideoSize .... complete ... end !!!"

    .line 911
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    const-string v2, "changeSize error"

    .line 913
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method static synthetic S(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N()V

    return-void
.end method

.method static synthetic T(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method private T()V
    .locals 10

    const-string v0, "changeVideoSize"

    .line 922
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v1, :cond_0

    goto :goto_1

    .line 926
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->am()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 927
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/u;->b(Landroid/content/Context;)[I

    move-result-object v1

    .line 928
    aget v2, v1, v2

    int-to-float v5, v2

    .line 929
    aget v1, v1, v3

    int-to-float v6, v1

    .line 931
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/a;->j()I

    move-result v1

    int-to-float v7, v1

    .line 932
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/a;->k()I

    move-result v1

    int-to-float v8, v1

    move-object v4, p0

    .line 933
    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(FFFFZ)V

    const-string v1, "changeSize=end"

    .line 934
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    const-string v2, "changeSize error"

    .line 936
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method static synthetic U(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method private U()V
    .locals 2

    .line 1261
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(I)V

    .line 1263
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(ZZ)V

    .line 1264
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(Z)V

    .line 1265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->e()V

    .line 1267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->g()V

    :cond_0
    return-void
.end method

.method static synthetic V(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method private V()V
    .locals 4

    .line 1420
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->T()Ljava/util/List;

    move-result-object v0

    .line 1423
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->g()Lcom/bytedance/sdk/openadsdk/j/a;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/util/List;ZLcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/j/a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic W(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic X(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic Y(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    return-wide v0
.end method

.method static synthetic Z(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/a;J)J
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K:J

    return-wide p1
.end method

.method private a(FFFFZ)V
    .locals 3

    const-string v0, "changeVideoSize"

    .line 951
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",screenHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",videoWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    if-lez v2, :cond_0

    cmpg-float v2, p4, v1

    if-gtz v2, :cond_1

    .line 956
    :cond_0
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/component/video/api/c/b;->c()I

    move-result p3

    int-to-float p3, p3

    .line 957
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p4

    invoke-virtual {p4}, Lcom/bykv/vk/openvk/component/video/api/c/b;->b()I

    move-result p4

    int-to-float p4, p4

    :cond_1
    cmpg-float v2, p4, v1

    if-lez v2, :cond_7

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-eqz p5, :cond_4

    cmpg-float p2, p3, p4

    if-gez p2, :cond_3

    return-void

    :cond_3
    const-string p2, "Vertical screen mode use video width compute scale value"

    .line 970
    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    mul-float p4, p4, p1

    div-float/2addr p4, p3

    .line 975
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p1, p1

    float-to-int p3, p4

    invoke-direct {p2, p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 976
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_4
    cmpl-float p1, p3, p4

    if-lez p1, :cond_5

    return-void

    :cond_5
    const-string p1, "Landscape screen mode use video height compute scale value"

    .line 982
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    mul-float p3, p3, p2

    div-float/2addr p3, p4

    .line 987
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p3, p3

    float-to-int p2, p2

    invoke-direct {p1, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 988
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object p2, p1

    .line 991
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 992
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object p1

    instance-of p1, p1, Landroid/view/TextureView;

    if-eqz p1, :cond_6

    .line 993
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 994
    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object p1

    instance-of p1, p1, Landroid/view/SurfaceView;

    if-eqz p1, :cond_8

    .line 995
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_7
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "changeSize error"

    .line 999
    invoke-static {v0, p2, p1}, Lcom/bytedance/sdk/component/utils/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    return-void
.end method

.method private a(JJ)V
    .locals 2

    .line 1064
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    .line 1065
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    .line 1066
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(JJ)V

    .line 1067
    invoke-static {p1, p2, p3, p4}, Lcom/bykv/vk/openvk/component/video/a/e/a;->a(JJ)I

    move-result v0

    .line 1068
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(I)V

    .line 1070
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bykv/vk/openvk/component/video/api/d/c$a;->a(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "CSJ_VIDEO_BaseController"

    const-string p3, "onProgressUpdate error: "

    .line 1074
    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(JZ)V
    .locals 1

    .line 1247
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 1251
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->U()V

    .line 1253
    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {p3, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/a;->a(J)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    .line 378
    const-class v0, Lcom/bykv/vk/openvk/component/video/api/d/b$a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    .line 379
    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/d/b$a;->a:Lcom/bykv/vk/openvk/component/video/api/d/b$a;

    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/d/b$a;->e:Lcom/bykv/vk/openvk/component/video/api/d/b$a;

    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 381
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v3, "tt_video_play_layout_for_live"

    .line 382
    invoke-static {p1, v3}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const/4 v4, 0x1

    move-object v1, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bykv/vk/openvk/component/video/api/d/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    .line 383
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bykv/vk/openvk/component/video/api/d/a;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->O()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/a;JJ)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/a;Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/a;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Z

    return p1
.end method

.method static synthetic aa(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic ab(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic ad(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic ae(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bykv/vk/openvk/component/video/api/a;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    return-object p0
.end method

.method static synthetic af(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    return-wide v0
.end method

.method static synthetic ag(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->n:Z

    return p0
.end method

.method static synthetic ah(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bykv/vk/openvk/component/video/api/a;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    return-object p0
.end method

.method static synthetic ai(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bykv/vk/openvk/component/video/api/a;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    return-object p0
.end method

.method static synthetic aj(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    return-wide v0
.end method

.method static synthetic ak(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->n:Z

    return p0
.end method

.method static synthetic al(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bykv/vk/openvk/component/video/api/a;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/c/a;J)J
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A:J

    return-wide p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 1330
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1333
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result p1

    .line 1335
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->Q:I

    if-ne v0, p1, :cond_1

    return-void

    .line 1339
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 1340
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c(I)Z

    .line 1343
    :cond_2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->Q:I

    return-void
.end method

.method private b(I)Z
    .locals 1

    .line 1257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(I)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/c/a;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->D:Z

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method private c(Lcom/bykv/vk/openvk/component/video/api/c/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 498
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->x:Lcom/bykv/vk/openvk/component/video/api/c/c;

    .line 499
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    .line 503
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/t;->f(Lcom/bytedance/sdk/openadsdk/core/f/n;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->d(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 505
    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->c(I)V

    .line 506
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/a;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)V

    .line 508
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A:J

    .line 509
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 510
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->d(I)V

    .line 511
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->d(I)V

    .line 512
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/video/c/a$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private c(I)Z
    .locals 4

    .line 1291
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    .line 1293
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b()V

    .line 1294
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Z

    .line 1295
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F:Z

    .line 1296
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_1

    .line 1297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(ILcom/bykv/vk/openvk/component/video/api/c/b;Z)Z

    move-result p1

    return p1

    :cond_0
    if-ne v0, v2, :cond_1

    .line 1300
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Z

    .line 1301
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_1

    .line 1302
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->s()V

    :cond_1
    return v3
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Ljava/lang/Runnable;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->D:Z

    return p0
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->V()V

    return-void
.end method

.method static synthetic m(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic n(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic o(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic p(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic q(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic r(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic s(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic t(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic u(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic v(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bykv/vk/openvk/component/video/api/d/c$a;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    return-object p0
.end method

.method static synthetic w(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->B:J

    return-wide v0
.end method

.method static synthetic x(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    return-wide v0
.end method

.method static synthetic y(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    return-wide v0
.end method

.method static synthetic z(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method


# virtual methods
.method public H()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y:Lcom/bykv/vk/openvk/component/video/api/a$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 324
    invoke-interface {v0, v1, v2, v2}, Lcom/bykv/vk/openvk/component/video/api/a$a;->a(Lcom/bykv/vk/openvk/component/video/api/a;II)V

    :cond_0
    return-void
.end method

.method public I()V
    .locals 3

    .line 661
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->D:Z

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->w()V

    .line 663
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a()Lcom/bytedance/sdk/openadsdk/core/k/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a()Lcom/bytedance/sdk/openadsdk/core/k/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/k/d;->c(J)V

    :cond_0
    return-void
.end method

.method public J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->q()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public K()Z
    .locals 1

    .line 1219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a;->h()Z

    move-result v0

    return v0
.end method

.method public L()Z
    .locals 1

    .line 1241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public M()V
    .locals 1

    const/4 v0, 0x1

    .line 1415
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M:Z

    return-void
.end method

.method public a()V
    .locals 2

    .line 1225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->e()V

    .line 1227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a()V

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->v()V

    :cond_1
    const-wide/16 v0, -0x1

    .line 1233
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d(J)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 1117
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1122
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 1123
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_3

    return-void

    .line 1126
    :cond_3
    check-cast v1, Landroid/app/Activity;

    .line 1129
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    :goto_2
    const/16 p1, 0x400

    if-nez v0, :cond_4

    .line 1133
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_3

    .line 1135
    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    :goto_3
    return-void
.end method

.method protected abstract a(II)V
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/b;I)V
    .locals 2

    .line 1032
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-nez p1, :cond_0

    return-void

    .line 1035
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->O:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b(I)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(JZ)V

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/b;IZ)V
    .locals 4

    .line 1048
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1051
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    int-to-long p2, p2

    .line 1052
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    mul-long p2, p2, v0

    long-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    const-string p3, "tt_video_progress_max"

    invoke-static {p1, p3}, Lcom/bytedance/sdk/component/utils/t;->m(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-long p1, p2

    .line 1053
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    long-to-int p2, p1

    int-to-long p1, p2

    .line 1054
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->O:J

    goto :goto_0

    .line 1056
    :cond_1
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->O:J

    .line 1058
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_2

    .line 1059
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->O:J

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(J)V

    :cond_2
    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;)V
    .locals 2

    .line 1006
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1009
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/a;->l()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1010
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b()V

    .line 1011
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(ZZ)V

    .line 1012
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->f()V

    goto :goto_0

    .line 1014
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/a;->m()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1015
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_2

    .line 1016
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(Landroid/view/ViewGroup;)V

    .line 1018
    :cond_2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d(J)V

    .line 1019
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_4

    .line 1020
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(ZZ)V

    goto :goto_0

    .line 1023
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d()V

    .line 1024
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_4

    .line 1025
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(ZZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;ZZ)V
    .locals 1

    .line 1152
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->m:Z

    if-eqz p1, :cond_0

    .line 1153
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b()V

    :cond_0
    if-eqz p3, :cond_1

    .line 1155
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->m:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1156
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(ZZ)V

    .line 1157
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1, p4, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(ZZZ)V

    .line 1159
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/a;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1160
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->f()V

    .line 1161
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->e()V

    goto :goto_0

    .line 1163
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->f()V

    :goto_0
    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/c$a;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/c$b;)V
    .locals 1

    .line 557
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/c$d;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/e$a;Ljava/lang/String;)V
    .locals 2

    .line 1274
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/video/c/a$5;->a:[I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/e$a;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1282
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d()V

    const/4 p1, 0x0

    .line 1283
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Z

    .line 1284
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F:Z

    goto :goto_0

    .line 1279
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(ZI)V

    goto :goto_0

    .line 1276
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b()V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 490
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->s:Ljava/util/Map;

    return-void
.end method

.method public a(ZI)V
    .locals 0

    .line 711
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e()V

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/c/c;)Z
    .locals 9

    const/4 v0, 0x0

    .line 398
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c(Z)V

    if-nez p1, :cond_0

    return v0

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/a;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/a;->a()V

    return v2

    .line 408
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->x:Lcom/bykv/vk/openvk/component/video/api/c/c;

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video local url "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CSJ_VIDEO_BaseController"

    invoke-static {v3, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "No video info"

    .line 411
    invoke-static {v3, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 414
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y()V

    .line 415
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->j()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    .line 416
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->f()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->n:Z

    .line 417
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->e()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    .line 418
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->e()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    .line 419
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:J

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    cmp-long v1, v3, v7

    if-lez v1, :cond_3

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:J

    goto :goto_0

    :cond_3
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    :goto_0
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:J

    .line 421
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v1, :cond_5

    .line 422
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a()V

    .line 424
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->g()V

    .line 425
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->c()I

    move-result v3

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->d()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(II)V

    .line 426
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(Landroid/view/ViewGroup;)V

    .line 430
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-nez v1, :cond_8

    .line 431
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result v1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_6

    goto :goto_1

    .line 435
    :cond_6
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result v1

    if-ne v1, v2, :cond_7

    goto :goto_1

    .line 438
    :cond_7
    new-instance v1, Lcom/bykv/vk/openvk/component/video/a/d/d;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/a/d/d;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    .line 441
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz v1, :cond_9

    .line 442
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y:Lcom/bykv/vk/openvk/component/video/api/a$a;

    invoke-interface {v1, v3}, Lcom/bykv/vk/openvk/component/video/api/a;->a(Lcom/bykv/vk/openvk/component/video/api/a$a;)V

    .line 444
    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A()V

    .line 445
    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->B:J

    .line 447
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c(Lcom/bykv/vk/openvk/component/video/api/c/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v0
.end method

.method public b()V
    .locals 3

    .line 606
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a;->b()V

    .line 609
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->D:Z

    if-eqz v0, :cond_1

    .line 610
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v()V

    .line 611
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a()Lcom/bytedance/sdk/openadsdk/core/k/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a()Lcom/bytedance/sdk/openadsdk/core/k/d;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/k/d;->b(J)V

    :cond_1
    return-void
.end method

.method public b(Lcom/bykv/vk/openvk/component/video/api/c/c;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->x:Lcom/bykv/vk/openvk/component/video/api/c/c;

    return-void
.end method

.method public b(Lcom/bykv/vk/openvk/component/video/api/d/b;I)V
    .locals 0

    .line 1041
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_0

    .line 1042
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->f()V

    :cond_0
    return-void
.end method

.method public b(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1080
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;ZZ)V

    return-void
.end method

.method public b(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;ZZ)V
    .locals 0

    .line 1085
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1088
    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f(Z)V

    .line 1089
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    const-string p1, "CSJ_VIDEO_BaseController"

    const-string p2, "context is not activity, not support this function."

    .line 1090
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1093
    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1094
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(I)V

    .line 1096
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_4

    .line 1097
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Landroid/view/ViewGroup;)V

    .line 1098
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(Z)V

    goto :goto_1

    .line 1101
    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(I)V

    .line 1103
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_4

    .line 1104
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(Landroid/view/ViewGroup;)V

    .line 1105
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(Z)V

    .line 1109
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/component/video/api/d/c$b;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    .line 1111
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Z

    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/component/video/api/d/c$b;->a(Z)V

    :cond_6
    return-void
.end method

.method public c(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;)V
    .locals 0

    .line 1142
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_0

    .line 1143
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->i()V

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x3

    .line 1146
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(ZI)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 629
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a()V

    .line 631
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->s()V

    .line 632
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->v()V

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "resumeVideo:  mIsSurfaceValid = "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 634
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "CSJ_VIDEO_BaseController"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz v1, :cond_3

    .line 636
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/a;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 637
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Z

    if-eqz v1, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E()V

    goto :goto_0

    .line 640
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b(Ljava/lang/Runnable;)V

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "resumeVideo: isPaused = true , mIsSurfaceValid = "

    aput-object v1, v0, v3

    .line 642
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/utils/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->n:Z

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/bykv/vk/openvk/component/video/api/a;->a(ZJZ)V

    .line 648
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->D:Z

    if-eqz v0, :cond_4

    .line 649
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->w()V

    .line 650
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a()Lcom/bytedance/sdk/openadsdk/core/k/d;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 651
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a()Lcom/bytedance/sdk/openadsdk/core/k/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/k/d;->c(J)V

    :cond_4
    return-void
.end method

.method public d(J)V
    .locals 3

    .line 671
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    .line 672
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:J

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:J

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    :goto_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:J

    .line 673
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_1

    .line 674
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a()V

    .line 676
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz p1, :cond_2

    .line 677
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    const/4 p2, 0x1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->n:Z

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/api/a;->a(ZJZ)V

    :cond_2
    return-void
.end method

.method public d(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;)V
    .locals 1

    .line 1169
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1170
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f(Z)V

    .line 1171
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_0

    .line 1172
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(Landroid/view/ViewGroup;)V

    .line 1174
    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 1177
    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(ZI)V

    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a;->d()V

    .line 687
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->i()V

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    if-eqz v0, :cond_2

    .line 694
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/utils/x;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 695
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Lcom/bytedance/sdk/component/utils/x;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/x;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public e(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1183
    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;Z)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 473
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J:Z

    return-void
.end method

.method public f()V
    .locals 0

    .line 716
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e()V

    return-void
.end method

.method protected g(Z)V
    .locals 6

    const-string v0, "changeVideoSize"

    .line 333
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "landingPageChangeVideoSize start.......mMaterialMeta.getAdSlot()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->x()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "landingPageChangeVideoSize start check condition complete ... go .."

    .line 337
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/a;->j()I

    move-result p1

    int-to-float p1, p1

    .line 339
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/a;->k()I

    move-result v1

    int-to-float v1, v1

    .line 343
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v3, p1

    float-to-int v4, v1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 344
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 345
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 346
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v3

    instance-of v3, v3, Landroid/view/TextureView;

    if-eqz v3, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v3

    check-cast v3, Landroid/view/TextureView;

    invoke-virtual {v3, v2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v3

    instance-of v3, v3, Landroid/view/SurfaceView;

    if-eqz v3, :cond_2

    .line 349
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    invoke-virtual {v3, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 352
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    if-lez v4, :cond_5

    .line 353
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p1

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    if-eqz v3, :cond_5

    mul-float p1, p1, v4

    float-to-int p1, p1

    .line 355
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-float v1, v1, v4

    float-to-int p1, v1

    .line 356
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 357
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object p1

    instance-of p1, p1, Landroid/view/TextureView;

    if-eqz p1, :cond_3

    .line 358
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 359
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object p1

    instance-of p1, p1, Landroid/view/SurfaceView;

    if-eqz p1, :cond_4

    .line 360
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M:Z

    if-eqz p1, :cond_5

    .line 363
    iget p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 364
    iget p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 365
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    const-string p1, "changeVideoSize .... complete ... end !!!"

    .line 370
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    const-string v1, "changeSize error"

    .line 372
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public k()J
    .locals 4

    .line 1429
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public l()I
    .locals 4

    .line 485
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    invoke-static {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/a/e/a;->a(JJ)I

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    .line 468
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Z

    return v0
.end method

.method protected abstract t()I
.end method

.method protected abstract u()V
.end method

.method protected abstract v()V
.end method

.method protected abstract w()V
.end method

.method protected abstract x()V
.end method

.method protected abstract y()V
.end method

.method protected abstract z()V
.end method
