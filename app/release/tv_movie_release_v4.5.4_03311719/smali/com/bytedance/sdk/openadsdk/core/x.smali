.class public Lcom/bytedance/sdk/openadsdk/core/x;
.super Ljava/lang/Object;
.source "TTAdNativeImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative;


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/p;

.field private volatile b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Landroid/content/Context;

    return-void
.end method

.method private a()Landroid/content/Context;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Landroid/content/Context;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/x;)Landroid/content/Context;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->a()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/component/g/g;Lcom/bytedance/sdk/openadsdk/common/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    .line 341
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->isInitSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "TTAdNativeImpl"

    const-string p3, "please exec TTAdSdk.init before load ad"

    .line 342
    invoke-static {p1, p3}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 p1, 0x2710

    const-string p3, "Please exec TTAdSdk.init before load ad"

    .line 344
    invoke-interface {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/common/b;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 348
    :cond_1
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 349
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/l;->c()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 4

    .line 309
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Image material size must be set"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/q;->a(ZLjava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/q;->a(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/common/b;)Z
    .locals 2

    .line 331
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/j/e;->a()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x3e8

    const-string v1, "Ad request is temporarily paused, Please contact your Pangle AM"

    .line 333
    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/common/b;->onError(ILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/common/b;)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/common/b;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/x;)Lcom/bytedance/sdk/openadsdk/core/p;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    return-object p0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    .line 314
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 315
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "Must set the type of requesting native ads, currently supports TYPE_BANNER and TYPE_INTERACTION_AD"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/q;->a(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    .line 319
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 320
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "Request the type of non-native ad, please do not call the setNativeAdType() method"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/q;->a(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public loadAppOpenAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$AppOpenAdListener;I)V
    .locals 7

    .line 287
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/a/b;

    invoke-direct {v6, p2}, Lcom/bytedance/sdk/openadsdk/core/a/b;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$AppOpenAdListener;)V

    .line 288
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/x$8;

    const-string v2, "loadSplashAd b"

    move-object v0, p2

    move-object v1, p0

    move-object v3, v6

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/x$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/b;Lcom/bytedance/sdk/openadsdk/AdSlot;I)V

    .line 305
    invoke-direct {p0, p2, v6, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/component/g/g;Lcom/bytedance/sdk/openadsdk/common/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method public loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .locals 2

    .line 247
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/g;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/g;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 248
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/x$6;

    const-string v1, "loadBannerExpressAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/x$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/g;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 260
    invoke-direct {p0, p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/component/g/g;Lcom/bytedance/sdk/openadsdk/common/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method public loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
    .locals 8

    .line 63
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/a/c;

    invoke-direct {v6, p2}, Lcom/bytedance/sdk/openadsdk/core/a/c;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    .line 64
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/x$1;

    const-string v2, "loadFeedAd"

    move-object v0, v7

    move-object v1, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/x$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/c;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    .line 89
    invoke-direct {p0, v7, v6, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/component/g/g;Lcom/bytedance/sdk/openadsdk/common/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method public loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V
    .locals 2

    .line 222
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/d;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/d;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    .line 223
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/x$5;

    const-string v1, "loadFullScreenVideoAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/x$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/d;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 241
    invoke-direct {p0, p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/component/g/g;Lcom/bytedance/sdk/openadsdk/common/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method public loadInteractionAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V
    .locals 2

    .line 162
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/e;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V

    .line 163
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/x$3;

    const-string v1, "loadInteractionAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/x$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/e;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 189
    invoke-direct {p0, p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/component/g/g;Lcom/bytedance/sdk/openadsdk/common/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method public loadInteractionExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .locals 2

    .line 268
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/g;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/g;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 269
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/x$7;

    const-string v1, "loadInteractionExpressAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/x$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/g;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 280
    invoke-direct {p0, p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/component/g/g;Lcom/bytedance/sdk/openadsdk/common/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method public loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V
    .locals 10

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 97
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setDurationSlotType(I)V

    .line 98
    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/a/f;

    invoke-direct {v8, p2}, Lcom/bytedance/sdk/openadsdk/core/a/f;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V

    .line 99
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/x$2;

    const-string v2, "loadNativeAd"

    move-object v0, v9

    move-object v1, p0

    move-object v3, v8

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/x$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;J)V

    .line 155
    invoke-direct {p0, v9, v8, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/component/g/g;Lcom/bytedance/sdk/openadsdk/common/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method public loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    .locals 2

    .line 197
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/h;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/h;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 198
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/x$4;

    const-string v1, "loadRewardVideoAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/x$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/h;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 216
    invoke-direct {p0, p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/component/g/g;Lcom/bytedance/sdk/openadsdk/common/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method
