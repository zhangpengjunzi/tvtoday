.class public Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;
.super Lcom/bytedance/sdk/openadsdk/core/video/a/a;
.source "NativeVideoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/openvk/component/video/api/d/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/openvk/component/video/api/d/c$d;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private K:I

.field private L:I

.field private M:I

.field private N:Z

.field private O:Z

.field private P:Lcom/bykv/vk/openvk/component/video/api/c/c;

.field private Q:J

.field private R:Lcom/bytedance/sdk/openadsdk/b/j;

.field private S:Lcom/bykv/vk/openvk/component/video/api/a$a;

.field private T:I

.field private U:J

.field private V:J

.field private W:J

.field private X:J

.field private final Y:Landroid/content/BroadcastReceiver;

.field private Z:I

.field private aa:Z

.field s:Ljava/lang/Runnable;

.field private final t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private u:J

.field private v:J

.field private w:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

.field private final x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;ZZLcom/bytedance/sdk/openadsdk/b/j;)V
    .locals 5

    .line 507
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;-><init>()V

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->u:J

    .line 76
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->v:J

    const/4 v2, 0x0

    .line 80
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->y:Z

    .line 81
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->z:Z

    const-string v3, "embeded_ad"

    .line 82
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->A:Ljava/lang/String;

    .line 84
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->B:Z

    const/4 v3, 0x1

    .line 85
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->C:Z

    .line 90
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->E:Z

    .line 93
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->F:Z

    .line 95
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->G:Z

    .line 96
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->H:Z

    .line 103
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->K:I

    .line 104
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->L:I

    .line 105
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->M:I

    .line 106
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->N:Z

    .line 108
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->O:Z

    .line 117
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->S:Lcom/bykv/vk/openvk/component/video/api/a$a;

    .line 676
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->T:I

    .line 857
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->U:J

    .line 926
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$4;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->s:Ljava/lang/Runnable;

    .line 939
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->V:J

    .line 940
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->W:J

    .line 1433
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->Y:Landroid/content/BroadcastReceiver;

    .line 1445
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->Z:I

    .line 1506
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->aa:Z

    .line 508
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->Z:I

    .line 510
    :try_start_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->K:I

    .line 511
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->L:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 514
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->t:Ljava/lang/ref/WeakReference;

    .line 515
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->A:Ljava/lang/String;

    .line 516
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    .line 517
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 518
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->b(Landroid/content/Context;)V

    .line 520
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->x:Z

    .line 522
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->B:Z

    .line 523
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->C:Z

    if-eqz p7, :cond_1

    .line 525
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->R:Lcom/bytedance/sdk/openadsdk/b/j;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;ZZZLcom/bytedance/sdk/openadsdk/b/j;)V
    .locals 5

    .line 482
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;-><init>()V

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->u:J

    .line 76
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->v:J

    const/4 v2, 0x0

    .line 80
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->y:Z

    .line 81
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->z:Z

    const-string v3, "embeded_ad"

    .line 82
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->A:Ljava/lang/String;

    .line 84
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->B:Z

    const/4 v3, 0x1

    .line 85
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->C:Z

    .line 90
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->E:Z

    .line 93
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->F:Z

    .line 95
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->G:Z

    .line 96
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->H:Z

    .line 103
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->K:I

    .line 104
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->L:I

    .line 105
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->M:I

    .line 106
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->N:Z

    .line 108
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->O:Z

    .line 117
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->S:Lcom/bykv/vk/openvk/component/video/api/a$a;

    .line 676
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->T:I

    .line 857
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->U:J

    .line 926
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$4;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->s:Ljava/lang/Runnable;

    .line 939
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->V:J

    .line 940
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->W:J

    .line 1433
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->Y:Landroid/content/BroadcastReceiver;

    .line 1445
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->Z:I

    .line 1506
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->aa:Z

    .line 483
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->Z:I

    .line 484
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->a(Z)V

    .line 485
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->A:Ljava/lang/String;

    .line 487
    :try_start_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->K:I

    .line 488
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->L:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 491
    :goto_0
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->t:Ljava/lang/ref/WeakReference;

    .line 492
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    .line 493
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 494
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->b(Landroid/content/Context;)V

    .line 496
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->x:Z

    .line 499
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->B:Z

    .line 500
    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->C:Z

    if-eqz p8, :cond_1

    .line 502
    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->R:Lcom/bytedance/sdk/openadsdk/b/j;

    :cond_1
    return-void
