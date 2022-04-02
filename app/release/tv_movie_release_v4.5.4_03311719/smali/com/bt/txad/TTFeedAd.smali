.class public Lcom/bt/txad/TTFeedAd;
.super Lcom/bt/jrsdk/ads/BaseAd;
.source "TTFeedAd.java"


# instance fields
.field private listener:Lcom/bt/jrsdk/listener/SplashAdListener;

.field private mAdType:I

.field private mGdtListener:Lcom/today/player/ad/GdtAdListener;

.field private mPid:Ljava/lang/String;

.field private ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field private videoAdListener:Lcom/bt/jrsdk/listener/VideoAdListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILcom/today/player/ad/GdtAdListener;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/bt/jrsdk/ads/BaseAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p1

    invoke-static {}, Lcom/today/player/base/App;->getInstance()Landroid/app/Application;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/txad/TTFeedAd;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 45
    iput p3, p0, Lcom/bt/txad/TTFeedAd;->mAdType:I

    .line 46
    iput-object p4, p0, Lcom/bt/txad/TTFeedAd;->mGdtListener:Lcom/today/player/ad/GdtAdListener;

    return-void
.end method

.method static synthetic access$000(Lcom/bt/txad/TTFeedAd;)Lcom/today/player/ad/GdtAdListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/txad/TTFeedAd;->mGdtListener:Lcom/today/player/ad/GdtAdListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/bt/txad/TTFeedAd;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/bt/txad/TTFeedAd;->reportGdtLoad()V

    return-void
.end method

