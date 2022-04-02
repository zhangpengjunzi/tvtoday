.class public Lcom/bt/jrsdk/manager/AdObserver;
.super Ljava/lang/Object;
.source "AdObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bt/jrsdk/manager/AdObserver$SingletonHolder;
    }
.end annotation


# instance fields
.field private final VideoAdInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bt/jrsdk/bean/VideoAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final interactionAdInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bt/jrsdk/bean/InteractionAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final splashAdInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bt/jrsdk/bean/SplashAdInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->splashAdInfoMap:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->interactionAdInfoMap:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->VideoAdInfoMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bt/jrsdk/manager/AdObserver$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/bt/jrsdk/manager/AdObserver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/bt/jrsdk/manager/AdObserver;
    .locals 1

    .line 22
    invoke-static {}, Lcom/bt/jrsdk/manager/AdObserver$SingletonHolder;->access$000()Lcom/bt/jrsdk/manager/AdObserver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInteractionAdInfo(Ljava/lang/String;)Lcom/bt/jrsdk/bean/InteractionAdInfo;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->interactionAdInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->interactionAdInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bt/jrsdk/bean/InteractionAdInfo;

    return-object p1
.end method

.method public getSplashAdInfo(Ljava/lang/String;)Lcom/bt/jrsdk/bean/SplashAdInfo;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->splashAdInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->splashAdInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bt/jrsdk/bean/SplashAdInfo;

    return-object p1
.end method

.method public getVideoAdInfo(Ljava/lang/String;)Lcom/bt/jrsdk/bean/VideoAdInfo;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->VideoAdInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->VideoAdInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bt/jrsdk/bean/VideoAdInfo;

    return-object p1
.end method

.method public recycleInteraction(Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->interactionAdInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->interactionAdInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public recycleSplash(Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->splashAdInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->splashAdInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public recycleVideo(Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->VideoAdInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->VideoAdInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public registerInteractionAdInfo(Ljava/lang/String;Lcom/bt/jrsdk/bean/InteractionAdInfo;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->interactionAdInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerSplashAdInfo(Ljava/lang/String;Lcom/bt/jrsdk/bean/SplashAdInfo;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->splashAdInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerVideoAdInfo(Ljava/lang/String;Lcom/bt/jrsdk/bean/VideoAdInfo;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdObserver;->VideoAdInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
