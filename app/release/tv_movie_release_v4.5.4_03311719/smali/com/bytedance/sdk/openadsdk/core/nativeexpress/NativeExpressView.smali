.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
.super Landroid/widget/FrameLayout;
.source "NativeExpressView.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/b/g;
.implements Lcom/bytedance/sdk/component/adexpress/b/n;
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/c;
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;


# static fields
.field public static p:I = 0x1f4


# instance fields
.field private A:Lcom/bytedance/sdk/openadsdk/b/u;

.field private B:Ljava/lang/String;

.field private C:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$a;

.field private D:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private E:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

.field private final F:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final G:Ljava/lang/Runnable;

.field private final H:Ljava/lang/Runnable;

.field private final I:Ljava/lang/Runnable;

.field private J:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

.field private K:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

.field private L:Lcom/bytedance/sdk/component/adexpress/b/i$a;

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private N:Lcom/bytedance/sdk/component/adexpress/b/o;

.field private O:Lcom/bytedance/sdk/component/adexpress/b/e;

.field private P:Lcom/bytedance/sdk/component/adexpress/b/h;

.field private Q:Lcom/bytedance/sdk/component/adexpress/b/l;

.field private R:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private S:F

.field private T:F

.field private U:F

.field private V:F

.field private W:J

.field private a:Z

.field private b:I

.field private c:Lcom/bytedance/sdk/openadsdk/dislike/b;

.field private d:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field private e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field protected final f:Landroid/content/Context;

.field protected g:Ljava/lang/String;

.field protected h:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field protected i:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field protected j:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

.field protected k:Landroid/widget/FrameLayout;

.field protected l:Z

.field protected m:Z

.field protected n:Lcom/bytedance/sdk/component/adexpress/b/c;

.field protected o:Z

.field public q:Z

.field public r:Lcom/bytedance/sdk/openadsdk/b/j;

.field protected s:Lcom/bytedance/sdk/component/adexpress/b/b;

.field public t:Lcom/bytedance/sdk/component/adexpress/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/adexpress/b/d<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

.field private v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

.field private final w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private x:Ljava/lang/String;

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .locals 3

    .line 205
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a:Z

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->b:I

    const-string v1, "embeded_ad"

    .line 93
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Ljava/lang/String;

    .line 99
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 102
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->x:Ljava/lang/String;

    .line 104
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->m:Z

    .line 110
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->o:Z

    .line 126
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->q:Z

    .line 130
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/j;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/b/j;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->r:Lcom/bytedance/sdk/openadsdk/b/j;

    .line 135
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 157
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->F:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 165
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->G:Ljava/lang/Runnable;

    .line 175
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->H:Ljava/lang/Runnable;

    .line 181
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->I:Ljava/lang/Runnable;

    .line 495
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->R:Landroid/util/SparseArray;

    const/high16 v1, -0x40800000    # -1.0f

    .line 496
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->S:F

    .line 497
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->T:F

    .line 498
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->U:F

    .line 499
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->V:F

    const-wide/16 v1, 0x0

    .line 500
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->W:J

    .line 206
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Ljava/lang/String;

    .line 207
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    .line 208
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 209
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->h:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 210
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->q:Z

    .line 211
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;Z)V
    .locals 2

    .line 216
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a:Z

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->b:I

    const-string v1, "embeded_ad"

    .line 93
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Ljava/lang/String;

    .line 99
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 102
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->x:Ljava/lang/String;

    .line 104
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->m:Z

    .line 110
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->o:Z

    .line 126
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->q:Z

    .line 130
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/j;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/b/j;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->r:Lcom/bytedance/sdk/openadsdk/b/j;

    .line 135
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 157
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->F:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 165
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->G:Ljava/lang/Runnable;

    .line 175
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->H:Ljava/lang/Runnable;

    .line 181
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->I:Ljava/lang/Runnable;

    .line 495
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->R:Landroid/util/SparseArray;

    const/high16 v0, -0x40800000    # -1.0f

    .line 496
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->S:F

    .line 497
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->T:F

    .line 498
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->U:F

    .line 499
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->V:F

    const-wide/16 v0, 0x0

    .line 500
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->W:J

    .line 217
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Ljava/lang/String;

    .line 218
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    .line 219
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 220
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->h:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 221
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->q:Z

    .line 222
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g()V

    return-void
