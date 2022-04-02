.class public Lcom/today/player/ad/VideoSplashAd;
.super Lcom/today/player/ad/BasePangleAd;
.source "VideoSplashAd.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/today/player/ad/BasePangleAd;-><init>()V

    .line 18
    new-instance v0, Lcom/bt/jrsdk/ads/SplashAd;

    invoke-direct {v0, p1, p2, p3}, Lcom/bt/jrsdk/ads/SplashAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/today/player/ad/VideoSplashAd;->ad:Lcom/bt/jrsdk/ads/BaseAd;

    .line 19
    new-instance p3, Lcom/bt/txad/TTFeedAd;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0, p0}, Lcom/bt/txad/TTFeedAd;-><init>(Landroid/app/Activity;Ljava/lang/String;ILcom/today/player/ad/GdtAdListener;)V

    iput-object p3, p0, Lcom/today/player/ad/VideoSplashAd;->ttFeedAd:Lcom/bt/txad/TTFeedAd;

    .line 20
    invoke-virtual {p0}, Lcom/today/player/ad/VideoSplashAd;->setAdType()V

    return-void
.end method


# virtual methods
.method public setListener(Lcom/bt/jrsdk/listener/SplashAdListener;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/today/player/ad/VideoSplashAd;->ad:Lcom/bt/jrsdk/ads/BaseAd;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/today/player/ad/VideoSplashAd;->ad:Lcom/bt/jrsdk/ads/BaseAd;

    check-cast v0, Lcom/bt/jrsdk/ads/SplashAd;

    invoke-virtual {v0, p1}, Lcom/bt/jrsdk/ads/SplashAd;->setSplashListener(Lcom/bt/jrsdk/listener/SplashAdListener;)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/today/player/ad/VideoSplashAd;->ttFeedAd:Lcom/bt/txad/TTFeedAd;

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/today/player/ad/VideoSplashAd;->ttFeedAd:Lcom/bt/txad/TTFeedAd;

    invoke-virtual {v0, p1}, Lcom/bt/txad/TTFeedAd;->setSplashListener(Lcom/bt/jrsdk/listener/SplashAdListener;)V

    :cond_1
    return-void
.end method
