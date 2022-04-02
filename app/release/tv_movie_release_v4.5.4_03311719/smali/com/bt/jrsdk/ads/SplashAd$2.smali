.class Lcom/bt/jrsdk/ads/SplashAd$2;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Lcom/bt/jrsdk/listener/PicDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/ads/SplashAd;->getAdInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/ads/SplashAd;

.field final synthetic val$ads_id:I

.field final synthetic val$countDown:I

.field final synthetic val$isVideo:I

.field final synthetic val$videoUrl:Ljava/lang/String;

.field final synthetic val$webUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/ads/SplashAd;IILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->this$0:Lcom/bt/jrsdk/ads/SplashAd;

    iput p2, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->val$isVideo:I

    iput p3, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->val$countDown:I

    iput-object p4, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->val$webUrl:Ljava/lang/String;

    iput p5, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->val$ads_id:I

    iput-object p6, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->val$videoUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->this$0:Lcom/bt/jrsdk/ads/SplashAd;

    invoke-static {v0}, Lcom/bt/jrsdk/ads/SplashAd;->access$100(Lcom/bt/jrsdk/ads/SplashAd;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    const/16 v1, 0x7531

    invoke-interface {v0, p1, v1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onError(Ljava/lang/String;I)V

    .line 137
    iget-object p1, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->this$0:Lcom/bt/jrsdk/ads/SplashAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/SplashAd;->access$100(Lcom/bt/jrsdk/ads/SplashAd;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onNoAd()V

    .line 138
    iget-object p1, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->this$0:Lcom/bt/jrsdk/ads/SplashAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/SplashAd;->access$100(Lcom/bt/jrsdk/ads/SplashAd;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onFinish()V

    return-void
.end method

.method public suc([B)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->this$0:Lcom/bt/jrsdk/ads/SplashAd;

    new-instance v1, Lcom/bt/jrsdk/bean/SplashAdInfo;

    invoke-direct {v1}, Lcom/bt/jrsdk/bean/SplashAdInfo;-><init>()V

    invoke-static {v0, v1}, Lcom/bt/jrsdk/ads/SplashAd;->access$202(Lcom/bt/jrsdk/ads/SplashAd;Lcom/bt/jrsdk/bean/SplashAdInfo;)Lcom/bt/jrsdk/bean/SplashAdInfo;

    .line 121
    iget-object v0, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->this$0:Lcom/bt/jrsdk/ads/SplashAd;

    invoke-static {v0}, Lcom/bt/jrsdk/ads/SplashAd;->access$200(Lcom/bt/jrsdk/ads/SplashAd;)Lcom/bt/jrsdk/bean/SplashAdInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bt/jrsdk/bean/SplashAdInfo;->setPic([B)V

    .line 122
    iget-object p1, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->this$0:Lcom/bt/jrsdk/ads/SplashAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/SplashAd;->access$200(Lcom/bt/jrsdk/ads/SplashAd;)Lcom/bt/jrsdk/bean/SplashAdInfo;

    move-result-object p1

    iget v0, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->val$isVideo:I

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/bean/SplashAdInfo;->setIsVideo(I)V

    .line 123
    iget-object p1, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->this$0:Lcom/bt/jrsdk/ads/SplashAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/SplashAd;->access$200(Lcom/bt/jrsdk/ads/SplashAd;)Lcom/bt/jrsdk/bean/SplashAdInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->this$0:Lcom/bt/jrsdk/ads/SplashAd;

    iget-object v0, v0, Lcom/bt/jrsdk/ads/SplashAd;->requestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/bean/SplashAdInfo;->setReqId(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->this$0:Lcom/bt/jrsdk/ads/SplashAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/SplashAd;->access$200(Lcom/bt/jrsdk/ads/SplashAd;)Lcom/bt/jrsdk/bean/SplashAdInfo;

    move-result-object p1

    iget v0, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->val$countDown:I

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/bean/SplashAdInfo;->setCountDown(I)V

    .line 125
    iget-object p1, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->this$0:Lcom/bt/jrsdk/ads/SplashAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/SplashAd;->access$200(Lcom/bt/jrsdk/ads/SplashAd;)Lcom/bt/jrsdk/bean/SplashAdInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->val$webUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/bean/SplashAdInfo;->setWebUrl(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->this$0:Lcom/bt/jrsdk/ads/SplashAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/SplashAd;->access$200(Lcom/bt/jrsdk/ads/SplashAd;)Lcom/bt/jrsdk/bean/SplashAdInfo;

    move-result-object p1

    iget v0, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->val$ads_id:I

    iput v0, p1, Lcom/bt/jrsdk/bean/SplashAdInfo;->ads_id:I

    .line 127
    iget-object p1, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->val$videoUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->this$0:Lcom/bt/jrsdk/ads/SplashAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/SplashAd;->access$200(Lcom/bt/jrsdk/ads/SplashAd;)Lcom/bt/jrsdk/bean/SplashAdInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->val$videoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/bean/SplashAdInfo;->setVideoUrl(Ljava/lang/String;)V

    .line 130
    :cond_0
    invoke-static {}, Lcom/bt/jrsdk/manager/AdObserver;->getInstance()Lcom/bt/jrsdk/manager/AdObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->this$0:Lcom/bt/jrsdk/ads/SplashAd;

    iget-object v0, v0, Lcom/bt/jrsdk/ads/SplashAd;->pid:Ljava/lang/String;

    iget-object v1, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->this$0:Lcom/bt/jrsdk/ads/SplashAd;

    invoke-static {v1}, Lcom/bt/jrsdk/ads/SplashAd;->access$200(Lcom/bt/jrsdk/ads/SplashAd;)Lcom/bt/jrsdk/bean/SplashAdInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bt/jrsdk/manager/AdObserver;->registerSplashAdInfo(Ljava/lang/String;Lcom/bt/jrsdk/bean/SplashAdInfo;)V

    .line 131
    iget-object p1, p0, Lcom/bt/jrsdk/ads/SplashAd$2;->this$0:Lcom/bt/jrsdk/ads/SplashAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/SplashAd;->access$100(Lcom/bt/jrsdk/ads/SplashAd;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onLoaded()V

    return-void
.end method