.end method

.method public static a(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    .line 682
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 683
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "width"

    .line 684
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "height"

    .line 685
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "left"

    const/4 v2, 0x0

    .line 686
    aget v2, v0, v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "top"

    const/4 v2, 0x1

    .line 687
    aget v0, v0, v2

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->s()V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)Ljava/lang/Runnable;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->G:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private getAdSlotType()I
    .locals 6

    .line 733
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "draw_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "interaction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v1, "embeded_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "fullscreen_interstitial_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "open_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v1, "rewarded_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "banner_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    return v3

    :pswitch_1
    return v4

    :pswitch_2
    return v5

    :pswitch_3
    const/16 v0, 0x8

    return v0

    :pswitch_4
    const/4 v0, 0x7

    return v0

    :pswitch_5
    const/16 v0, 0x9

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x65146dea -> :sswitch_6
        -0x514cfef6 -> :sswitch_5
        -0x4b4ad1c8 -> :sswitch_4
        -0x2d935a6e -> :sswitch_3
        -0x2a77c376 -> :sswitch_2
        0x6deace12 -> :sswitch_1
        0x72060cfe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private h()V
    .locals 9

    .line 256
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->y:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->z:F

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->m:Z

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a/a;->a(FFZLcom/bytedance/sdk/openadsdk/core/f/n;)Lorg/json/JSONObject;

    move-result-object v0

    .line 259
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/u;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/u;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->A:Lcom/bytedance/sdk/openadsdk/b/u;

    .line 260
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->x:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(Lcom/bytedance/sdk/openadsdk/b/u;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->P:Lcom/bytedance/sdk/component/adexpress/b/h;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 264
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/f/n;->G()Lcom/bytedance/sdk/openadsdk/core/f/n$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/f/n$a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "render_delay_time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :try_start_1
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->x:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/j/f;->j(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v7, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v1, v4

    goto :goto_1

    :catch_0
    move-wide v5, v2

    .line 270
    :catch_1
    :goto_1
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    .line 271
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 272
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/b/l$a;

    invoke-direct {v4}, Lcom/bytedance/sdk/component/adexpress/b/l$a;-><init>()V

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Ljava/lang/String;

    .line 274
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/b/l$a;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 276
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/b/l$a;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 277
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/k/t;->h(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/b/l$a;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 278
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/b/l$a;

    move-result-object v4

    .line 279
    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/adexpress/b/l$a;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->P:Lcom/bytedance/sdk/component/adexpress/b/h;

    .line 280
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->a(Lcom/bytedance/sdk/component/adexpress/b/h;)Lcom/bytedance/sdk/component/adexpress/b/l$a;

    move-result-object v0

    .line 281
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/j/f;->m()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->a(I)Lcom/bytedance/sdk/component/adexpress/b/l$a;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 282
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ap()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->a(Z)Lcom/bytedance/sdk/component/adexpress/b/l$a;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 283
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/f/n;->t()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->b(I)Lcom/bytedance/sdk/component/adexpress/b/l$a;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->a(J)Lcom/bytedance/sdk/component/adexpress/b/l$a;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 285
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->c(I)Lcom/bytedance/sdk/component/adexpress/b/l$a;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 286
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a/a;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->a(Ljava/util/Map;)Lcom/bytedance/sdk/component/adexpress/b/l$a;

    move-result-object v0

    .line 287
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->b(Z)Lcom/bytedance/sdk/component/adexpress/b/l$a;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->a()Lcom/bytedance/sdk/component/adexpress/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Q:Lcom/bytedance/sdk/component/adexpress/b/l;

    return-void
.end method

.method private o()V
    .locals 7

    .line 292
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->p()V

    goto :goto_1

    .line 296
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->q()V

    .line 297
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Q:Lcom/bytedance/sdk/component/adexpress/b/l;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->J:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->A:Lcom/bytedance/sdk/openadsdk/b/u;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/b/l;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/openadsdk/b/u;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->K:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    .line 298
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/b/o;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Q:Lcom/bytedance/sdk/component/adexpress/b/l;

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/bytedance/sdk/component/adexpress/b/o;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/b/l;Lcom/bytedance/sdk/component/adexpress/d/a;Lcom/bytedance/sdk/component/adexpress/b/g;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->N:Lcom/bytedance/sdk/component/adexpress/b/o;

    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->M:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NativeExpressView"

    const-string v2, "NativeExpressView dynamicRender fail"

    .line 301
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->J:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Q:Lcom/bytedance/sdk/component/adexpress/b/l;

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/component/adexpress/b/l;)V

    .line 305
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/b/e;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Q:Lcom/bytedance/sdk/component/adexpress/b/l;

    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/adexpress/b/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/b/l;Lcom/bytedance/sdk/component/adexpress/b/a;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->O:Lcom/bytedance/sdk/component/adexpress/b/e;

    .line 306
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->M:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/b/k;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->M:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->P:Lcom/bytedance/sdk/component/adexpress/b/h;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/b/k;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/b/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->L:Lcom/bytedance/sdk/component/adexpress/b/i$a;

    :goto_1
    return-void
.end method

.method private p()V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->q()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->b:I

    .line 314
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->q()V

    .line 315
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->r()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NativeExpressView"

    const-string v2, "NativeExpressView dynamicRender fail"

    .line 317
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->r()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a:Z

    if-eqz v1, :cond_1

    .line 321
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->J:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Q:Lcom/bytedance/sdk/component/adexpress/b/l;

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/component/adexpress/b/l;)V

    .line 323
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/b/e;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Q:Lcom/bytedance/sdk/component/adexpress/b/l;

    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/adexpress/b/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/b/l;Lcom/bytedance/sdk/component/adexpress/b/a;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->O:Lcom/bytedance/sdk/component/adexpress/b/e;

    .line 325
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->M:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/b/k;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->M:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->P:Lcom/bytedance/sdk/component/adexpress/b/h;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/b/k;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/b/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->L:Lcom/bytedance/sdk/component/adexpress/b/i$a;

    return-void
.end method

.method private q()V
    .locals 1

    .line 332
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->isInitSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/l;->b()V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 14

    .line 338
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/c/b/a;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/c/b/a;-><init>()V

    .line 339
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 363
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Q:Lcom/bytedance/sdk/component/adexpress/b/l;

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->J:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->A:Lcom/bytedance/sdk/openadsdk/b/u;

    iget-object v13, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/b/l;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/openadsdk/b/u;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->K:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    .line 364
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/b/o;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Q:Lcom/bytedance/sdk/component/adexpress/b/l;

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/bytedance/sdk/component/adexpress/b/o;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/b/l;Lcom/bytedance/sdk/component/adexpress/d/a;Lcom/bytedance/sdk/component/adexpress/b/g;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->N:Lcom/bytedance/sdk/component/adexpress/b/o;

    .line 365
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->M:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 356
    :cond_0
    new-instance v5, Lcom/bytedance/sdk/component/adexpress/dynamic/c/h;

    invoke-direct {v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/h;-><init>()V

    .line 357
    new-instance v8, Lcom/bytedance/sdk/component/adexpress/b/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Q:Lcom/bytedance/sdk/component/adexpress/b/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->J:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->q:Z

    move-object v0, v8

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/component/adexpress/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/b/l;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/c/i;Lcom/bytedance/sdk/component/adexpress/b/g;Lcom/bytedance/sdk/component/adexpress/dynamic/d/a;)V

    iput-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->s:Lcom/bytedance/sdk/component/adexpress/b/b;

    .line 359
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->M:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 347
    :cond_1
    new-instance v5, Lcom/bytedance/sdk/component/adexpress/dynamic/c/f;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Q:Lcom/bytedance/sdk/component/adexpress/b/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Lcom/bytedance/sdk/component/adexpress/b/l;Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 348
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Q:Lcom/bytedance/sdk/component/adexpress/b/l;

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->J:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->A:Lcom/bytedance/sdk/openadsdk/b/u;

    iget-object v13, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/b/l;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/openadsdk/b/u;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->K:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    .line 349
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/b/o;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Q:Lcom/bytedance/sdk/component/adexpress/b/l;

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/bytedance/sdk/component/adexpress/b/o;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/b/l;Lcom/bytedance/sdk/component/adexpress/d/a;Lcom/bytedance/sdk/component/adexpress/b/g;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->N:Lcom/bytedance/sdk/component/adexpress/b/o;

    .line 350
    new-instance v8, Lcom/bytedance/sdk/component/adexpress/b/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Q:Lcom/bytedance/sdk/component/adexpress/b/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->J:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->q:Z

    move-object v0, v8

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/component/adexpress/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/b/l;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/c/i;Lcom/bytedance/sdk/component/adexpress/b/g;Lcom/bytedance/sdk/component/adexpress/dynamic/d/a;)V

    iput-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->s:Lcom/bytedance/sdk/component/adexpress/b/b;

    .line 352
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->M:Ljava/util/List;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->N:Lcom/bytedance/sdk/component/adexpress/b/o;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->M:Ljava/util/List;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->s:Lcom/bytedance/sdk/component/adexpress/b/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_2
    new-instance v5, Lcom/bytedance/sdk/component/adexpress/dynamic/c/f;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Q:Lcom/bytedance/sdk/component/adexpress/b/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Lcom/bytedance/sdk/component/adexpress/b/l;Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 342
    new-instance v8, Lcom/bytedance/sdk/component/adexpress/b/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Q:Lcom/bytedance/sdk/component/adexpress/b/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->J:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->q:Z

    move-object v0, v8

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/component/adexpress/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/b/l;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/c/i;Lcom/bytedance/sdk/component/adexpress/b/g;Lcom/bytedance/sdk/component/adexpress/dynamic/d/a;)V

    iput-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->s:Lcom/bytedance/sdk/component/adexpress/b/b;

    .line 344
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->M:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private s()V
    .locals 2

    .line 468
    invoke-static {}, Lcom/bytedance/sdk/component/utils/h;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private t()Z
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    return v0
.end method

