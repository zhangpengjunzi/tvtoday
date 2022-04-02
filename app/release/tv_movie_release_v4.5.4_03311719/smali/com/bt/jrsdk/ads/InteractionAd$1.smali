.class Lcom/bt/jrsdk/ads/InteractionAd$1;
.super Ljava/lang/Object;
.source "InteractionAd.java"

# interfaces
.implements Lcom/bt/jrsdk/httplib/iml/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/ads/InteractionAd;->loadCurrentAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bt/jrsdk/httplib/iml/ResponseCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/ads/InteractionAd;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/ads/InteractionAd;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/bt/jrsdk/ads/InteractionAd$1;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 0

    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .locals 3

    const-string v0, "NetUtil"

    .line 85
    invoke-static {v0, p1}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/bt/jrsdk/ads/InteractionAd$1;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {v0}, Lcom/bt/jrsdk/ads/InteractionAd;->access$100(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/listener/InteractionAdListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x7531

    invoke-interface {v0, p1, v1}, Lcom/bt/jrsdk/listener/InteractionAdListener;->onError(Ljava/lang/String;I)V

    .line 87
    iget-object p1, p0, Lcom/bt/jrsdk/ads/InteractionAd$1;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/InteractionAd;->access$100(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/listener/InteractionAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/InteractionAdListener;->onNoAd()V

    .line 88
    iget-object p1, p0, Lcom/bt/jrsdk/ads/InteractionAd$1;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/InteractionAd;->access$100(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/listener/InteractionAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/InteractionAdListener;->onFinish()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bt/jrsdk/ads/InteractionAd$1;->success(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 5

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetUtil"

    invoke-static {v1, v0}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7531

    .line 59
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "error_code"

    .line 60
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "result"

    .line 62
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "ads_cover"

    .line 63
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "countdown"

    .line 64
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ads_url"

    .line 65
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "log_report_url"

    .line 66
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object v4, p0, Lcom/bt/jrsdk/ads/InteractionAd$1;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {v4, v1, v2, v3, p1}, Lcom/bt/jrsdk/ads/InteractionAd;->access$000(Lcom/bt/jrsdk/ads/InteractionAd;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/bt/jrsdk/ads/InteractionAd$1;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/InteractionAd;->access$100(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/listener/InteractionAdListener;

    move-result-object p1

    const-string v1, "result code !0"

    invoke-interface {p1, v1, v0}, Lcom/bt/jrsdk/listener/InteractionAdListener;->onError(Ljava/lang/String;I)V

    .line 70
    iget-object p1, p0, Lcom/bt/jrsdk/ads/InteractionAd$1;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/InteractionAd;->access$100(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/listener/InteractionAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/InteractionAdListener;->onNoAd()V

    .line 71
    iget-object p1, p0, Lcom/bt/jrsdk/ads/InteractionAd$1;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/InteractionAd;->access$100(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/listener/InteractionAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/InteractionAdListener;->onFinish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 77
    iget-object v1, p0, Lcom/bt/jrsdk/ads/InteractionAd$1;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {v1}, Lcom/bt/jrsdk/ads/InteractionAd;->access$100(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/listener/InteractionAdListener;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/bt/jrsdk/listener/InteractionAdListener;->onError(Ljava/lang/String;I)V

    .line 78
    iget-object p1, p0, Lcom/bt/jrsdk/ads/InteractionAd$1;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/InteractionAd;->access$100(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/listener/InteractionAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/InteractionAdListener;->onNoAd()V

    .line 79
    iget-object p1, p0, Lcom/bt/jrsdk/ads/InteractionAd$1;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/InteractionAd;->access$100(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/listener/InteractionAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/InteractionAdListener;->onFinish()V

    :goto_0
    return-void
.end method
