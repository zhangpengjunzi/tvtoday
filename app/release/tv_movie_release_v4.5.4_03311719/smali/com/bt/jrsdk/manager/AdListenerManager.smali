.class public Lcom/bt/jrsdk/manager/AdListenerManager;
.super Ljava/lang/Object;
.source "AdListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bt/jrsdk/manager/AdListenerManager$SingletonHolder;
    }
.end annotation


# instance fields
.field private final interactionAdListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bt/jrsdk/listener/InteractionAdListener;",
            ">;"
        }
    .end annotation
.end field

.field private final splashAdListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bt/jrsdk/listener/SplashAdListener;",
            ">;"
        }
    .end annotation
.end field

.field private final videoAdListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bt/jrsdk/listener/VideoAdListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->splashAdListenerMap:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->interactionAdListenerMap:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->videoAdListenerMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bt/jrsdk/manager/AdListenerManager$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/bt/jrsdk/manager/AdListenerManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;
    .locals 1

    .line 20
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager$SingletonHolder;->access$000()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInteractionListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/InteractionAdListener;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->interactionAdListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->interactionAdListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bt/jrsdk/listener/InteractionAdListener;

    return-object p1
.end method

.method public getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->splashAdListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->splashAdListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bt/jrsdk/listener/SplashAdListener;

    return-object p1
.end method

.method public getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->videoAdListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->videoAdListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bt/jrsdk/listener/VideoAdListener;

    return-object p1
.end method

.method public recycleInteractionListener(Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->interactionAdListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->interactionAdListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public recycleSplashListener(Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->splashAdListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->splashAdListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public recycleVideoListener(Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->videoAdListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->videoAdListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public registerInteractionListener(Ljava/lang/String;Lcom/bt/jrsdk/listener/InteractionAdListener;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->interactionAdListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerSplashListener(Ljava/lang/String;Lcom/bt/jrsdk/listener/SplashAdListener;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->splashAdListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerVideoListener(Ljava/lang/String;Lcom/bt/jrsdk/listener/VideoAdListener;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/bt/jrsdk/manager/AdListenerManager;->videoAdListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
