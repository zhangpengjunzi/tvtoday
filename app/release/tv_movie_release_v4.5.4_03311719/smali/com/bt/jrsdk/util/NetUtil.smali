.class public Lcom/bt/jrsdk/util/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bt/jrsdk/util/NetUtil$SingletonHolder;
    }
.end annotation


# instance fields
.field private aliUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bt/jrsdk/util/NetUtil$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/bt/jrsdk/util/NetUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/bt/jrsdk/util/NetUtil;
    .locals 1

    .line 30
    invoke-static {}, Lcom/bt/jrsdk/util/NetUtil$SingletonHolder;->access$000()Lcom/bt/jrsdk/util/NetUtil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bt/jrsdk/httplib/config/HttpMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bt/jrsdk/httplib/config/HttpMethod;",
            ")V"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    invoke-direct {v0}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;-><init>()V

    .line 40
    invoke-virtual {v0, p1}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setHost(Ljava/lang/String;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p1, p2}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setPath(Ljava/lang/String;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object p1

    .line 42
    invoke-virtual {p1, p4}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setMethod(Lcom/bt/jrsdk/httplib/config/HttpMethod;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p3}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setParams(Ljava/util/Map;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object p1

    new-instance p2, Lcom/bt/jrsdk/httplib/intercepter/HttpIntercepter;

    invoke-direct {p2}, Lcom/bt/jrsdk/httplib/intercepter/HttpIntercepter;-><init>()V

    .line 44
    invoke-virtual {p1, p2}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setIntercepter(Lcom/bt/jrsdk/httplib/iml/IIntercepter;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object p1

    new-instance p2, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter;

    invoke-direct {p2}, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter;-><init>()V

    .line 45
    invoke-virtual {p1, p2}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setAdapter(Lcom/bt/jrsdk/httplib/iml/IAdapter;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object p1

    new-instance p2, Lcom/bt/jrsdk/util/NetUtil$1;

    invoke-direct {p2, p0}, Lcom/bt/jrsdk/util/NetUtil$1;-><init>(Lcom/bt/jrsdk/util/NetUtil;)V

    .line 46
    invoke-virtual {p1, p2}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->setCallback(Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)Lcom/bt/jrsdk/httplib/RequestClient$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/bt/jrsdk/httplib/RequestClient$Builder;->apply()Lcom/bt/jrsdk/httplib/RequestClient;

    move-result-object p1

    .line 62
    invoke-static {}, Lcom/bt/jrsdk/httplib/HttpManager;->getInstance()Lcom/bt/jrsdk/httplib/HttpManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bt/jrsdk/httplib/HttpManager;->doRequest(Lcom/bt/jrsdk/httplib/RequestClient;)V

    return-void
.end method

.method public report(Ljava/util/Map;Lcom/bt/jrsdk/httplib/config/HttpMethod;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bt/jrsdk/httplib/config/HttpMethod;",
            ")V"
        }
    .end annotation

    const-string v0, "APIVersion"

    const-string v1, "0.6.0"

    .line 67
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_version"

    const-string v1, "1.0.0"

    .line 68
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/bt/jrsdk/util/NetUtil;->aliUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/bt/jrsdk/util/NetUtil;->aliUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/bt/jrsdk/util/NetUtil;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bt/jrsdk/httplib/config/HttpMethod;)V

    :cond_0
    return-void
.end method

.method public setAliUrl(Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iput-object p1, p0, Lcom/bt/jrsdk/util/NetUtil;->aliUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method
