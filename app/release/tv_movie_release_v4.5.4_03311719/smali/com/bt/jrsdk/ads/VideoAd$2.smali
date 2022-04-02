.class Lcom/bt/jrsdk/ads/VideoAd$2;
.super Ljava/lang/Object;
.source "VideoAd.java"

# interfaces
.implements Lcom/bt/jrsdk/listener/PicDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/ads/VideoAd;->getAdInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/ads/VideoAd;

.field final synthetic val$ads_id:I

.field final synthetic val$isVideo:I

.field final synthetic val$mp4:Ljava/lang/String;

.field final synthetic val$webUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/ads/VideoAd;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    iput-object p2, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->val$webUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->val$mp4:Ljava/lang/String;

    iput p4, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->val$isVideo:I

    iput p5, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->val$ads_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {v0}, Lcom/bt/jrsdk/ads/VideoAd;->access$100(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    const/16 v1, 0x7531

    invoke-interface {v0, p1, v1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onError(Ljava/lang/String;I)V

    .line 132
    iget-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/VideoAd;->access$100(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onNoAd()V

    .line 133
    iget-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/VideoAd;->access$100(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    return-void
.end method

.method public suc([B)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    new-instance v1, Lcom/bt/jrsdk/bean/VideoAdInfo;

    invoke-direct {v1}, Lcom/bt/jrsdk/bean/VideoAdInfo;-><init>()V

    invoke-static {v0, v1}, Lcom/bt/jrsdk/ads/VideoAd;->access$202(Lcom/bt/jrsdk/ads/VideoAd;Lcom/bt/jrsdk/bean/VideoAdInfo;)Lcom/bt/jrsdk/bean/VideoAdInfo;

    .line 119
    iget-object v0, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {v0}, Lcom/bt/jrsdk/ads/VideoAd;->access$200(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/bean/VideoAdInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bt/jrsdk/bean/VideoAdInfo;->setPic([B)V

    .line 120
    iget-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/VideoAd;->access$200(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/bean/VideoAdInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    iget-object v0, v0, Lcom/bt/jrsdk/ads/VideoAd;->requestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/bean/VideoAdInfo;->setReqId(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/VideoAd;->access$200(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/bean/VideoAdInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->val$webUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/bean/VideoAdInfo;->setWebUrl(Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/VideoAd;->access$200(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/bean/VideoAdInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->val$mp4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/bean/VideoAdInfo;->setVideoUrl(Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/VideoAd;->access$200(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/bean/VideoAdInfo;

    move-result-object p1

    iget v0, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->val$isVideo:I

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/bean/VideoAdInfo;->setIsVideo(I)V

    .line 124
    iget-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/VideoAd;->access$200(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/bean/VideoAdInfo;

    move-result-object p1

    iget v0, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->val$ads_id:I

    iput v0, p1, Lcom/bt/jrsdk/bean/VideoAdInfo;->ads_id:I

    .line 125
    invoke-static {}, Lcom/bt/jrsdk/manager/AdObserver;->getInstance()Lcom/bt/jrsdk/manager/AdObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    iget-object v0, v0, Lcom/bt/jrsdk/ads/VideoAd;->pid:Ljava/lang/String;

    iget-object v1, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {v1}, Lcom/bt/jrsdk/ads/VideoAd;->access$200(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/bean/VideoAdInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bt/jrsdk/manager/AdObserver;->registerVideoAdInfo(Ljava/lang/String;Lcom/bt/jrsdk/bean/VideoAdInfo;)V

    .line 126
    iget-object p1, p0, Lcom/bt/jrsdk/ads/VideoAd$2;->this$0:Lcom/bt/jrsdk/ads/VideoAd;

    invoke-static {p1}, Lcom/bt/jrsdk/ads/VideoAd;->access$100(Lcom/bt/jrsdk/ads/VideoAd;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onLoaded()V

    return-void
.end method
