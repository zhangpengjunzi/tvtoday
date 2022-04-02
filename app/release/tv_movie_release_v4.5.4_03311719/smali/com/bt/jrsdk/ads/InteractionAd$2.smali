.class Lcom/bt/jrsdk/ads/InteractionAd$2;
.super Ljava/lang/Object;
.source "InteractionAd.java"

# interfaces
.implements Lcom/bt/jrsdk/listener/PicDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/ads/InteractionAd;->getAdInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/ads/InteractionAd;

.field final synthetic val$webUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/ads/InteractionAd;Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/bt/jrsdk/ads/InteractionAd$2;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    iput-object p2, p0, Lcom/bt/jrsdk/ads/InteractionAd$2;->val$webUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/bt/jrsdk/ads/InteractionAd$2;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {v0}, Lcom/bt/jrsdk/ads/InteractionAd;->access$100(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/listener/InteractionAdListener;

    move-result-object v0

    const/16 v1, 0x7531

    invoke-interface {v0, p1, v1}, Lcom/bt/jrsdk/listener/InteractionAdListener;->onError(Ljava/lang/String;I)V

    .line 118
    iget-object p1, p0, Lcom/bt/jrsdk/ads/InteractionAd$2;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/InteractionAd;->access$100(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/listener/InteractionAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/InteractionAdListener;->onNoAd()V

    .line 119
    iget-object p1, p0, Lcom/bt/jrsdk/ads/InteractionAd$2;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/InteractionAd;->access$100(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/listener/InteractionAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/InteractionAdListener;->onFinish()V

    return-void
.end method

.method public suc([B)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/bt/jrsdk/ads/InteractionAd$2;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    new-instance v1, Lcom/bt/jrsdk/bean/InteractionAdInfo;

    invoke-direct {v1}, Lcom/bt/jrsdk/bean/InteractionAdInfo;-><init>()V

    invoke-static {v0, v1}, Lcom/bt/jrsdk/ads/InteractionAd;->access$202(Lcom/bt/jrsdk/ads/InteractionAd;Lcom/bt/jrsdk/bean/InteractionAdInfo;)Lcom/bt/jrsdk/bean/InteractionAdInfo;

    .line 107
    iget-object v0, p0, Lcom/bt/jrsdk/ads/InteractionAd$2;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {v0}, Lcom/bt/jrsdk/ads/InteractionAd;->access$200(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/bean/InteractionAdInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bt/jrsdk/bean/InteractionAdInfo;->setPic([B)V

    .line 108
    iget-object p1, p0, Lcom/bt/jrsdk/ads/InteractionAd$2;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/InteractionAd;->access$200(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/bean/InteractionAdInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/ads/InteractionAd$2;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    iget-object v0, v0, Lcom/bt/jrsdk/ads/InteractionAd;->requestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/bean/InteractionAdInfo;->setReqId(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/bt/jrsdk/ads/InteractionAd$2;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/InteractionAd;->access$200(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/bean/InteractionAdInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/ads/InteractionAd$2;->val$webUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/bean/InteractionAdInfo;->setWebUrl(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/bt/jrsdk/manager/AdObserver;->getInstance()Lcom/bt/jrsdk/manager/AdObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/ads/InteractionAd$2;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    iget-object v0, v0, Lcom/bt/jrsdk/ads/InteractionAd;->pid:Ljava/lang/String;

    iget-object v1, p0, Lcom/bt/jrsdk/ads/InteractionAd$2;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {v1}, Lcom/bt/jrsdk/ads/InteractionAd;->access$200(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/bean/InteractionAdInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bt/jrsdk/manager/AdObserver;->registerInteractionAdInfo(Ljava/lang/String;Lcom/bt/jrsdk/bean/InteractionAdInfo;)V

    .line 112
    iget-object p1, p0, Lcom/bt/jrsdk/ads/InteractionAd$2;->this$0:Lcom/bt/jrsdk/ads/InteractionAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/InteractionAd;->access$100(Lcom/bt/jrsdk/ads/InteractionAd;)Lcom/bt/jrsdk/listener/InteractionAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/InteractionAdListener;->onLoaded()V

    return-void
.end method
