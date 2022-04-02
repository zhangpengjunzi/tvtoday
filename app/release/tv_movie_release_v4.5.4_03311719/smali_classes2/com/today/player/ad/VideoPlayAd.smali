.class public Lcom/today/player/ad/VideoPlayAd;
.super Lcom/today/player/ad/BasePangleAd;
.source "VideoPlayAd.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/today/player/ad/BasePangleAd;-><init>()V

    .line 20
    new-instance v0, Lcom/bt/jrsdk/ads/VideoAd;

    invoke-direct {v0, p1, p2}, Lcom/bt/jrsdk/ads/VideoAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/today/player/ad/VideoPlayAd;->ad:Lcom/bt/jrsdk/ads/BaseAd;

    .line 21
    new-instance v0, Lcom/bt/txad/TTFeedAd;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/bt/txad/TTFeedAd;-><init>(Landroid/app/Activity;Ljava/lang/String;ILcom/today/player/ad/GdtAdListener;)V

    iput-object v0, p0, Lcom/today/player/ad/VideoPlayAd;->ttFeedAd:Lcom/bt/txad/TTFeedAd;

    .line 22
    invoke-virtual {p0}, Lcom/today/player/ad/VideoPlayAd;->setAdType()V

    return-void
.end method


# virtual methods
.method public setListener(Lcom/bt/jrsdk/listener/VideoAdListener;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/today/player/ad/VideoPlayAd;->ad:Lcom/bt/jrsdk/ads/BaseAd;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/today/player/ad/VideoPlayAd;->ad:Lcom/bt/jrsdk/ads/BaseAd;

    check-cast v0, Lcom/bt/jrsdk/ads/VideoAd;

    invoke-virtual {v0, p1}, Lcom/bt/jrsdk/ads/VideoAd;->setVideoListener(Lcom/bt/jrsdk/listener/VideoAdListener;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/today/player/ad/VideoPlayAd;->ttFeedAd:Lcom/bt/txad/TTFeedAd;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/today/player/ad/VideoPlayAd;->ttFeedAd:Lcom/bt/txad/TTFeedAd;

    invoke-virtual {v0, p1}, Lcom/bt/txad/TTFeedAd;->setVideoListener(Lcom/bt/jrsdk/listener/VideoAdListener;)V

    :cond_1
    return-void
.end method
