.class Lcom/bytedance/sdk/openadsdk/component/reward/k;
.super Ljava/lang/Object;
.source "TTFullScreenVideoAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field private final c:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

.field private e:Lcom/com/bytedance/overseas/sdk/a/c;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/Double;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->f:Z

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->k:Z

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->o:Ljava/lang/Double;

    .line 72
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->a:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 74
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/k;->getInteractionType()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 76
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const-string p3, "fullscreen_interstitial_ad"

    invoke-static {p1, p2, p3}, Lcom/com/bytedance/overseas/sdk/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)Lcom/com/bytedance/overseas/sdk/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->e:Lcom/com/bytedance/overseas/sdk/a/c;

    .line 78
    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->g:Z

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ar()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->l:Ljava/lang/String;

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 273
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/k$2;

    const-string v1, "FullScreen_registerMultiProcessListener"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/k$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/k;Ljava/lang/String;I)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/g/e;->b(Lcom/bytedance/sdk/component/g/g;I)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/k;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->k:Z

    return p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/k;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/reward/k;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/reward/k;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/reward/k;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->l:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->g:Z

    .line 93
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->k:Z

    return-void
.end method

.method public getAdCreativeToken()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullVideoAdType()I
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 255
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->i(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->j(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 107
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v0

    return v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aj()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->n:Z

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/k/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 317
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->n:Z

    :cond_0
    return-void
.end method

.method public setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    const/4 p1, 0x1

    .line 99
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/k;->a(I)V

    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->o:Ljava/lang/Double;

    return-void
.end method

.method public setShowDownLoadBar(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->f:Z

    return-void
.end method

.method public showFullScreenVideoAd(Landroid/app/Activity;)V
    .locals 5

    const-string v0, "TTFullScreenVideoAdImpl"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "showFullScreenVideoAd error1: activity is finishing"

    .line 113
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    .line 117
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    const-string v4, "fullscreen_interstitial_ad"

    if-ne v2, v3, :cond_e

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->P()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_6

    :cond_2
    if-nez p1, :cond_3

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->a:Landroid/content/Context;

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    if-nez v0, :cond_4

    .line 134
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    .line 136
    :cond_4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->l()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 137
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->f()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 138
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->f()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_5

    .line 139
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 141
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    if-nez p1, :cond_6

    const/high16 v3, 0x10000000

    .line 144
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_6
    const/4 v3, 0x0

    .line 148
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    const-string p1, "orientation_angle"

    .line 152
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->f:Z

    const-string v3, "show_download_bar"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getOrientation()I

    move-result p1

    const-string v3, "orientation"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->k:Z

    const-string v3, "is_verity_playable"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->o:Ljava/lang/Double;

    if-nez p1, :cond_7

    const-string p1, ""

    goto :goto_3

    :cond_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    const-string v3, "client_bidding_aution_price"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 158
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->i:Ljava/lang/String;

    const-string v3, "rit_scene"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    :cond_8
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->g:Z

    if-eqz p1, :cond_9

    .line 162
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->h:Ljava/lang/String;

    const-string v3, "video_cache_url"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 166
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ar()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "multi_process_materialmeta"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->l:Ljava/lang/String;

    const-string v3, "multi_process_meta_md5"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 169
    :cond_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/v;->a()Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/v;->h()V

    .line 170
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/v;->a()Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    .line 171
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/v;->a()Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    .line 172
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/v;->a()Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->e:Lcom/com/bytedance/overseas/sdk/a/c;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/com/bytedance/overseas/sdk/a/c;)V

    .line 174
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 177
    :goto_4
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/k$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/k$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/k;)V

    invoke-static {v0, v2, p1}, Lcom/bytedance/sdk/component/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/b$a;)Z

    .line 204
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 206
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "rit"

    .line 207
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/d;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_c

    .line 211
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->g:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 212
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/d;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_5

    .line 215
    :cond_b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/d;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_c
    :goto_5
    return-void

    .line 128
    :cond_d
    :goto_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const-string v0, "materialMeta error "

    invoke-static {p1, v4, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 118
    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const-string v1, "showFullScreenVideoAd error2: not main looper"

    invoke-static {p1, v4, v1}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called in a child thread \u2014\u2014 TTFullScreenVideoAd.showFullScreenVideoAd"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showFullScreenVideoAd(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p1, "TTFullScreenVideoAdImpl"

    const-string p2, "The param ritScenes can not be null!"

    .line 226
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 229
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->CUSTOMIZE_SCENES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    if-ne p2, v0, :cond_1

    .line 230
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->i:Ljava/lang/String;

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->getScenesName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->i:Ljava/lang/String;

    .line 234
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/k;->showFullScreenVideoAd(Landroid/app/Activity;)V

    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->m:Z

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/Double;)V

    const/4 p1, 0x1

    .line 309
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k;->m:Z

    :cond_0
    return-void
.end method
