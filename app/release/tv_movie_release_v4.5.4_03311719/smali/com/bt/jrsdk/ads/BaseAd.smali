.class public abstract Lcom/bt/jrsdk/ads/BaseAd;
.super Ljava/lang/Object;
.source "BaseAd.java"


# static fields
.field protected static _activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ads_id:I

.field protected content:Ljava/lang/String;

.field protected pid:Ljava/lang/String;

.field protected requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 35
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iput-object p2, p0, Lcom/bt/jrsdk/ads/BaseAd;->pid:Ljava/lang/String;

    .line 39
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p2, Lcom/bt/jrsdk/ads/BaseAd;->_activity:Ljava/lang/ref/WeakReference;

    .line 40
    invoke-static {}, Lcom/bt/jrsdk/util/RandomUtil;->getRandomString()Ljava/lang/String;

    move-result-object p1

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/ads/BaseAd;->requestId:Ljava/lang/String;

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "pid is null!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "activity is null!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected downLoadPic(Ljava/lang/String;Lcom/bt/jrsdk/listener/PicDownloadListener;)V
    .locals 1

    .line 75
    new-instance v0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    invoke-direct {v0}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;-><init>()V

    .line 76
    invoke-virtual {v0, p1}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setHost(Ljava/lang/String;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object p1

    const-string v0, ""

    .line 77
    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setPath(Ljava/lang/String;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object p1

    sget-object v0, Lcom/bt/jrsdk/httplib/config/HttpMethod;->GET:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    .line 78
    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setMethod(Lcom/bt/jrsdk/httplib/config/HttpMethod;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setParams(Ljava/util/Map;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object p1

    new-instance v0, Lcom/bt/jrsdk/httplib/intercepter/HttpIntercepter;

    invoke-direct {v0}, Lcom/bt/jrsdk/httplib/intercepter/HttpIntercepter;-><init>()V

    .line 80
    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setIntercepter(Lcom/bt/jrsdk/httplib/iml/IIntercepter;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object p1

    new-instance v0, Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter;

    invoke-direct {v0}, Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter;-><init>()V

    .line 81
    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setAdapter(Lcom/bt/jrsdk/httplib/iml/IAdapter;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object p1

    new-instance v0, Lcom/bt/jrsdk/ads/BaseAd$1;

    invoke-direct {v0, p0, p2}, Lcom/bt/jrsdk/ads/BaseAd$1;-><init>(Lcom/bt/jrsdk/ads/BaseAd;Lcom/bt/jrsdk/listener/PicDownloadListener;)V

    .line 82
    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setCallback(Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->apply()Lcom/bt/jrsdk/httplib/RequestClient;

    move-result-object p1

    .line 100
    invoke-static {}, Lcom/bt/jrsdk/httplib/HttpManager;->getInstance()Lcom/bt/jrsdk/httplib/HttpManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bt/jrsdk/httplib/HttpManager;->doRequest(Lcom/bt/jrsdk/httplib/RequestClient;)V

    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .line 46
    sget-object v0, Lcom/bt/jrsdk/ads/BaseAd;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method protected go2AdActivity(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bt/jrsdk/ads/BaseAd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    iget-object p1, p0, Lcom/bt/jrsdk/ads/BaseAd;->pid:Ljava/lang/String;

    const-string v1, "pid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0}, Lcom/bt/jrsdk/ads/BaseAd;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lcom/bt/jrsdk/ads/BaseAd;->reportShow()V

    return-void
.end method

.method public loadAd(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/bt/jrsdk/ads/BaseAd;->content:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/bt/jrsdk/ads/BaseAd;->loadCurrentAd()V

    return-void
.end method

.method protected abstract loadCurrentAd()V
.end method

.method public recycle()V
    .locals 1

    .line 61
    sget-object v0, Lcom/bt/jrsdk/ads/BaseAd;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 62
    invoke-virtual {p0}, Lcom/bt/jrsdk/ads/BaseAd;->recycleAdAndListener()V

    return-void
.end method

.method protected abstract recycleAdAndListener()V
.end method

.method protected reportLoad(Ljava/lang/String;)V
    .locals 3

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/bt/jrsdk/ads/BaseAd;->requestId:Ljava/lang/String;

    const-string v2, "reqId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lcom/bt/jrsdk/manager/AdStartManager;->uid:Ljava/lang/String;

    const-string v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "adType"

    .line 107
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget p1, p0, Lcom/bt/jrsdk/ads/BaseAd;->ads_id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "ads_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object p1, p0, Lcom/bt/jrsdk/ads/BaseAd;->pid:Ljava/lang/String;

    const-string v1, "pid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object p1, p0, Lcom/bt/jrsdk/ads/BaseAd;->content:Ljava/lang/String;

    const-string v1, "adContent"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "ts"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "state"

    const-string v1, "req"

    .line 112
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {}, Lcom/bt/jrsdk/util/NetUtil;->getInstance()Lcom/bt/jrsdk/util/NetUtil;

    move-result-object p1

    sget-object v1, Lcom/bt/jrsdk/httplib/config/HttpMethod;->GET:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    invoke-virtual {p1, v0, v1}, Lcom/bt/jrsdk/util/NetUtil;->report(Ljava/util/Map;Lcom/bt/jrsdk/httplib/config/HttpMethod;)V

    return-void
.end method

.method protected reportShow()V
    .locals 3

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/bt/jrsdk/ads/BaseAd;->requestId:Ljava/lang/String;

    const-string v2, "reqId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget v1, p0, Lcom/bt/jrsdk/ads/BaseAd;->ads_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ads_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "state"

    const-string v2, "show"

    .line 122
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {}, Lcom/bt/jrsdk/util/NetUtil;->getInstance()Lcom/bt/jrsdk/util/NetUtil;

    move-result-object v1

    sget-object v2, Lcom/bt/jrsdk/httplib/config/HttpMethod;->GET:Lcom/bt/jrsdk/httplib/config/HttpMethod;

    invoke-virtual {v1, v0, v2}, Lcom/bt/jrsdk/util/NetUtil;->report(Ljava/util/Map;Lcom/bt/jrsdk/httplib/config/HttpMethod;)V

    return-void
.end method

.method public abstract showAd()V
.end method
