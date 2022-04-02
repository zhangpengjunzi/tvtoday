.class public Lcom/bytedance/sdk/openadsdk/core/v;
.super Ljava/lang/Object;
.source "SingleAppData.java"


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/core/v;


# instance fields
.field private b:Lcom/bykv/vk/openvk/component/video/api/d/c;

.field private c:Z

.field private d:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field private e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

.field private f:Lcom/com/bytedance/overseas/sdk/a/c;

.field private g:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

.field private h:Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;

.field private i:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->c:Z

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->i:Z

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/v;
    .locals 1

    .line 35
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/v;->a:Lcom/bytedance/sdk/openadsdk/core/v;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/v;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/v;->a:Lcom/bytedance/sdk/openadsdk/core/v;

    .line 38
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/v;->a:Lcom/bytedance/sdk/openadsdk/core/v;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/v;->h:Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/v;->g:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/v;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-void
.end method

.method public a(Lcom/com/bytedance/overseas/sdk/a/c;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/v;->f:Lcom/com/bytedance/overseas/sdk/a/c;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/v;->c:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/v;->i:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->c:Z

    return v0
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    return-object v0
.end method

.method public e()Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->g:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->h:Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;

    return-object v0
.end method

.method public g()Lcom/com/bytedance/overseas/sdk/a/c;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->f:Lcom/com/bytedance/overseas/sdk/a/c;

    return-object v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->b:Lcom/bykv/vk/openvk/component/video/api/d/c;

    .line 116
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 117
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 118
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->g:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 119
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->h:Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;

    .line 120
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->f:Lcom/com/bytedance/overseas/sdk/a/c;

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->i:Z

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->c:Z

    return-void
.end method