.method static synthetic access$200(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    return-object p0
.end method

.method private loadTT()V
    .locals 3

    .line 84
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 85
    invoke-virtual {p0}, Lcom/bt/txad/TTFeedAd;->getGdtPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/bt/txad/TTFeedAd;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    new-instance v2, Lcom/bt/txad/TTFeedAd$1;

    invoke-direct {v2, p0}, Lcom/bt/txad/TTFeedAd$1;-><init>(Lcom/bt/txad/TTFeedAd;)V

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    return-void
.end method

.method private reportGdtLoad()V
    .locals 3

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/bt/txad/TTFeedAd;->requestId:Ljava/lang/String;

    const-string v2, "reqId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lcom/bt/jrsdk/manager/AdStartManager;->uid:Ljava/lang/String;

    const-string v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget v1, p0, Lcom/bt/txad/TTFeedAd;->mAdType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    const-string v2, "pid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/bt/txad/TTFeedAd;->content:Ljava/lang/String;

    const-string v2, "adContent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "state"

    const-string v2, "req"

    .line 133
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ad_model"

    const-string v2, "pangle"

    .line 134
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lcom/bt/txad/TTFeedAd;->mPid:Ljava/lang/String;

    const-string v2, "gdt_pid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {}, Lcom/bt/jrsdk/util/NetUtil;->getInstance()Lcom/bt/jrsdk/util/NetUtil;

    move-result-object v1

    sget-object v2, Lcom/bt/jrsdk/httplib/config/HttpMethod;->GET:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    invoke-virtual {v1, v0, v2}, Lcom/bt/jrsdk/util/NetUtil;->report(Ljava/util/Map;Lcom/bt/jrsdk/httplib/config/HttpMethod;)V

    return-void
.end method

.method private reportGdtShow()V
    .locals 3

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/bt/txad/TTFeedAd;->requestId:Ljava/lang/String;

    const-string v2, "reqId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget v1, p0, Lcom/bt/txad/TTFeedAd;->mAdType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/bt/jrsdk/manager/AdStartManager;->uid:Ljava/lang/String;

    const-string v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "state"

    const-string v2, "show"

    .line 147
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ad_model"

    const-string v2, "pangle"

    .line 148
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcom/bt/txad/TTFeedAd;->mPid:Ljava/lang/String;

    const-string v2, "gdt_pid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {}, Lcom/bt/jrsdk/util/NetUtil;->getInstance()Lcom/bt/jrsdk/util/NetUtil;

    move-result-object v1

    sget-object v2, Lcom/bt/jrsdk/httplib/config/HttpMethod;->GET:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    invoke-virtual {v1, v0, v2}, Lcom/bt/jrsdk/util/NetUtil;->report(Ljava/util/Map;Lcom/bt/jrsdk/httplib/config/HttpMethod;)V

    return-void
.end method


# virtual methods
.method public getGdtPid()Ljava/lang/String;
    .locals 7

    .line 156
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/api/ApiConfig;->getTxad()Lcom/today/player/bean/PlayerModel$TxadDTO;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_4

    .line 158
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 160
    iget v3, p0, Lcom/bt/txad/TTFeedAd;->mAdType:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-nez v3, :cond_1

    .line 161
    invoke-static {}, Lcom/bt/admanager/AdWeightManager;->getInstance()Lcom/bt/admanager/AdWeightManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bt/admanager/AdWeightManager;->getSplashImageCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    rem-int/2addr v3, v6

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 167
    invoke-virtual {v0}, Lcom/today/player/bean/PlayerModel$TxadDTO;->getTiepian_image()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 169
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    .line 172
    :cond_3
    invoke-virtual {v0}, Lcom/today/player/bean/PlayerModel$TxadDTO;->getTiepian_video()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_4
    :goto_1
    return-object v1
.end method

.method protected loadCurrentAd()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/bt/txad/TTFeedAd;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/bt/txad/TTFeedAd;->loadTT()V

    :cond_0
    return-void
.end method

.method protected recycleAdAndListener()V
    .locals 2

    .line 77
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->recycleSplashListener(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->recycleVideoListener(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/bt/jrsdk/manager/AdObserver;->getInstance()Lcom/bt/jrsdk/manager/AdObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdObserver;->recycleVideo(Ljava/lang/String;)V

    return-void
.end method

.method public setSplashListener(Lcom/bt/jrsdk/listener/SplashAdListener;)V
    .locals 2

    .line 66
    iput-object p1, p0, Lcom/bt/txad/TTFeedAd;->listener:Lcom/bt/jrsdk/listener/SplashAdListener;

    .line 67
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    iget-object v1, p0, Lcom/bt/txad/TTFeedAd;->listener:Lcom/bt/jrsdk/listener/SplashAdListener;

    invoke-virtual {p1, v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->registerSplashListener(Ljava/lang/String;Lcom/bt/jrsdk/listener/SplashAdListener;)V

    return-void
.end method

.method public setVideoListener(Lcom/bt/jrsdk/listener/VideoAdListener;)V
    .locals 2

    .line 71
    iput-object p1, p0, Lcom/bt/txad/TTFeedAd;->videoAdListener:Lcom/bt/jrsdk/listener/VideoAdListener;

    .line 72
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/txad/TTFeedAd;->pid:Ljava/lang/String;

    iget-object v1, p0, Lcom/bt/txad/TTFeedAd;->videoAdListener:Lcom/bt/jrsdk/listener/VideoAdListener;

    invoke-virtual {p1, v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->registerVideoListener(Ljava/lang/String;Lcom/bt/jrsdk/listener/VideoAdListener;)V

    return-void
.end method

.method public showAd()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/bt/txad/TTFeedAd;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bt/admanager/AdWeightManager;->getInstance()Lcom/bt/admanager/AdWeightManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bt/admanager/AdWeightManager;->canJump()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/bt/admanager/AdWeightManager;->getInstance()Lcom/bt/admanager/AdWeightManager;

    move-result-object v0

    iget v1, p0, Lcom/bt/txad/TTFeedAd;->mAdType:I

    invoke-virtual {v0, v1}, Lcom/bt/admanager/AdWeightManager;->setGdtAdType(I)V

    .line 60
    const-class v0, Lcom/bt/jrsdk/activity/TTAdFullActivity;

    invoke-virtual {p0, v0}, Lcom/bt/txad/TTFeedAd;->go2AdActivity(Ljava/lang/Class;)V

    .line 61
    invoke-direct {p0}, Lcom/bt/txad/TTFeedAd;->reportGdtShow()V

    :cond_0
    return-void
.end method
