.class Lcom/bt/txad/TTFeedAd$1;
.super Ljava/lang/Object;
.source "TTFeedAd.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/txad/TTFeedAd;->loadTT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/txad/TTFeedAd;


# direct methods
.method constructor <init>(Lcom/bt/txad/TTFeedAd;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/bt/txad/TTFeedAd$1;->this$0:Lcom/bt/txad/TTFeedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 91
    iget-object p1, p0, Lcom/bt/txad/TTFeedAd$1;->this$0:Lcom/bt/txad/TTFeedAd;

    invoke-static {p1}, Lcom/bt/txad/TTFeedAd;->access$000(Lcom/bt/txad/TTFeedAd;)Lcom/today/player/ad/GdtAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/bt/txad/TTFeedAd$1;->this$0:Lcom/bt/txad/TTFeedAd;

    invoke-static {p1}, Lcom/bt/txad/TTFeedAd;->access$000(Lcom/bt/txad/TTFeedAd;)Lcom/today/player/ad/GdtAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/today/player/ad/GdtAdListener;->noAd()V

    goto/16 :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object p2, p0, Lcom/bt/txad/TTFeedAd$1;->this$0:Lcom/bt/txad/TTFeedAd;

    invoke-static {p2}, Lcom/bt/txad/TTFeedAd;->access$100(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    const/16 p2, 0x7532

    const-string v0, "activity_null"

    if-eqz p1, :cond_1

    .line 95
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v1, p0, Lcom/bt/txad/TTFeedAd$1;->this$0:Lcom/bt/txad/TTFeedAd;

    invoke-static {v1}, Lcom/bt/txad/TTFeedAd;->access$200(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/bt/jrsdk/listener/SplashAdListener;->onError(Ljava/lang/String;I)V

    .line 96
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v1, p0, Lcom/bt/txad/TTFeedAd$1;->this$0:Lcom/bt/txad/TTFeedAd;

    invoke-static {v1}, Lcom/bt/txad/TTFeedAd;->access$300(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onNoAd()V

    .line 97
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v1, p0, Lcom/bt/txad/TTFeedAd$1;->this$0:Lcom/bt/txad/TTFeedAd;

    invoke-static {v1}, Lcom/bt/txad/TTFeedAd;->access$400(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onFinish()V

    .line 99
    :cond_1
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v1, p0, Lcom/bt/txad/TTFeedAd$1;->this$0:Lcom/bt/txad/TTFeedAd;

    invoke-static {v1}, Lcom/bt/txad/TTFeedAd;->access$500(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 100
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v1, p0, Lcom/bt/txad/TTFeedAd$1;->this$0:Lcom/bt/txad/TTFeedAd;

    invoke-static {v1}, Lcom/bt/txad/TTFeedAd;->access$600(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/bt/jrsdk/listener/VideoAdListener;->onError(Ljava/lang/String;I)V

    .line 101
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object p2, p0, Lcom/bt/txad/TTFeedAd$1;->this$0:Lcom/bt/txad/TTFeedAd;

    invoke-static {p2}, Lcom/bt/txad/TTFeedAd;->access$700(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onNoAd()V

    .line 102
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object p2, p0, Lcom/bt/txad/TTFeedAd$1;->this$0:Lcom/bt/txad/TTFeedAd;

    invoke-static {p2}, Lcom/bt/txad/TTFeedAd;->access$800(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFeedAdLoad(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTFeedAd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 111
    invoke-static {}, Lcom/bt/admanager/AdWeightManager;->getInstance()Lcom/bt/admanager/AdWeightManager;

    move-result-object v0

    iput-object p1, v0, Lcom/bt/admanager/AdWeightManager;->gdtAds:Ljava/util/List;

    .line 112
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/txad/TTFeedAd$1;->this$0:Lcom/bt/txad/TTFeedAd;

    invoke-static {v0}, Lcom/bt/txad/TTFeedAd;->access$900(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/txad/TTFeedAd$1;->this$0:Lcom/bt/txad/TTFeedAd;

    invoke-static {v0}, Lcom/bt/txad/TTFeedAd;->access$1000(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onLoaded()V

    .line 115
    :cond_0
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/txad/TTFeedAd$1;->this$0:Lcom/bt/txad/TTFeedAd;

    invoke-static {v0}, Lcom/bt/txad/TTFeedAd;->access$1100(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 116
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/txad/TTFeedAd$1;->this$0:Lcom/bt/txad/TTFeedAd;

    invoke-static {v0}, Lcom/bt/txad/TTFeedAd;->access$1200(Lcom/bt/txad/TTFeedAd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onLoaded()V

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/bt/txad/TTFeedAd$1;->this$0:Lcom/bt/txad/TTFeedAd;

    invoke-static {p1}, Lcom/bt/txad/TTFeedAd;->access$1300(Lcom/bt/txad/TTFeedAd;)V

    :cond_2
    return-void
.end method
