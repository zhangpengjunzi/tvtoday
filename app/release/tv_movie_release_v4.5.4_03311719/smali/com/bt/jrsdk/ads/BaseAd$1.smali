.class Lcom/bt/jrsdk/ads/BaseAd$1;
.super Ljava/lang/Object;
.source "BaseAd.java"

# interfaces
.implements Lcom/bt/jrsdk/httplib/iml/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/ads/BaseAd;->downLoadPic(Ljava/lang/String;Lcom/bt/jrsdk/listener/PicDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bt/jrsdk/httplib/iml/ResponseCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/ads/BaseAd;

.field final synthetic val$listener:Lcom/bt/jrsdk/listener/PicDownloadListener;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/ads/BaseAd;Lcom/bt/jrsdk/listener/PicDownloadListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/bt/jrsdk/ads/BaseAd$1;->this$0:Lcom/bt/jrsdk/ads/BaseAd;

    iput-object p2, p0, Lcom/bt/jrsdk/ads/BaseAd$1;->val$listener:Lcom/bt/jrsdk/listener/PicDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 0

    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NetUtil"

    .line 91
    invoke-static {v0, p1}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/bt/jrsdk/ads/BaseAd$1;->val$listener:Lcom/bt/jrsdk/listener/PicDownloadListener;

    invoke-interface {v0, p1}, Lcom/bt/jrsdk/listener/PicDownloadListener;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/bt/jrsdk/ads/BaseAd$1;->success([B)V

    return-void
.end method

.method public success([B)V
    .locals 2

    const-string v0, "NetUtil"

    const-string v1, "suc"

    .line 85
    invoke-static {v0, v1}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/bt/jrsdk/ads/BaseAd$1;->val$listener:Lcom/bt/jrsdk/listener/PicDownloadListener;

    invoke-interface {v0, p1}, Lcom/bt/jrsdk/listener/PicDownloadListener;->suc([B)V

    return-void
.end method