.method private u()V
    .locals 2

    .line 775
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->M:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 778
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/b/i;

    if-eqz v1, :cond_1

    .line 780
    invoke-interface {v1}, Lcom/bytedance/sdk/component/adexpress/b/i;->b()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private v()V
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->M:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 789
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/b/i;

    if-eqz v1, :cond_1

    .line 791
    invoke-interface {v1}, Lcom/bytedance/sdk/component/adexpress/b/i;->c()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private w()Z
    .locals 2

    .line 943
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Ljava/lang/String;

    const-string v1, "fullscreen_interstitial_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Ljava/lang/String;

    const-string v1, "rewarded_video"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Ljava/lang/String;

    .line 944
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->b(Ljava/lang/String;)Z

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


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/b;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 559
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 560
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/f/p;->i(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v4

    const-string v5, "click_scence"

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    .line 561
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 563
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :goto_0
    move-object/from16 v4, p3

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/f/j;

    .line 566
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    if-eqz v5, :cond_2

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getDynamicShowType()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->d(I)V

    .line 568
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    invoke-virtual {v5, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Ljava/util/Map;)V

    .line 570
    :cond_2
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    if-eqz v5, :cond_3

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getDynamicShowType()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->d(I)V

    .line 572
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    invoke-virtual {v5, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(Ljava/util/Map;)V

    .line 574
    :cond_3
    iget v9, v4, Lcom/bytedance/sdk/openadsdk/core/f/j;->a:F

    .line 575
    iget v10, v4, Lcom/bytedance/sdk/openadsdk/core/f/j;->b:F

    .line 576
    iget v11, v4, Lcom/bytedance/sdk/openadsdk/core/f/j;->c:F

    .line 577
    iget v12, v4, Lcom/bytedance/sdk/openadsdk/core/f/j;->d:F

    .line 578
    iget-boolean v14, v4, Lcom/bytedance/sdk/openadsdk/core/f/j;->o:Z

    .line 580
    iget-object v3, v4, Lcom/bytedance/sdk/openadsdk/core/f/j;->n:Landroid/util/SparseArray;

    if-eqz v3, :cond_4

    .line 581
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 582
    :cond_4
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->R:Landroid/util/SparseArray;

    :cond_5
    move-object v13, v3

    .line 585
    iget-object v3, v4, Lcom/bytedance/sdk/openadsdk/core/f/j;->k:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v1, :cond_6

    move-object v8, v0

    goto :goto_1

    :cond_6
    if-eq v1, v0, :cond_7

    .line 590
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    :cond_7
    move-object v8, v1

    :goto_1
    if-eqz v4, :cond_8

    .line 593
    iput v2, v4, Lcom/bytedance/sdk/openadsdk/core/f/j;->l:I

    if-eqz v5, :cond_8

    .line 594
    iget-object v1, v4, Lcom/bytedance/sdk/openadsdk/core/f/j;->m:Lorg/json/JSONObject;

    if-nez v1, :cond_8

    .line 595
    iput-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/f/j;->m:Lorg/json/JSONObject;

    :cond_8
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 673
    :pswitch_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 670
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a()V

    goto/16 :goto_3

    .line 667
    :pswitch_2
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->q:Z

    xor-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(Z)V

    goto/16 :goto_3

    .line 640
    :pswitch_3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->k:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 641
    invoke-static/range {v15 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 643
    :cond_9
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->h()I

    move-result v1

    if-ne v1, v6, :cond_a

    if-nez v14, :cond_a

    return-void

    .line 646
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creativity....mAdType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",!mVideoPause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->l:Z

    xor-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\uff0cisAutoPlay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/t;->i(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClickCreativeListener"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Ljava/lang/String;

    const-string v5, "embeded_ad"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->t()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->l:Z

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/t;->i(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Creative...."

    .line 648
    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    if-eqz v1, :cond_c

    .line 650
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/j;)V

    .line 651
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Ljava/lang/String;)V

    .line 652
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    invoke-virtual/range {v7 .. v14}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    goto :goto_2

    :cond_b
    const-string v1, "normal...."

    .line 655
    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    if-eqz v1, :cond_c

    .line 657
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(Lcom/bytedance/sdk/openadsdk/core/f/j;)V

    .line 658
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(Ljava/lang/String;)V

    .line 659
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    invoke-virtual/range {v7 .. v14}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    .line 662
    :cond_c
    :goto_2
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    if-eqz v1, :cond_15

    .line 663
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onAdClicked(Landroid/view/View;I)V

    goto/16 :goto_3

    .line 630
    :pswitch_4
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->d:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v1, :cond_d

    .line 631
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->show()V

    goto/16 :goto_3

    .line 633
    :cond_d
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->c:Lcom/bytedance/sdk/openadsdk/dislike/b;

    if-eqz v1, :cond_e

    .line 634
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->showDislikeDialog()V

    goto/16 :goto_3

    .line 636
    :cond_e
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->B:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    goto :goto_3

    .line 616
    :pswitch_5
    iget v1, v4, Lcom/bytedance/sdk/openadsdk/core/f/j;->p:I

    if-lez v1, :cond_f

    .line 617
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Z)V

    .line 619
    :cond_f
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    if-eqz v1, :cond_10

    .line 620
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/j;)V

    .line 621
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Ljava/lang/String;)V

    .line 622
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    invoke-virtual/range {v7 .. v14}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    .line 624
    :cond_10
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    if-eqz v1, :cond_11

    .line 625
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onAdClicked(Landroid/view/View;I)V

    :cond_11
    const/4 v1, 0x0

    .line 627
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Z)V

    goto :goto_3

    .line 600
    :pswitch_6
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->k:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_12

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 601
    invoke-static/range {v15 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 603
    :cond_12
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->h()I

    move-result v1

    if-ne v1, v6, :cond_13

    if-nez v14, :cond_13

    return-void

    .line 606
    :cond_13
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    if-eqz v1, :cond_14

    .line 607
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(Lcom/bytedance/sdk/openadsdk/core/f/j;)V

    .line 608
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(Ljava/lang/String;)V

    .line 609
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    invoke-virtual/range {v7 .. v14}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    .line 611
    :cond_14
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    if-eqz v1, :cond_15

    .line 612
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onAdClicked(Landroid/view/View;I)V

    :cond_15
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/component/adexpress/b/d;Lcom/bytedance/sdk/component/adexpress/b/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/adexpress/b/d<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/component/adexpress/b/m;",
            ")V"
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 861
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->t:Lcom/bytedance/sdk/component/adexpress/b/d;

    .line 862
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/b/d;->c()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->f()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 863
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(I)V

    .line 865
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/b/d;->c()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 866
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/b/d;->c()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/b/d;->c()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 867
    :cond_1
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/b/d;->e()Landroid/view/View;

    move-result-object v0

    .line 868
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 869
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 871
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 872
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 873
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    .line 876
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v1, :cond_4

    .line 877
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->removeView(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 880
    :cond_5
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/b/d;->e()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;)V

    .line 882
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->P:Lcom/bytedance/sdk/component/adexpress/b/h;

    if-eqz p1, :cond_7

    .line 883
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->i()V

    .line 886
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    if-eqz p1, :cond_8

    .line 888
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/b/m;->b()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/b/m;->c()D

    move-result-wide v1

    double-to-float p2, v1

    .line 887
    invoke-interface {p1, p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onRenderSuccess(Landroid/view/View;FF)V

    :cond_8
    return-void
.end method

.method public a(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 984
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->b(II)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a_(I)V
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->P:Lcom/bytedance/sdk/component/adexpress/b/h;

    if-eqz v0, :cond_1

    .line 895
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a:Z

    if-nez v1, :cond_0

    .line 896
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/b/h;->f()V

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->P:Lcom/bytedance/sdk/component/adexpress/b/h;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/b/h;->g()V

    .line 899
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->P:Lcom/bytedance/sdk/component/adexpress/b/h;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->i()V

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    if-eqz v0, :cond_2

    .line 903
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 902
    invoke-interface {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onRenderFail(Landroid/view/View;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method protected b(II)V
    .locals 4

    .line 1013
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Ljava/lang/String;

    const-string v1, "fullscreen_interstitial_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->x:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->e(I)I

    move-result v0

    goto :goto_0

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Ljava/lang/String;

    const-string v1, "rewarded_video"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1016
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->f(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v1, 0x5

    if-gez v0, :cond_1

    const/4 v0, 0x5

    :cond_1
    const/4 v2, 0x0

    if-ge p2, v0, :cond_3

    .line 1026
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->d()I

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-gt p2, v0, :cond_4

    sub-int v2, v0, p2

    .line 1034
    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->s:Lcom/bytedance/sdk/component/adexpress/b/b;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/b/b;->d()Lcom/bytedance/sdk/component/adexpress/dynamic/c;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1035
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->s:Lcom/bytedance/sdk/component/adexpress/b/b;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/b/b;->d()Lcom/bytedance/sdk/component/adexpress/dynamic/c;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v1, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c;->a(Ljava/lang/CharSequence;II)V

    :cond_5
    return-void
.end method

.method public c()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c(I)V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->t:Lcom/bytedance/sdk/component/adexpress/b/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    if-eqz v1, :cond_0

    .line 441
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->a(I)V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 505
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->b(I)V

    .line 507
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(I)V

    .line 508
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c(I)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->b(I)V

    .line 513
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(I)V

    .line 514
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->c(I)V

    .line 517
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v1, -0x1

    const/4 v5, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    const/4 v5, 0x4

    goto :goto_0

    .line 526
    :cond_3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->U:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->S:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->U:F

    .line 527
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->V:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->T:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->V:F

    .line 528
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->S:F

    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->T:F

    .line 530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->W:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0xc8

    cmp-long v2, v0, v5

    if-lez v2, :cond_5

    .line 531
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->U:F

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->V:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x2

    goto :goto_0

    :cond_6
    const/4 v5, 0x3

    goto :goto_0

    .line 519
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->S:F

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->T:F

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->W:J

    const/4 v5, 0x0

    .line 547
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->R:Landroid/util/SparseArray;

    if-eqz v0, :cond_8

    .line 548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/b/c$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v3

    float-to-double v6, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    float-to-double v8, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/core/b/c$a;-><init>(IDDJ)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 550
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method protected g()V
    .locals 3

    .line 226
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->J:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->h:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->y:F

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->h:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->z:F

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->h:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->x:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setBackgroundColor(I)V

    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-direct {v0, v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->E:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    goto :goto_0

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->h()V

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->M:Ljava/util/List;

    .line 239
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->o()V

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->N:Lcom/bytedance/sdk/component/adexpress/b/o;

    if-eqz v0, :cond_2

    .line 242
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/b/o;->d()Lcom/bytedance/sdk/component/adexpress/d/a;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->K:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    :cond_2
    :goto_0
    return-void
.end method

.method public getAdShowTime()Lcom/bytedance/sdk/openadsdk/b/j;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->r:Lcom/bytedance/sdk/openadsdk/b/j;

    return-object v0
.end method

.method public getClickCreativeListener()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    return-object v0
.end method

.method public getClickListener()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    return-object v0
.end method

.method public getClosedListenerKey()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicShowType()I
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->t:Lcom/bytedance/sdk/component/adexpress/b/d;

    if-eqz v0, :cond_0

    .line 914
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/b/d;->c()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getExpectExpressHeight()I
    .locals 1

    .line 925
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->z:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0
.end method

.method public getExpectExpressWidth()I
    .locals 1

    .line 921
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0
.end method

.method public getJsObject()Lcom/bytedance/sdk/openadsdk/core/y;
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->K:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->p()Lcom/bytedance/sdk/openadsdk/core/y;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebView()Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->K:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 251
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->a()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->t:Lcom/bytedance/sdk/component/adexpress/b/d;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    return-void

    .line 432
    :cond_0
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->j()V

    :cond_1
    return-void
.end method

.method public j()V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->E:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    if-nez v0, :cond_0

    const/16 v0, 0x6a

    .line 481
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a_(I)V

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/component/adexpress/b/n;)V

    .line 484
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->E:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a()V

    goto :goto_0

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->A:Lcom/bytedance/sdk/openadsdk/b/u;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->a()V

    .line 488
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->L:Lcom/bytedance/sdk/component/adexpress/b/i$a;

    if-eqz v0, :cond_2

    .line 489
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/adexpress/b/i$a;->a(Lcom/bytedance/sdk/component/adexpress/b/n;)V

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->L:Lcom/bytedance/sdk/component/adexpress/b/i$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/b/i$a;->a()V

    :goto_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->K:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->f()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->E:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->E:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->b()V

    .line 807
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->removeAllViews()V

    .line 808
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 809
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->M:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 812
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/b/i;

    .line 813
    invoke-interface {v1}, Lcom/bytedance/sdk/component/adexpress/b/i;->a()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 816
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->c:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 817
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->d:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 818
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->h:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 819
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 820
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 821
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    .line 822
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->n:Lcom/bytedance/sdk/component/adexpress/b/c;

    .line 823
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    .line 824
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->j:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "NativeExpressView"

    const-string v2, "detach error"

    .line 826
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public m()V
    .locals 3

    .line 832
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->k:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "NativeExpressView"

    const-string v2, "backupDestroy remove video container error"

    .line 836
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public n()Z
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->t:Lcom/bytedance/sdk/component/adexpress/b/d;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/b/d;->c()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 754
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 755
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->s()V

    .line 756
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u()V

    const-string v0, "webviewpool"

    const-string v1, "onAttachedToWindow+++"

    .line 757
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->F:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 759
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->B:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->C:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$a;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$a;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 843
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 844
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->F:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 845
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h;->f(Ljava/lang/String;)V

    .line 847
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->v()V

    const-string v0, "webviewpool"

    const-string v1, "onDetachedFromWindow==="

    .line 848
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 2

    .line 770
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishTemporaryDetach()V

    const-string v0, "webviewpool"

    const-string v1, "onFinishTemporaryDetach+++"

    .line 771
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 764
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 765
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->s()V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .line 853
    invoke-super {p0}, Landroid/widget/FrameLayout;->onStartTemporaryDetach()V

    const-string v0, "webviewpool"

    const-string v1, "onStartTemporaryDetach==="

    .line 855
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 459
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 460
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getVisibility()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->onWindowVisibilityChanged(I)V

    .line 464
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->s()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    .line 447
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 448
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->I:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 449
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x32

    if-nez p1, :cond_0

    .line 451
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 453
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->I:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public setBackupListener(Lcom/bytedance/sdk/component/adexpress/b/c;)V
    .locals 1

    .line 421
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->n:Lcom/bytedance/sdk/component/adexpress/b/c;

    .line 422
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->O:Lcom/bytedance/sdk/component/adexpress/b/e;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/b/e;->a(Lcom/bytedance/sdk/component/adexpress/b/c;)V

    :cond_0
    return-void
.end method

.method public setBannerClickClosedListener(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$a;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->C:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$a;

    return-void
.end method

.method public setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    return-void
.end method

.method public setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    return-void
.end method

.method public setClosedListenerKey(Ljava/lang/String;)V
    .locals 1

    .line 143
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->B:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->E:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDislike(Lcom/bytedance/sdk/openadsdk/dislike/b;)V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->t:Lcom/bytedance/sdk/component/adexpress/b/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;

    if-eqz v1, :cond_0

    .line 389
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/b/d;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->setDislikeInner(Lcom/bytedance/sdk/openadsdk/TTAdDislike;)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->E:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/TTAdDislike;)V

    .line 397
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->c:Lcom/bytedance/sdk/openadsdk/dislike/b;

    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    return-void
.end method

.method public setOuterDislike(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->t:Lcom/bytedance/sdk/component/adexpress/b/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;

    if-eqz v1, :cond_0

    .line 376
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/b/d;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->setDislikeOuter(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->E:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 384
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->d:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    return-void
.end method

.method public setSoundMute(Z)V
    .locals 1

    .line 989
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->q:Z

    .line 990
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->s:Lcom/bytedance/sdk/component/adexpress/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/b/b;->d()Lcom/bytedance/sdk/component/adexpress/dynamic/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->s:Lcom/bytedance/sdk/component/adexpress/b/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/b/b;->d()Lcom/bytedance/sdk/component/adexpress/dynamic/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/c;->setSoundMute(Z)V

    :cond_0
    return-void
.end method

.method public setTimeUpdate(I)V
    .locals 0

    return-void
.end method

.method public setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->j:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    return-void
.end method
