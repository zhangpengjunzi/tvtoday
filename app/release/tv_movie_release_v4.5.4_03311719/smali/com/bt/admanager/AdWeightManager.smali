.class public Lcom/bt/admanager/AdWeightManager;
.super Ljava/lang/Object;
.source "AdWeightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bt/admanager/AdWeightManager$SingletonHolder;
    }
.end annotation


# instance fields
.field private adList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gdtAdType:I

.field public gdtAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTFeedAd;",
            ">;"
        }
    .end annotation
.end field

.field private splashImageCount:I

.field private weightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bt/admanager/AdWeightManager;->weightMap:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bt/admanager/AdWeightManager;->adList:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bt/admanager/AdWeightManager;->gdtAds:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bt/admanager/AdWeightManager$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/bt/admanager/AdWeightManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/bt/admanager/AdWeightManager;
    .locals 1

    .line 26
    invoke-static {}, Lcom/bt/admanager/AdWeightManager$SingletonHolder;->access$000()Lcom/bt/admanager/AdWeightManager;

    move-result-object v0

    return-object v0
.end method

.method private initAdList()V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/bt/admanager/AdWeightManager;->weightMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 84
    iget-object v4, p0, Lcom/bt/admanager/AdWeightManager;->adList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public canGdt()Z
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/bt/admanager/AdWeightManager;->adList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bt/admanager/AdWeightManager;->adList:Ljava/util/List;

    const-string v1, "tx"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canGetAd()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/bt/admanager/AdWeightManager;->adList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canJump()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/bt/admanager/AdWeightManager;->gdtAds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentAd()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/bt/admanager/AdWeightManager;->adList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/bt/admanager/AdWeightManager;->adList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGdtAdType()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/bt/admanager/AdWeightManager;->gdtAdType:I

    return v0
.end method

.method public getSplashImageCount()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/bt/admanager/AdWeightManager;->splashImageCount:I

    return v0
.end method

.method public setAdInfoArray(Lorg/json/JSONArray;)V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/bt/admanager/AdWeightManager;->weightMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 53
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ad"

    .line 55
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "weight"

    .line 56
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 57
    iget-object v3, p0, Lcom/bt/admanager/AdWeightManager;->weightMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/bt/admanager/AdWeightManager;->initAdList()V

    :cond_1
    return-void
.end method

.method public setGdtAdType(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/bt/admanager/AdWeightManager;->gdtAdType:I

    return-void
.end method

.method public splashImageCountAdd()V
    .locals 1

    .line 46
    iget v0, p0, Lcom/bt/admanager/AdWeightManager;->splashImageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bt/admanager/AdWeightManager;->splashImageCount:I

    return-void
.end method
