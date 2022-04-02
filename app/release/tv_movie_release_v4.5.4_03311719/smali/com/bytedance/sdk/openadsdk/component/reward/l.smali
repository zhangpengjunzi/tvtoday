.class Lcom/bytedance/sdk/openadsdk/component/reward/l;
.super Ljava/lang/Object;
.source "TTRewardVideoAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field private final c:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

.field private e:Lcom/com/bytedance/overseas/sdk/a/c;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/Double;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->f:Z

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->n:Ljava/lang/Double;

    .line 71
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->a:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 73
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/l;->getInteractionType()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 76
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const-string p3, "rewarded_video"

    invoke-static {p1, p2, p3}, Lcom/com/bytedance/overseas/sdk/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)Lcom/com/bytedance/overseas/sdk/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->e:Lcom/com/bytedance/overseas/sdk/a/c;

    .line 78
    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->g:Z

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/l;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    .line 259
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/l$2;

    const-string v1, "Reward_registerMultiProcessListener"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/l$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/l;Ljava/lang/String;I)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/g/e;->b(Lcom/bytedance/sdk/component/g/g;I)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/l;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/reward/l;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/reward/l;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->k:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->g:Z

    .line 89
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->h:Ljava/lang/String;

    return-void
.end method

.method public getAdCreativeToken()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 103
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

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aj()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRewardVideoAdType()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 116
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->i(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->j(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->m:Z

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/k/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 303
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->m:Z

    :cond_0
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->n:Ljava/lang/Double;

    return-void
.end method

.method public setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    const/4 p1, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/l;->a(I)V

    return-void
.end method

.method public setShowDownLoadBar(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->f:Z

    return-void
.end method

.method public showRewardVideoAd(Landroid/app/Activity;)V
    .locals 5

    const-string v0, "TTRewardVideoAdImpl"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "showRewardVideoAd error1: activity is finishing"

    .line 136
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    .line 140
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    const-string v4, "fullscreen_interstitial_ad"

    if-ne v2, v3, :cond_e

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_6

    :cond_2
    if-nez p1, :cond_3

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->a:Landroid/content/Context;

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    if-nez v0, :cond_4

    .line 157
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    .line 159
    :cond_4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->l()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 160
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->f()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 161
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->f()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_5

    .line 162
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 164
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    if-nez p1, :cond_6

    const/high16 v3, 0x10000000

    .line 167
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_6
    const/4 v3, 0x0

    .line 171
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

    .line 175
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->j()Ljava/lang/String;

    move-result-object p1

    const-string v3, "reward_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->k()I

    move-result p1

    const-string v3, "reward_amount"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getMediaExtra()Ljava/lang/String;

    move-result-object p1

    const-string v3, "media_extra"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object p1

    const-string v3, "user_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->f:Z

    const-string v3, "show_download_bar"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getOrientation()I

    move-result p1

    const-string v3, "orientation"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->n:Ljava/lang/Double;

    if-nez p1, :cond_7

    const-string p1, ""

    goto :goto_3

    :cond_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    const-string v3, "client_bidding_aution_price"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 184
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->i:Ljava/lang/String;

    const-string v3, "rit_scene"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    :cond_8
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->g:Z

    if-eqz p1, :cond_9

    .line 187
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->h:Ljava/lang/String;

    const-string v3, "video_cache_url"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 191
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ar()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "multi_process_materialmeta"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->k:Ljava/lang/String;

    const-string v3, "multi_process_meta_md5"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 194
    :cond_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/v;->a()Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/v;->h()V

    .line 195
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/v;->a()Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    .line 196
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/v;->a()Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 197
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/v;->a()Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->e:Lcom/com/bytedance/overseas/sdk/a/c;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/com/bytedance/overseas/sdk/a/c;)V

    .line 199
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 204
    :goto_4
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/l$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/l$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/l;)V

    invoke-static {v0, v2, p1}, Lcom/bytedance/sdk/component/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/b$a;)Z

    .line 217
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 219
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "rit"

    .line 220
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/i;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_c

    .line 224
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->g:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 225
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_5

    .line 228
    :cond_b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_c
    :goto_5
    return-void

    .line 151
    :cond_d
    :goto_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const-string v0, "materialMeta error "

    invoke-static {p1, v4, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const-string v1, "showFullScreenVideoAd error2: not main looper"

    invoke-static {p1, v4, v1}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "showRewardVideoAd error2: not main looper"

    .line 142
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called in a child thread \u2014\u2014 TTRewardVideoAd.showRewardVideoAd"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showRewardVideoAd(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p1, "TTRewardVideoAdImpl"

    const-string p2, "The param ritScenes can not be null!"

    .line 247
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 250
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->CUSTOMIZE_SCENES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    if-ne p2, v0, :cond_1

    .line 251
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->i:Ljava/lang/String;

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->getScenesName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->i:Ljava/lang/String;

    .line 255
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/l;->showRewardVideoAd(Landroid/app/Activity;)V

    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->l:Z

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/Double;)V

    const/4 p1, 0x1

    .line 295
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l;->l:Z

    :cond_0
    return-void
.end method
