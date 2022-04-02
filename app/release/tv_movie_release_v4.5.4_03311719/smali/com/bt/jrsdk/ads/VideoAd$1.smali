.class Lcom/bt/jrsdk/ads/VideoAd$1;
.super Ljava/lang/Object;
.source "VideoAd.java"

# interfaces
.implements Lcom/bt/jrsdk/httplib/iml/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/ads/VideoAd;->loadCurrentAd()V
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
.field final synthetic this$0:Lcom/bt/jrsdk/ads/VideoAd;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/ads/VideoAd;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$1;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

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

    .line 97
    invoke-static {v0, p1}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/bt/jrsdk/ads/VideoAd$1;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {v0}, Lcom/bt/jrsdk/ads/VideoAd;->access$100(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x7531

    invoke-interface {v0, p1, v1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onError(Ljava/lang/String;I)V

    .line 99
    iget-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$1;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/VideoAd;->access$100(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onNoAd()V

    .line 100
    iget-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$1;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/VideoAd;->access$100(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bt/jrsdk/ads/VideoAd$1;->success(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 9

    .line 67
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

    .line 70
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "error_code"

    .line 71
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "result"

    .line 73
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "is_video"

    .line 74
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 75
    iget-object v1, p0, Lcom/bt/jrsdk/ads/VideoAd$1;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    const-string v2, "ads_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/bt/jrsdk/ads/VideoAd;->ads_id:I

    const-string v1, "ads_cover"

    .line 76
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "ads_url"

    .line 77
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "log_report_url"

    .line 78
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "ads_material"

    .line 79
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    iget-object v2, p0, Lcom/bt/jrsdk/ads/VideoAd$1;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    iget-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$1;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    iget v8, p1, Lcom/bt/jrsdk/ads/VideoAd;->ads_id:I

    invoke-static/range {v2 .. v8}, Lcom/bt/jrsdk/ads/VideoAd;->access$000(Lcom/bt/jrsdk/ads/VideoAd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$1;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/VideoAd;->access$100(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    const-string v1, "result code !0"

    invoke-interface {p1, v1, v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onError(Ljava/lang/String;I)V

    .line 84
    iget-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$1;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/VideoAd;->access$100(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onNoAd()V

    .line 85
    iget-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$1;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/VideoAd;->access$100(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 89
    iget-object v1, p0, Lcom/bt/jrsdk/ads/VideoAd$1;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {v1}, Lcom/bt/jrsdk/ads/VideoAd;->access$100(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onError(Ljava/lang/String;I)V

    .line 90
    iget-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$1;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/VideoAd;->access$100(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onNoAd()V

    .line 91
    iget-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$1;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/VideoAd;->access$100(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    :goto_0
    return-void
.end method
