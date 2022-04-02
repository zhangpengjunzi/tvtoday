.class public Lcom/bt/jrsdk/ads/SplashAd;
.super Lcom/bt/jrsdk/ads/BaseAd;
.source "SplashAd.java"


# instance fields
.field private adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

.field private ad_type:Ljava/lang/String;

.field private listener:Lcom/bt/jrsdk/listener/SplashAdListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/bt/jrsdk/ads/BaseAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 41
    iput-object p3, p0, Lcom/bt/jrsdk/ads/SplashAd;->ad_type:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bt/jrsdk/ads/SplashAd;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p7}, Lcom/bt/jrsdk/ads/SplashAd;->getAdInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/bt/jrsdk/ads/SplashAd;)Lcom/bt/jrsdk/listener/SplashAdListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/bt/jrsdk/ads/SplashAd;->listener:Lcom/bt/jrsdk/listener/SplashAdListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/bt/jrsdk/ads/SplashAd;)Lcom/bt/jrsdk/bean/SplashAdInfo;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/bt/jrsdk/ads/SplashAd;->adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

    return-object p0
.end method

.method static synthetic access$202(Lcom/bt/jrsdk/ads/SplashAd;Lcom/bt/jrsdk/bean/SplashAdInfo;)Lcom/bt/jrsdk/bean/SplashAdInfo;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/bt/jrsdk/ads/SplashAd;->adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

    return-object p1
.end method

.method private getAdInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7

    .line 114
    invoke-static {}, Lcom/bt/jrsdk/util/NetUtil;->getInstance()Lcom/bt/jrsdk/util/NetUtil;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/bt/jrsdk/util/NetUtil;->setAliUrl(Ljava/lang/String;)V

    .line 115
    iget-object p4, p0, Lcom/bt/jrsdk/ads/SplashAd;->ad_type:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/bt/jrsdk/ads/SplashAd;->reportLoad(Ljava/lang/String;)V

    .line 117
    new-instance p4, Lcom/bt/jrsdk/ads/SplashAd$2;

    move-object v0, p4

    move-object v1, p0

    move v2, p5

    move v3, p2

    move-object v4, p3

    move v5, p7

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/bt/jrsdk/ads/SplashAd$2;-><init>(Lcom/bt/jrsdk/ads/SplashAd;IILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, p1, p4}, Lcom/bt/jrsdk/ads/SplashAd;->downLoadPic(Ljava/lang/String;Lcom/bt/jrsdk/listener/PicDownloadListener;)V

    return-void
.end method


# virtual methods
.method protected loadCurrentAd()V
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/bt/jrsdk/ads/SplashAd;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/bt/jrsdk/ads/SplashAd;->listener:Lcom/bt/jrsdk/listener/SplashAdListener;

    const/16 v1, 0x7532

    const-string v2, "activity_null"

    invoke-interface {v0, v2, v1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onError(Ljava/lang/String;I)V

    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/bt/jrsdk/ads/SplashAd;->ad_type:Ljava/lang/String;

    const-string v2, "ad_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/bt/jrsdk/util/Utils;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v1, Lcom/bt/jrsdk/manager/AdStartManager;->uid:Ljava/lang/String;

    const-string v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package"

    const-string v2, "com.today.player.gp"

    .line 55
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/bt/jrsdk/ads/SplashAd;->pid:Ljava/lang/String;

    const-string v2, "pid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    invoke-direct {v1}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;-><init>()V

    const-string v2, "https://api.16888.one/getAds?"

    .line 59
    invoke-virtual {v1, v2}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setHost(Ljava/lang/String;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v1

    const-string v2, ""

    .line 60
    invoke-virtual {v1, v2}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setPath(Ljava/lang/String;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/bt/jrsdk/httplib/config/HttpMethod;->GET:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    .line 61
    invoke-virtual {v1, v2}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setMethod(Lcom/bt/jrsdk/httplib/config/HttpMethod;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setParams(Ljava/util/Map;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/bt/jrsdk/httplib/intercepter/HttpIntercepter;

    invoke-direct {v1}, Lcom/bt/jrsdk/httplib/intercepter/HttpIntercepter;-><init>()V

    .line 63
    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setIntercepter(Lcom/bt/jrsdk/httplib/iml/IIntercepter;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter;

    invoke-direct {v1}, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter;-><init>()V

    .line 64
    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setAdapter(Lcom/bt/jrsdk/httplib/iml/IAdapter;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/bt/jrsdk/ads/SplashAd$1;

    invoke-direct {v1, p0}, Lcom/bt/jrsdk/ads/SplashAd$1;-><init>(Lcom/bt/jrsdk/ads/SplashAd;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setCallback(Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->apply()Lcom/bt/jrsdk/httplib/RequestClient;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/bt/jrsdk/httplib/HttpManager;->getInstance()Lcom/bt/jrsdk/httplib/HttpManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bt/jrsdk/httplib/HttpManager;->doRequest(Lcom/bt/jrsdk/httplib/RequestClient;)V

    return-void
.end method

.method protected recycleAdAndListener()V
    .locals 2

    .line 165
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/ads/SplashAd;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->recycleSplashListener(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/bt/jrsdk/manager/AdObserver;->getInstance()Lcom/bt/jrsdk/manager/AdObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/ads/SplashAd;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdObserver;->recycleSplash(Ljava/lang/String;)V

    return-void
.end method

.method public setSplashListener(Lcom/bt/jrsdk/listener/SplashAdListener;)V
    .locals 2

    .line 159
    iput-object p1, p0, Lcom/bt/jrsdk/ads/SplashAd;->listener:Lcom/bt/jrsdk/listener/SplashAdListener;

    .line 160
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/ads/SplashAd;->pid:Ljava/lang/String;

    iget-object v1, p0, Lcom/bt/jrsdk/ads/SplashAd;->listener:Lcom/bt/jrsdk/listener/SplashAdListener;

    invoke-virtual {p1, v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->registerSplashListener(Ljava/lang/String;Lcom/bt/jrsdk/listener/SplashAdListener;)V

    return-void
.end method

.method public showAd()V
    .locals 3

    .line 145
    invoke-virtual {p0}, Lcom/bt/jrsdk/ads/SplashAd;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bt/jrsdk/ads/SplashAd;->adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Lcom/bt/jrsdk/bean/SplashAdInfo;->getIsVideo()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const-class v0, Lcom/bt/jrsdk/activity/SplashAdActivity;

    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/ads/SplashAd;->go2AdActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 149
    :cond_0
    const-class v0, Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/ads/SplashAd;->go2AdActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/bt/jrsdk/ads/SplashAd;->listener:Lcom/bt/jrsdk/listener/SplashAdListener;

    const/16 v1, 0x7532

    const-string v2, "activity_null"

    invoke-interface {v0, v2, v1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onError(Ljava/lang/String;I)V

    .line 153
    iget-object v0, p0, Lcom/bt/jrsdk/ads/SplashAd;->listener:Lcom/bt/jrsdk/listener/SplashAdListener;

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onNoAd()V

    .line 154
    iget-object v0, p0, Lcom/bt/jrsdk/ads/SplashAd;->listener:Lcom/bt/jrsdk/listener/SplashAdListener;

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onFinish()V

    :goto_0
    return-void
.end method