.end method

.method static synthetic A(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic B(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic C(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic D(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic E(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->H()V

    return-void
.end method

.method static synthetic F(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic G(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic H(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method private H()V
    .locals 9

    const-string v0, "ChangeVideoSize"

    const-string v1, "[step-0]  TAG is \'ChangeVideoSize\' ....... start  changeVideoSize >>>>>>>>>>>>>>>>>>>>>>>"

    .line 1015
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->I()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->t:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->t:Ljava/lang/ref/WeakReference;

    .line 1019
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 1027
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/a;->j()I

    move-result v1

    .line 1028
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v2}, Lcom/bykv/vk/openvk/component/video/api/a;->k()I

    move-result v2

    .line 1030
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 1031
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_a

    if-lez v4, :cond_a

    if-lez v2, :cond_a

    if-gtz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    if-ne v1, v2, :cond_3

    if-le v3, v4, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_3
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/high16 v7, 0x3f800000    # 1.0f

    if-le v1, v2, :cond_4

    int-to-float v1, v1

    mul-float v1, v1, v7

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-double v7, v3

    .line 1056
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v1

    double-to-int v1, v7

    move v2, v3

    goto :goto_1

    :cond_4
    int-to-float v2, v2

    mul-float v2, v2, v7

    int-to-float v1, v1

    div-float/2addr v2, v1

    int-to-double v7, v4

    .line 1063
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v1

    double-to-int v1, v7

    move v2, v1

    move v1, v4

    :goto_1
    if-gt v1, v4, :cond_6

    if-gtz v1, :cond_5

    goto :goto_2

    :cond_5
    move v4, v1

    :cond_6
    :goto_2
    if-gt v2, v3, :cond_8

    if-gtz v2, :cond_7

    goto :goto_3

    :cond_7
    move v3, v2

    .line 1075
    :cond_8
    :goto_3
    :try_start_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 1076
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1077
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->I()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v2

    instance-of v2, v2, Landroid/view/TextureView;

    if-eqz v2, :cond_9

    .line 1078
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->I()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "[step-9] >>>>> setLayoutParams to TextureView complete ! >>>>>>>"

    .line 1079
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1080
    :cond_9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->I()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v2

    instance-of v2, v2, Landroid/view/SurfaceView;

    if-eqz v2, :cond_f

    .line 1081
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->I()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "[step-9] >>>>> setLayoutParams to SurfaceView complete !>>>>>>>"

    .line 1082
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_a
    :goto_4
    const-string v1, " container or video exist size <= 0"

    .line 1034
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1020
    :cond_b
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[step-1] >>>>> mContextRef="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mContextRef.get()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",getIRenderView() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->I()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[step-1] >>>>> mMediaPlayerProxy == null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mMediaPlayerProxy.getMediaPlayer() == null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz v2, :cond_e

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 1086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[step-11] >>>>> changeVideoSize error !!!!! \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_9
    return-void
.end method

.method private I()Lcom/bykv/vk/openvk/component/video/api/renderview/b;
    .locals 2

    .line 1091
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->q()Lcom/bykv/vk/openvk/component/video/api/renderview/b;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic I(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic J(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method private J()V
    .locals 3

    .line 1287
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->C()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1290
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->p:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f(Z)V

    .line 1291
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "CSJ_VIDEO_NativeController"

    const-string v1, "context is not activity, not support this function."

    .line 1292
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1295
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_2

    .line 1296
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(Landroid/view/ViewGroup;)V

    .line 1297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(Z)V

    .line 1299
    :cond_2
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->b(I)V

    .line 1300
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->D:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/api/d/c$b;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 1302
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->p:Z

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/d/c$b;->a(Z)V

    :cond_4
    return-void
.end method

.method static synthetic K(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method private K()V
    .locals 2

    .line 1375
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(I)V

    .line 1377
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(ZZ)V

    .line 1378
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(Z)V

    .line 1379
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->e()V

    .line 1380
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->g()V

    :cond_0
    return-void
.end method

.method static synthetic L(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method private L()V
    .locals 4

    .line 1629
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->T()Ljava/util/List;

    move-result-object v0

    .line 1632
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->g()Lcom/bytedance/sdk/openadsdk/j/a;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/util/List;ZLcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/j/a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic M(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method private M()V
    .locals 3

    .line 1637
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->P:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bykv/vk/openvk/component/video/api/c/c;)V

    return-void
.end method

.method static synthetic N(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    return-wide v0
.end method

.method static synthetic O(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic P(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic Q(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bykv/vk/openvk/component/video/api/a;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    return-object p0
.end method

.method static synthetic R(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    return-wide v0
.end method

.method static synthetic S(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->n:Z

    return p0
.end method

.method static synthetic T(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bykv/vk/openvk/component/video/api/a;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    return-object p0
.end method

.method static synthetic U(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bykv/vk/openvk/component/video/api/a;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    return-object p0
.end method

.method static synthetic V(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    return-wide v0
.end method

.method static synthetic W(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->n:Z

    return p0
.end method

.method static synthetic X(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bykv/vk/openvk/component/video/api/a;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    return-object p0
.end method

.method static synthetic Y(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic Z(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;J)J
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->Q:J

    return-wide p1
.end method

.method private a(JJ)V
    .locals 2

    .line 1161
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    .line 1162
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->q:J

    .line 1163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(JJ)V

    .line 1164
    invoke-static {p1, p2, p3, p4}, Lcom/bykv/vk/openvk/component/video/a/e/a;->a(JJ)I

    move-result v0

    .line 1165
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(I)V

    .line 1167
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->w:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->w:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bykv/vk/openvk/component/video/api/d/c$a;->a(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "CSJ_VIDEO_NativeController"

    const-string p3, "onProgressUpdate error: "

    .line 1171
    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(JZ)V
    .locals 1

    .line 1361
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 1365
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->K()V

    .line 1367
    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {p3, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/a;->a(J)V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 1

    .line 1448
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->C()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1457
    :cond_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->Z:I

    if-ne p1, p2, :cond_2

    return-void

    .line 1461
    :cond_2
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->Z:I

    const/4 p1, 0x4

    if-eq p2, p1, :cond_3

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 1464
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->E:Z

    .line 1467
    :cond_3
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->E:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->q()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->B:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    .line 1468
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d(I)Z

    .line 1471
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->J:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1472
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->J:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->Z:I

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a(I)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->x()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;II)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->b(II)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;JJ)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->a(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->N:Z

    return p1
.end method

.method static synthetic aa(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic ab(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;J)J
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->u:J

    return-wide p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method private b(II)V
    .locals 3

    .line 968
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    return-void

    .line 981
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 982
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 983
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 984
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 985
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(I)V

    .line 986
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(I)V

    .line 987
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->F()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->c(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 9

    .line 382
    const-class v0, Lcom/bykv/vk/openvk/component/video/api/d/b$a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    .line 383
    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/d/b$a;->a:Lcom/bykv/vk/openvk/component/video/api/d/b$a;

    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/d/b$a;->e:Lcom/bykv/vk/openvk/component/video/api/d/b$a;

    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 386
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->m:Z

    if-eqz v0, :cond_0

    .line 387
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 389
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "tt_video_detail_layout"

    .line 390
    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    move-object v3, v0

    if-nez v3, :cond_1

    return-void

    .line 393
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->m:Z

    if-eqz v0, :cond_2

    .line 394
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->G()Z

    move-result v8

    move-object v1, v0

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bykv/vk/openvk/component/video/api/d/c;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    goto :goto_1

    .line 396
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bykv/vk/openvk/component/video/api/d/c;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    .line 398
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bykv/vk/openvk/component/video/api/d/a;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;II)Z
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c(II)Z

    move-result p0

    return p0
.end method

.method private c(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 412
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v2, "tt_root_view"

    .line 413
    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    const/high16 v2, -0x1000000

    .line 414
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 416
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 417
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v5, "tt_video_loading_retry_layout"

    .line 418
    invoke-static {p1, v5}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    const/4 v5, 0x0

    .line 419
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/16 v6, 0x11

    .line 420
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 421
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 424
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 425
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v7, "tt_video_loading_cover_image"

    .line 426
    invoke-static {p1, v7}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 427
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 428
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 431
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 432
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/4 v8, 0x1

    const/high16 v9, 0x42700000    # 60.0f

    invoke-static {v8, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v7, "tt_video_loading_progress"

    .line 433
    invoke-static {p1, v7}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setId(I)V

    const/16 v7, 0xd

    .line 434
    invoke-virtual {v6, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 435
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "tt_video_loading_progress_bar"

    .line 436
    invoke-static {p1, v6}, Lcom/bytedance/sdk/component/utils/t;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 439
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 440
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v9, "tt_video_play"

    .line 441
    invoke-static {p1, v9}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setId(I)V

    .line 442
    invoke-virtual {v3, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 443
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v9, "tt_play_movebar_textpage"

    .line 444
    invoke-static {p1, v9}, Lcom/bytedance/sdk/component/utils/t;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v9, 0x8

    .line 445
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 449
    new-instance v2, Landroid/widget/ProgressBar;

    const-string v3, "tt_Widget_ProgressBar_Horizontal"

    invoke-static {p1, v3}, Lcom/bytedance/sdk/component/utils/t;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v10, 0x0

    invoke-direct {v2, p1, v10, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 450
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-static {v8, v11, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x64

    .line 451
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    const-string v0, "tt_video_progress"

    .line 452
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setId(I)V

    .line 453
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    .line 454
    invoke-virtual {v2, v10}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "tt_video_progress_drawable"

    .line 455
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/t;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v0, 0xc

    .line 457
    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 458
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 461
    new-instance v0, Landroid/view/ViewStub;

    invoke-direct {v0, p1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 462
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v3, "tt_video_ad_cover"

    .line 463
    invoke-static {p1, v3}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setId(I)V

    .line 464
    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "tt_video_ad_cover_layout"

    .line 465
    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 466
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 469
    new-instance v0, Landroid/view/ViewStub;

    invoke-direct {v0, p1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 470
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 471
    invoke-virtual {v2, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const-string v3, "tt_video_draw_layout_viewStub"

    .line 472
    invoke-static {p1, v3}, Lcom/bytedance/sdk/component/utils/t;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setId(I)V

    .line 473
    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "tt_video_draw_btn_layout"

    .line 474
    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/utils/t;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 475
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method private c(Lcom/bykv/vk/openvk/component/video/api/c/c;)V
    .locals 3

    const-string v0, "tag_video_play"

    const-string v1, "[video] NativeVideoController#playVideo has invoke !"

    .line 616
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "VideoUrlModel is null  !!!"

    .line 618
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 621
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 622
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v1, :cond_1

    .line 623
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/t;->f(Lcom/bytedance/sdk/openadsdk/core/f/n;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->d(Ljava/lang/String;)V

    .line 625
    :cond_1
    invoke-virtual {p1, v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->c(I)V

    .line 626
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v1, p1}, Lcom/bykv/vk/openvk/component/video/api/a;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)V

    const-string v1, "[video] MediaPlayerProxy has setDataSource !"

    .line 627
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->u:J

    .line 630
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 631
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->d(I)V

    .line 632
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->d(I)V

    .line 634
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->a(Ljava/lang/Runnable;)V

    .line 647
    :cond_3
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->m:Z

    if-eqz p1, :cond_4

    .line 648
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->v()V

    :cond_4
    return-void
.end method

.method private c(I)Z
    .locals 1

    .line 1371
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(I)Z

    move-result p1

    return p1
.end method

.method private c(II)Z
    .locals 2

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnError - Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Extra code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTVideoLandingPage"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3f2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ef

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_0

    const/16 v0, -0x6e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eq p2, v1, :cond_1

    const/16 v0, 0x2bc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x320

    if-eq p2, v0, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    .line 1478
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result v0

    .line 1480
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->a(Landroid/content/Context;I)V

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1483
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->o:Z

    :cond_0
    return-void
.end method

.method private d(I)Z
    .locals 6

    .line 1404
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1407
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->b()V

    .line 1408
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->o:Z

    .line 1409
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v3, :cond_0

    .line 1410
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/ref/WeakReference;Z)V

    :cond_0
    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-eqz v0, :cond_2

    .line 1413
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_1

    .line 1414
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a()V

    .line 1415
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->b()V

    .line 1416
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->o:Z

    .line 1417
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->E:Z

    .line 1418
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_3

    .line 1419
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->C:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(ILcom/bykv/vk/openvk/component/video/api/c/b;Z)Z

    move-result p1

    return p1

    :cond_2
    if-ne v0, v3, :cond_3

    .line 1422
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->o:Z

    .line 1423
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_3

    .line 1424
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->s()V

    :cond_3
    return v2
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->m:Z

    return p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->J:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->L()V

    return-void
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->z()V

    return-void
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->I:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic m(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->x:Z

    return p0
.end method

.method static synthetic n(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic o(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic p(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic q(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/component/utils/x;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->k:Lcom/bytedance/sdk/component/utils/x;

    return-object p0
.end method

.method static synthetic r(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic s(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic t(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic u(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic v(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method static synthetic w(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bykv/vk/openvk/component/video/api/d/c$a;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->w:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    return-object p0
.end method

.method static synthetic x(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->v:J

    return-wide v0
.end method

.method private x()V
    .locals 8

    .line 679
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->T:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->T:I

    .line 680
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->C()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-nez v0, :cond_1

    return-void

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b()V

    .line 687
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->w:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    if-eqz v0, :cond_2

    .line 688
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->v:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->q:J

    invoke-static {v4, v5, v6, v7}, Lcom/bykv/vk/openvk/component/video/a/e/a;->a(JJ)I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/api/d/c$a;->a(JI)V

    .line 690
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->u:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->v:J

    .line 691
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/t;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->T:I

    if-lt v0, v2, :cond_4

    .line 692
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->H:Z

    if-eqz v0, :cond_4

    .line 693
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/ref/WeakReference;Z)V

    .line 696
    :cond_4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->z:Z

    if-nez v0, :cond_5

    .line 702
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->z:Z

    .line 703
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->q:J

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->q:J

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->a(JJ)V

    .line 704
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->q:J

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->g:J

    .line 706
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 707
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->g()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 708
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->j()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 709
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 710
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->f(I)V

    .line 711
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->R:Lcom/bytedance/sdk/openadsdk/b/j;

    invoke-static {v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->b(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;Lcom/bytedance/sdk/openadsdk/b/j;)V

    .line 713
    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->m:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->p:Z

    if-eqz v0, :cond_6

    .line 714
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;)V

    .line 716
    :cond_6
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->l:Z

    .line 717
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/t;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->T:I

    if-ge v0, v2, :cond_7

    .line 718
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->a()V

    :cond_7
    return-void
.end method

.method static synthetic y(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    return-wide v0
.end method

.method private y()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "resumeVideo:  mIsSurfaceValid = "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 809
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "CSJ_VIDEO_NativeController"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz v1, :cond_2

    .line 811
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/a;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 812
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->j:Z

    if-eqz v1, :cond_0

    .line 813
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->E()V

    goto :goto_0

    .line 815
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->b(Ljava/lang/Runnable;)V

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "resumeVideo: isPaused = true , mIsSurfaceValid = "

    aput-object v1, v0, v3

    .line 817
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/utils/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->n:Z

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/bykv/vk/openvk/component/video/api/a;->a(ZJZ)V

    .line 822
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->y:Z

    if-eqz v0, :cond_3

    .line 825
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 826
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 827
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 828
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 830
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->F()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->b(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V

    :cond_3
    return-void
.end method

.method static synthetic z(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->q:J

    return-wide v0
.end method

.method private z()V
    .locals 4

    .line 957
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->y:Z

    if-nez v0, :cond_0

    .line 958
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 959
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->G:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(Z)V

    .line 960
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 961
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->R:Lcom/bytedance/sdk/openadsdk/b/j;

    invoke-static {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;Lcom/bytedance/sdk/openadsdk/b/j;)V

    const/4 v0, 0x1

    .line 962
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->y:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public F()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object v0
.end method

.method public a()V
    .locals 3

    .line 1328
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1333
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f()V

    .line 1334
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->P:Lcom/bykv/vk/openvk/component/video/api/c/c;

    if-nez v0, :cond_1

    return-void

    .line 1339
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->b(Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->P:Lcom/bykv/vk/openvk/component/video/api/c/c;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->K:I

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(I)V

    .line 1341
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->P:Lcom/bykv/vk/openvk/component/video/api/c/c;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->L:I

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->b(I)V

    .line 1342
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->P:Lcom/bykv/vk/openvk/component/video/api/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(Ljava/util/List;)V

    .line 1343
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->P:Lcom/bykv/vk/openvk/component/video/api/c/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->c(Ljava/lang/String;)V

    .line 1344
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->P:Lcom/bykv/vk/openvk/component/video/api/c/c;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(J)V

    .line 1345
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->P:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(Z)V

    .line 1347
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->P:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->P:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)Z

    const/4 v0, 0x0

    .line 1350
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c(Z)V

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->K:I

    .line 361
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->L:I

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "height="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CSJ_VIDEO_NativeController"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1496
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result v0

    .line 1498
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->a(Landroid/content/Context;I)V

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1501
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->o:Z

    .line 1502
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d()V

    :cond_0
    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/b;I)V
    .locals 2

    .line 1130
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-nez p1, :cond_0

    return-void

    .line 1133
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->X:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c(I)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->a(JZ)V

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/b;IZ)V
    .locals 4

    .line 1145
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->C()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1148
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    int-to-long p2, p2

    .line 1149
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->q:J

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

    .line 1150
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->q:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    long-to-int p2, p1

    int-to-long p1, p2

    .line 1151
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->X:J

    goto :goto_0

    .line 1153
    :cond_1
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->X:J

    .line 1155
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_2

    .line 1156
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->X:J

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(J)V

    :cond_2
    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;)V
    .locals 2

    .line 1103
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->C()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1106
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/a;->l()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1107
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->b()V

    .line 1108
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(ZZ)V

    .line 1109
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->f()V

    goto :goto_0

    .line 1111
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/a;->m()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1112
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_2

    .line 1113
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(Landroid/view/ViewGroup;)V

    .line 1115
    :cond_2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d(J)V

    .line 1116
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_4

    .line 1117
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(ZZ)V

    goto :goto_0

    .line 1120
    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h(Z)V

    .line 1121
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_4

    .line 1122
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(ZZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;Z)V
    .locals 0

    .line 1283
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->J()V

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;ZZ)V
    .locals 1

    .line 1248
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->m:Z

    if-eqz p1, :cond_0

    .line 1249
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->b()V

    :cond_0
    if-eqz p3, :cond_1

    .line 1251
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->m:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->t()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1252
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->u()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(ZZ)V

    .line 1253
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1, p4, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(ZZZ)V

    .line 1255
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/a;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1256
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->f()V

    .line 1257
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->e()V

    goto :goto_0

    .line 1259
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->f()V

    :goto_0
    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/c$a;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->w:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/c$b;)V
    .locals 1

    .line 658
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->D:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/c$d;)V
    .locals 1

    .line 535
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->I:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;)V
    .locals 2

    .line 337
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;)V
    .locals 1

    .line 1535
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->J:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/e$a;Ljava/lang/String;)V
    .locals 1

    .line 1387
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$6;->a:[I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/e$a;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1395
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d()V

    const/4 p1, 0x0

    .line 1396
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->o:Z

    .line 1397
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->E:Z

    goto :goto_0

    .line 1392
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e()V

    goto :goto_0

    .line 1389
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->b()V

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

    return-void
.end method

.method public a(ZI)V
    .locals 2

    .line 865
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->m:Z

    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->U:J

    const/4 v0, 0x1

    .line 867
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->a(I)V

    .line 869
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->z:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->y:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 873
    new-instance p1, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 874
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->g()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 875
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->j()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 876
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 877
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->e(I)V

    .line 878
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->i()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->f(I)V

    .line 880
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->R:Lcom/bytedance/sdk/openadsdk/b/j;

    invoke-static {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;Lcom/bytedance/sdk/openadsdk/b/j;)V

    const/4 p1, 0x0

    .line 881
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->z:Z

    goto :goto_0

    .line 885
    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 886
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->g()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 887
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->j()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 888
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 889
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V

    .line 893
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f()V

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/c/c;)Z
    .locals 9

    const/4 v0, 0x0

    .line 545
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c(Z)V

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[video] start NativeVideoController#playVideoUrl and video url is :\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag_video_play"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "[video] play video stop , because no video info"

    .line 548
    invoke-static {v2, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 551
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->P:Lcom/bykv/vk/openvk/component/video/api/c/c;

    .line 553
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->M()V

    .line 555
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->f()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->n:Z

    .line 556
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->A:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->b(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_1

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    cmp-long v1, v5, v3

    if-gtz v1, :cond_2

    .line 557
    :cond_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->e()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    .line 559
    :cond_2
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->e()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-gtz v1, :cond_3

    .line 560
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->z:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->y:Z

    .line 562
    :cond_3
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->e()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_5

    .line 563
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->e()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    .line 564
    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->g:J

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    cmp-long v1, v5, v7

    if-lez v1, :cond_4

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->g:J

    goto :goto_0

    :cond_4
    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    :goto_0
    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->g:J

    .line 566
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v1, :cond_7

    .line 567
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a()V

    .line 569
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->T:I

    if-nez v1, :cond_6

    .line 570
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->g()V

    .line 572
    :cond_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->c()I

    move-result v5

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->d()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(II)V

    .line 573
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(Landroid/view/ViewGroup;)V

    .line 574
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->c()I

    move-result v5

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->d()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(II)V

    .line 576
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    const/4 v5, 0x1

    if-nez v1, :cond_a

    .line 577
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result v1

    const/4 v6, -0x2

    if-ne v1, v6, :cond_8

    goto :goto_1

    .line 581
    :cond_8
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result v1

    if-ne v1, v5, :cond_9

    goto :goto_1

    .line 584
    :cond_9
    new-instance v1, Lcom/bykv/vk/openvk/component/video/a/d/d;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/a/d/d;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    .line 587
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz v1, :cond_b

    .line 588
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->S:Lcom/bykv/vk/openvk/component/video/api/a$a;

    invoke-interface {v1, v6}, Lcom/bykv/vk/openvk/component/video/api/a;->a(Lcom/bykv/vk/openvk/component/video/api/a$a;)V

    .line 590
    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->A()V

    const-string v1, "[video] new MediaPlayer"

    .line 591
    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->v:J

    .line 594
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c(Lcom/bykv/vk/openvk/component/video/api/c/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception p1

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[video] invoke NativeVideoController#playVideo cause exception :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public b()V
    .locals 6

    .line 736
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a;->b()V

    .line 740
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->z:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->y:Z

    if-eqz v0, :cond_4

    .line 742
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "sp_multi_single_app_data_class"

    const-string v2, "IsCanLoadPauseLog"

    .line 743
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 748
    new-instance v3, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 749
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->g()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 750
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->j()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 751
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 752
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V

    .line 755
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 757
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/v;->a()Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/v;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 760
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 761
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 762
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->j()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 763
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 764
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V

    .line 766
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/v;->a()Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 1214
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->C()Z

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

    .line 1219
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 1220
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_3

    return-void

    .line 1223
    :cond_3
    check-cast v1, Landroid/app/Activity;

    .line 1226
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

    .line 1230
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_3

    .line 1232
    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    :goto_3
    return-void
.end method

.method public b(Lcom/bykv/vk/openvk/component/video/api/c/c;)V
    .locals 0

    .line 1574
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->P:Lcom/bykv/vk/openvk/component/video/api/c/c;

    return-void
.end method

.method public b(Lcom/bykv/vk/openvk/component/video/api/d/b;I)V
    .locals 0

    .line 1138
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_0

    .line 1139
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->f()V

    :cond_0
    return-void
.end method

.method public b(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1177
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->b(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;ZZ)V

    return-void
.end method

.method public b(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;ZZ)V
    .locals 0

    .line 1182
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->C()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1185
    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->p:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f(Z)V

    .line 1186
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    const-string p1, "CSJ_VIDEO_NativeController"

    const-string p2, "context is not activity, not support this function."

    .line 1187
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1190
    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->p:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1191
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->b(I)V

    .line 1193
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_4

    .line 1194
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Landroid/view/ViewGroup;)V

    .line 1195
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(Z)V

    goto :goto_1

    .line 1198
    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->b(I)V

    .line 1200
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_4

    .line 1201
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(Landroid/view/ViewGroup;)V

    .line 1202
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->c(Z)V

    .line 1206
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->D:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/component/video/api/d/c$b;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    .line 1208
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->p:Z

    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/component/video/api/d/c$b;->a(Z)V

    :cond_6
    return-void
.end method

.method public c(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;)V
    .locals 0

    .line 1239
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_0

    .line 1240
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->i()V

    .line 1242
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e()V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1548
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->l:Z

    return-void
.end method

.method public d()V
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a()V

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->v()V

    .line 791
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->y()V

    return-void
.end method

.method public d(J)V
    .locals 3

    .line 841
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    .line 842
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->g:J

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->g:J

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    :goto_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->g:J

    .line 843
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_1

    .line 844
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a()V

    .line 847
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz p1, :cond_2

    .line 848
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    const/4 p2, 0x1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f:J

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->n:Z

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/api/a;->a(ZJZ)V

    :cond_2
    return-void
.end method

.method public d(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;)V
    .locals 0

    .line 1265
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->p:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1266
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f(Z)V

    .line 1267
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_0

    .line 1268
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(Landroid/view/ViewGroup;)V

    :cond_0
    const/4 p1, 0x1

    .line 1270
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->b(I)V

    goto :goto_0

    .line 1272
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e()V

    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1558
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->G:Z

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 854
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->a(ZI)V

    return-void
.end method

.method public e(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1278
    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->a(Lcom/bykv/vk/openvk/component/video/api/d/b;Landroid/view/View;Z)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 1568
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->O:Z

    return-void
.end method

.method public f()V
    .locals 5

    .line 901
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a;->d()V

    .line 903
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/t;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->T:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 906
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->H:Z

    if-nez v0, :cond_2

    return-void

    .line 909
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/ref/WeakReference;Z)V

    .line 915
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->k:Lcom/bytedance/sdk/component/utils/x;

    if-eqz v0, :cond_4

    .line 916
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->k:Lcom/bytedance/sdk/component/utils/x;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/x;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 918
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->i:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 919
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 921
    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->m:Z

    if-eqz v0, :cond_6

    .line 922
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->w()V

    :cond_6
    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->H:Z

    return-void
.end method

.method public h()J
    .locals 2

    .line 663
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->n()Lcom/bykv/vk/openvk/component/video/api/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->n()Lcom/bykv/vk/openvk/component/video/api/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a;->o()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public h(Z)V
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a()V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 799
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->v()V

    .line 801
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->y()V

    return-void
.end method

.method public i()I
    .locals 1

    .line 668
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->n()Lcom/bykv/vk/openvk/component/video/api/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->n()Lcom/bykv/vk/openvk/component/video/api/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a;->p()I

    move-result v0

    :goto_0
    return v0
.end method

.method public j()J
    .locals 2

    .line 673
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->n()Lcom/bykv/vk/openvk/component/video/api/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->n()Lcom/bykv/vk/openvk/component/video/api/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a;->q()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public k()J
    .locals 4

    .line 1624
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->g()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->h()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public l()I
    .locals 4

    .line 608
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->g:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->q:J

    invoke-static {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/a/e/a;->a(JJ)I

    move-result v0

    return v0
.end method

.method public synthetic o()Lcom/bykv/vk/openvk/component/video/api/d/b;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->F()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-result-object v0

    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 1563
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->N:Z

    return v0
.end method

.method public t()Z
    .locals 1

    .line 1322
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a;->h()Z

    move-result v0

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

.method public u()Z
    .locals 1

    .line 1355
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c:Lcom/bykv/vk/openvk/component/video/api/a;

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

.method public v()V
    .locals 3

    .line 1509
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->aa:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->O:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1512
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 1513
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->aa:Z

    .line 1514
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 1515
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1517
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->Y:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public w()V
    .locals 2

    .line 1523
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->aa:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->O:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1526
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 1527
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->aa:Z

    .line 1529
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->Y:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
