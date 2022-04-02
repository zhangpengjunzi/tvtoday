.class public Lcom/bt/jrsdk/ads/InteractionAd;
.super Lcom/bt/jrsdk/ads/BaseAd;
.source "InteractionAd.java"


# instance fields
.field private adInfo:Lcom/bt/jrsdk/bean/InteractionAdInfo;

.field private listener:Lcom/bt/jrsdk/listener/InteractionAdListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/bt/jrsdk/ads/BaseAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/bt/jrsdk/ads/InteractionAd;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bt/jrsdk/ads/InteractionAd;->getAdInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/listener/InteractionAdListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/bt/jrsdk/ads/InteractionAd;->listener:Lcom/bt/jrsdk/listener/InteractionAdListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/bean/InteractionAdInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/bt/jrsdk/ads/InteractionAd;->adInfo:Lcom/bt/jrsdk/bean/InteractionAdInfo;

    return-object p0
.end method

.method static synthetic access$202(Lcom/bt/jrsdk/ads/InteractionAd;Lcom/bt/jrsdk/bean/InteractionAdInfo;)Lcom/bt/jrsdk/bean/InteractionAdInfo;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/bt/jrsdk/ads/InteractionAd;->adInfo:Lcom/bt/jrsdk/bean/InteractionAdInfo;

    return-object p1
.end method

.method private getAdInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-static {}, Lcom/bt/jrsdk/util/NetUtil;->getInstance()Lcom/bt/jrsdk/util/NetUtil;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/bt/jrsdk/util/NetUtil;->setAliUrl(Ljava/lang/String;)V

    const-string p2, "2"

    .line 101
    invoke-virtual {p0, p2}, Lcom/bt/jrsdk/ads/InteractionAd;->reportLoad(Ljava/lang/String;)V

    .line 103
    new-instance p2, Lcom/bt/jrsdk/ads/InteractionAd$2;

    invoke-direct {p2, p0, p3}, Lcom/bt/jrsdk/ads/InteractionAd$2;-><init>(Lcom/bt/jrsdk/ads/InteractionAd;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/bt/jrsdk/ads/InteractionAd;->downLoadPic(Ljava/lang/String;Lcom/bt/jrsdk/listener/PicDownloadListener;)V

    return-void
.end method


# virtual methods
.method protected loadCurrentAd()V
    .locals 3

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ad_type"

    const-string v2, "2"

    .line 43
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/bt/jrsdk/manager/AdStartManager;->uid:Ljava/lang/String;

    const-string v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/bt/jrsdk/ads/InteractionAd;->pid:Ljava/lang/String;

    const-string v2, "pid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v1, Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    invoke-direct {v1}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;-><init>()V

    const-string v2, "https://api.16888.one/getAds?"

    .line 47
    invoke-virtual {v1, v2}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setHost(Ljava/lang/String;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v1

    const-string v2, ""

    .line 48
    invoke-virtual {v1, v2}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setPath(Ljava/lang/String;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/bt/jrsdk/httplib/config/HttpMethod;->GET:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    .line 49
    invoke-virtual {v1, v2}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setMethod(Lcom/bt/jrsdk/httplib/config/HttpMethod;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setParams(Ljava/util/Map;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/bt/jrsdk/httplib/intercepter/HttpIntercepter;

    invoke-direct {v1}, Lcom/bt/jrsdk/httplib/intercepter/HttpIntercepter;-><init>()V

    .line 51
    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setIntercepter(Lcom/bt/jrsdk/httplib/iml/IIntercepter;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter;

    invoke-direct {v1}, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter;-><init>()V

    .line 52
    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setAdapter(Lcom/bt/jrsdk/httplib/iml/IAdapter;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/bt/jrsdk/ads/InteractionAd$1;

    invoke-direct {v1, p0}, Lcom/bt/jrsdk/ads/InteractionAd$1;-><init>(Lcom/bt/jrsdk/ads/InteractionAd;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setCallback(Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->apply()Lcom/bt/jrsdk/httplib/RequestClient;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/bt/jrsdk/httplib/HttpManager;->getInstance()Lcom/bt/jrsdk/httplib/HttpManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bt/jrsdk/httplib/HttpManager;->doRequest(Lcom/bt/jrsdk/httplib/RequestClient;)V

    return-void
.end method

.method protected recycleAdAndListener()V
    .locals 2

    .line 143
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/ads/InteractionAd;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->recycleInteractionListener(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/bt/jrsdk/manager/AdObserver;->getInstance()Lcom/bt/jrsdk/manager/AdObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/ads/InteractionAd;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdObserver;->recycleInteraction(Ljava/lang/String;)V

    return-void
.end method

.method public setInteractionAdListener(Lcom/bt/jrsdk/listener/InteractionAdListener;)V
    .locals 2

    .line 137
    iput-object p1, p0, Lcom/bt/jrsdk/ads/InteractionAd;->listener:Lcom/bt/jrsdk/listener/InteractionAdListener;

    .line 138
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/ads/InteractionAd;->pid:Ljava/lang/String;

    iget-object v1, p0, Lcom/bt/jrsdk/ads/InteractionAd;->listener:Lcom/bt/jrsdk/listener/InteractionAdListener;

    invoke-virtual {p1, v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->registerInteractionListener(Ljava/lang/String;Lcom/bt/jrsdk/listener/InteractionAdListener;)V

    return-void
.end method

.method public showAd()V
    .locals 3

    .line 126
    invoke-virtual {p0}, Lcom/bt/jrsdk/ads/InteractionAd;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    const-class v0, Lcom/bt/jrsdk/activity/InteractionAdActivity;

    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/ads/InteractionAd;->go2AdActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/bt/jrsdk/ads/InteractionAd;->listener:Lcom/bt/jrsdk/listener/InteractionAdListener;

    const/16 v1, 0x7532

    const-string v2, "activity_null"

    invoke-interface {v0, v2, v1}, Lcom/bt/jrsdk/listener/InteractionAdListener;->onError(Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Lcom/bt/jrsdk/ads/InteractionAd;->listener:Lcom/bt/jrsdk/listener/InteractionAdListener;

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/InteractionAdListener;->onNoAd()V

    .line 131
    iget-object v0, p0, Lcom/bt/jrsdk/ads/InteractionAd;->listener:Lcom/bt/jrsdk/listener/InteractionAdListener;

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/InteractionAdListener;->onFinish()V

    :goto_0
    return-void
.end method
