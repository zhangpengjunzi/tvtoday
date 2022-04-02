.class public Lcom/bt/jrsdk/ads/VideoAd;
.super Lcom/bt/jrsdk/ads/BaseAd;
.source "VideoAd.java"


# instance fields
.field private adInfo:Lcom/bt/jrsdk/bean/VideoAdInfo;

.field private listener:Lcom/bt/jrsdk/listener/VideoAdListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/bt/jrsdk/ads/BaseAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/bt/jrsdk/ads/VideoAd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p6}, Lcom/bt/jrsdk/ads/VideoAd;->getAdInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/listener/VideoAdListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/bt/jrsdk/ads/VideoAd;->listener:Lcom/bt/jrsdk/listener/VideoAdListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/bean/VideoAdInfo;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/bt/jrsdk/ads/VideoAd;->adInfo:Lcom/bt/jrsdk/bean/VideoAdInfo;

    return-object p0
.end method

.method static synthetic access$202(Lcom/bt/jrsdk/ads/VideoAd;Lcom/bt/jrsdk/bean/VideoAdInfo;)Lcom/bt/jrsdk/bean/VideoAdInfo;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd;->adInfo:Lcom/bt/jrsdk/bean/VideoAdInfo;

    return-object p1
.end method

.method private getAdInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .line 112
    invoke-static {}, Lcom/bt/jrsdk/util/NetUtil;->getInstance()Lcom/bt/jrsdk/util/NetUtil;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/bt/jrsdk/util/NetUtil;->setAliUrl(Ljava/lang/String;)V

    const-string p4, "2"

    .line 113
    invoke-virtual {p0, p4}, Lcom/bt/jrsdk/ads/VideoAd;->reportLoad(Ljava/lang/String;)V

    .line 115
    new-instance p4, Lcom/bt/jrsdk/ads/VideoAd$2;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/bt/jrsdk/ads/VideoAd$2;-><init>(Lcom/bt/jrsdk/ads/VideoAd;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p1, p4}, Lcom/bt/jrsdk/ads/VideoAd;->downLoadPic(Ljava/lang/String;Lcom/bt/jrsdk/listener/PicDownloadListener;)V

    return-void
.end method


# virtual methods
.method protected loadCurrentAd()V
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/bt/jrsdk/ads/VideoAd;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/bt/jrsdk/ads/VideoAd;->listener:Lcom/bt/jrsdk/listener/VideoAdListener;

    const/16 v1, 0x7532

    const-string v2, "activity_null"

    invoke-interface {v0, v2, v1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onError(Ljava/lang/String;I)V

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ad_type"

    const-string v2, "2"

    .line 51
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lcom/bt/jrsdk/manager/AdStartManager;->uid:Ljava/lang/String;

    const-string v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/bt/jrsdk/util/Utils;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package"

    const-string v2, "com.today.player.gp"

    .line 54
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/bt/jrsdk/ads/VideoAd;->pid:Ljava/lang/String;

    const-string v2, "pid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v1, Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    invoke-direct {v1}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;-><init>()V

    const-string v2, "https://api.16888.one/getAds?"

    .line 58
    invoke-virtual {v1, v2}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setHost(Ljava/lang/String;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v1

    const-string v2, ""

    .line 59
    invoke-virtual {v1, v2}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setPath(Ljava/lang/String;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/bt/jrsdk/httplib/config/HttpMethod;->GET:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    .line 60
    invoke-virtual {v1, v2}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setMethod(Lcom/bt/jrsdk/httplib/config/HttpMethod;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setParams(Ljava/util/Map;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/bt/jrsdk/httplib/intercepter/HttpIntercepter;

    invoke-direct {v1}, Lcom/bt/jrsdk/httplib/intercepter/HttpIntercepter;-><init>()V

    .line 62
    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setIntercepter(Lcom/bt/jrsdk/httplib/iml/IIntercepter;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter;

    invoke-direct {v1}, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter;-><init>()V

    .line 63
    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setAdapter(Lcom/bt/jrsdk/httplib/iml/IAdapter;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/bt/jrsdk/ads/VideoAd$1;

    invoke-direct {v1, p0}, Lcom/bt/jrsdk/ads/VideoAd$1;-><init>(Lcom/bt/jrsdk/ads/VideoAd;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setCallback(Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->apply()Lcom/bt/jrsdk/httplib/RequestClient;

    move-result-object v0

    .line 108
    invoke-static {}, Lcom/bt/jrsdk/httplib/HttpManager;->getInstance()Lcom/bt/jrsdk/httplib/HttpManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bt/jrsdk/httplib/HttpManager;->doRequest(Lcom/bt/jrsdk/httplib/RequestClient;)V

    return-void
.end method

.method protected recycleAdAndListener()V
    .locals 2

    .line 160
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/ads/VideoAd;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->recycleVideoListener(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/bt/jrsdk/manager/AdObserver;->getInstance()Lcom/bt/jrsdk/manager/AdObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/ads/VideoAd;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdObserver;->recycleVideo(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoListener(Lcom/bt/jrsdk/listener/VideoAdListener;)V
    .locals 2

    .line 154
    iput-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd;->listener:Lcom/bt/jrsdk/listener/VideoAdListener;

    .line 155
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/ads/VideoAd;->pid:Ljava/lang/String;

    iget-object v1, p0, Lcom/bt/jrsdk/ads/VideoAd;->listener:Lcom/bt/jrsdk/listener/VideoAdListener;

    invoke-virtual {p1, v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->registerVideoListener(Ljava/lang/String;Lcom/bt/jrsdk/listener/VideoAdListener;)V

    return-void
.end method

.method public showAd()V
    .locals 3

    .line 140
    invoke-virtual {p0}, Lcom/bt/jrsdk/ads/VideoAd;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bt/jrsdk/ads/VideoAd;->adInfo:Lcom/bt/jrsdk/bean/VideoAdInfo;

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0}, Lcom/bt/jrsdk/bean/VideoAdInfo;->getIsVideo()I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const-class v0, Lcom/bt/jrsdk/activity/InteractionAdActivity;

    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/ads/VideoAd;->go2AdActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 144
    :cond_0
    const-class v0, Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/ads/VideoAd;->go2AdActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/bt/jrsdk/ads/VideoAd;->listener:Lcom/bt/jrsdk/listener/VideoAdListener;

    const/16 v1, 0x7532

    const-string v2, "activity_null"

    invoke-interface {v0, v2, v1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onError(Ljava/lang/String;I)V

    .line 148
    iget-object v0, p0, Lcom/bt/jrsdk/ads/VideoAd;->listener:Lcom/bt/jrsdk/listener/VideoAdListener;

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onNoAd()V

    .line 149
    iget-object v0, p0, Lcom/bt/jrsdk/ads/VideoAd;->listener:Lcom/bt/jrsdk/listener/VideoAdListener;

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    :goto_0
    return-void
.end method
