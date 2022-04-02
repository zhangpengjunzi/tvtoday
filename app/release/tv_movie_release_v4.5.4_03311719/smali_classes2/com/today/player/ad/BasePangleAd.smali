.class public Lcom/today/player/ad/BasePangleAd;
.super Ljava/lang/Object;
.source "BasePangleAd.java"

# interfaces
.implements Lcom/today/player/ad/GdtAdListener;


# instance fields
.field protected final GDT_AD:Ljava/lang/String;

.field protected final MD_AD:Ljava/lang/String;

.field protected ad:Lcom/bt/jrsdk/ads/BaseAd;

.field protected adType:Ljava/lang/String;

.field protected content:Ljava/lang/String;

.field protected isReady:Z

.field protected ttFeedAd:Lcom/bt/txad/TTFeedAd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tx"

    .line 17
    iput-object v0, p0, Lcom/today/player/ad/BasePangleAd;->GDT_AD:Ljava/lang/String;

    const-string v0, "md"

    .line 18
    iput-object v0, p0, Lcom/today/player/ad/BasePangleAd;->MD_AD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public loadAd(Ljava/lang/String;)V
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/today/player/ad/BasePangleAd;->adType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 35
    iget-object v0, p0, Lcom/today/player/ad/BasePangleAd;->adType:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xd97

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0xe84

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "tx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "md"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_1

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/today/player/ad/BasePangleAd;->ad:Lcom/bt/jrsdk/ads/BaseAd;

    if-eqz v0, :cond_6

    .line 44
    iput-object p1, p0, Lcom/today/player/ad/BasePangleAd;->content:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, p1}, Lcom/bt/jrsdk/ads/BaseAd;->loadAd(Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :cond_4
    iget-object v0, p0, Lcom/today/player/ad/BasePangleAd;->ttFeedAd:Lcom/bt/txad/TTFeedAd;

    if-eqz v0, :cond_6

    .line 38
    iput-object p1, p0, Lcom/today/player/ad/BasePangleAd;->content:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, p1}, Lcom/bt/txad/TTFeedAd;->loadAd(Ljava/lang/String;)V

    goto :goto_1

    .line 50
    :cond_5
    iget-object v0, p0, Lcom/today/player/ad/BasePangleAd;->ad:Lcom/bt/jrsdk/ads/BaseAd;

    if-eqz v0, :cond_6

    .line 51
    iput-object p1, p0, Lcom/today/player/ad/BasePangleAd;->content:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, p1}, Lcom/bt/jrsdk/ads/BaseAd;->loadAd(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public noAd()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/today/player/ad/BasePangleAd;->adType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/today/player/ad/BasePangleAd;->adType:Ljava/lang/String;

    const-string v1, "md"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iput-object v1, p0, Lcom/today/player/ad/BasePangleAd;->adType:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/today/player/ad/BasePangleAd;->content:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/today/player/ad/BasePangleAd;->loadAd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public recycler()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/today/player/ad/BasePangleAd;->ad:Lcom/bt/jrsdk/ads/BaseAd;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/bt/jrsdk/ads/BaseAd;->recycle()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/today/player/ad/BasePangleAd;->ttFeedAd:Lcom/bt/txad/TTFeedAd;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Lcom/bt/txad/TTFeedAd;->recycle()V

    :cond_1
    return-void
.end method

.method protected setAdType()V
    .locals 1

    .line 24
    invoke-static {}, Lcom/bt/admanager/AdWeightManager;->getInstance()Lcom/bt/admanager/AdWeightManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bt/admanager/AdWeightManager;->canGetAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-static {}, Lcom/bt/admanager/AdWeightManager;->getInstance()Lcom/bt/admanager/AdWeightManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bt/admanager/AdWeightManager;->canGdt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bt/admanager/AdWeightManager;->getInstance()Lcom/bt/admanager/AdWeightManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bt/admanager/AdWeightManager;->getSplashImageCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bt/admanager/AdWeightManager;->getInstance()Lcom/bt/admanager/AdWeightManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bt/admanager/AdWeightManager;->getSplashImageCount()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    const-string v0, "tx"

    .line 26
    iput-object v0, p0, Lcom/today/player/ad/BasePangleAd;->adType:Ljava/lang/String;

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/bt/admanager/AdWeightManager;->getInstance()Lcom/bt/admanager/AdWeightManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bt/admanager/AdWeightManager;->getCurrentAd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/ad/BasePangleAd;->adType:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public setReady(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/today/player/ad/BasePangleAd;->isReady:Z

    return-void
.end method

.method public showAd()V
    .locals 5

    .line 58
    iget-boolean v0, p0, Lcom/today/player/ad/BasePangleAd;->isReady:Z

    if-eqz v0, :cond_7

    .line 59
    iget-object v0, p0, Lcom/today/player/ad/BasePangleAd;->adType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 60
    iget-object v0, p0, Lcom/today/player/ad/BasePangleAd;->adType:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xd97

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0xe84

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "tx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "md"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_1

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/today/player/ad/BasePangleAd;->ad:Lcom/bt/jrsdk/ads/BaseAd;

    if-eqz v0, :cond_6

    .line 68
    invoke-virtual {v0}, Lcom/bt/jrsdk/ads/BaseAd;->showAd()V

    goto :goto_1

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/today/player/ad/BasePangleAd;->ttFeedAd:Lcom/bt/txad/TTFeedAd;

    if-eqz v0, :cond_6

    .line 63
    invoke-virtual {v0}, Lcom/bt/txad/TTFeedAd;->showAd()V

    goto :goto_1

    .line 73
    :cond_5
    iget-object v0, p0, Lcom/today/player/ad/BasePangleAd;->ad:Lcom/bt/jrsdk/ads/BaseAd;

    if-eqz v0, :cond_6

    .line 74
    invoke-virtual {v0}, Lcom/bt/jrsdk/ads/BaseAd;->showAd()V

    .line 77
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/today/player/ad/BasePangleAd;->setAdType()V

    goto :goto_2

    .line 79
    :cond_7
    invoke-virtual {p0}, Lcom/today/player/ad/BasePangleAd;->setAdType()V

    .line 80
    iget-object v0, p0, Lcom/today/player/ad/BasePangleAd;->content:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/today/player/ad/BasePangleAd;->loadAd(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
