.class public Lcom/today/player/util/DownloadObserver;
.super Ljava/lang/Object;
.source "DownloadObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/util/DownloadObserver$onRequestListener;,
        Lcom/today/player/util/DownloadObserver$onDownLoadListener;,
        Lcom/today/player/util/DownloadObserver$SingletonHolder;
    }
.end annotation


# instance fields
.field private activityListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/today/player/util/DownloadObserver$onDownLoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private downloadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/today/player/bean/ApkPathBean;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/RecommendBean;",
            ">;"
        }
    .end annotation
.end field

.field private recommendJson:Ljava/lang/String;

.field private serviceListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/today/player/util/DownloadObserver$onRequestListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/util/DownloadObserver;->list:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/today/player/util/DownloadObserver;->downloadMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/today/player/util/DownloadObserver$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/today/player/util/DownloadObserver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/today/player/util/DownloadObserver;
    .locals 1

    .line 20
    invoke-static {}, Lcom/today/player/util/DownloadObserver$SingletonHolder;->access$000()Lcom/today/player/util/DownloadObserver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDownloadOk(I)Z
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->downloadMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->downloadMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/ApkPathBean;

    invoke-virtual {p1}, Lcom/today/player/bean/ApkPathBean;->getOk()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDownloadPath(I)Ljava/lang/String;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->downloadMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->downloadMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/ApkPathBean;

    invoke-virtual {p1}, Lcom/today/player/bean/ApkPathBean;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getRecommendJson()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->recommendJson:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/bean/RecommendBean;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->list:Ljava/util/List;

    return-object v0
.end method

.method public onFail(I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->activityListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->activityListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/util/DownloadObserver$onDownLoadListener;

    invoke-interface {v0, p1}, Lcom/today/player/util/DownloadObserver$onDownLoadListener;->onFail(I)V

    :cond_0
    return-void
.end method

.method public onProgress(II)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->activityListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->activityListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/util/DownloadObserver$onDownLoadListener;

    invoke-interface {v0, p1, p2}, Lcom/today/player/util/DownloadObserver$onDownLoadListener;->onProgress(II)V

    :cond_0
    return-void
.end method

.method public onSuccess(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->activityListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->activityListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/util/DownloadObserver$onDownLoadListener;

    invoke-interface {v0, p1}, Lcom/today/player/util/DownloadObserver$onDownLoadListener;->onSuccess(I)V

    :cond_0
    return-void
.end method

.method public onTooManyTasks(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->activityListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->activityListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/util/DownloadObserver$onDownLoadListener;

    invoke-interface {v0, p1}, Lcom/today/player/util/DownloadObserver$onDownLoadListener;->onTooManyTasks(I)V

    :cond_0
    return-void
.end method

.method public registerDownloadListener(Lcom/today/player/util/DownloadObserver$onDownLoadListener;)V
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/today/player/util/DownloadObserver;->activityListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public registerRequestListener(Lcom/today/player/util/DownloadObserver$onRequestListener;)V
    .locals 1

    .line 105
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/today/player/util/DownloadObserver;->serviceListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public saveRecommendList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/today/player/bean/RecommendBean;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/today/player/util/DownloadObserver;->list:Ljava/util/List;

    return-void
.end method

.method public setDownloadOk(ILjava/lang/String;)V
    .locals 4

    .line 24
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->downloadMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/today/player/bean/ApkPathBean;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p2}, Lcom/today/player/bean/ApkPathBean;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p2, p0, Lcom/today/player/util/DownloadObserver;->activityListener:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 26
    iget-object p2, p0, Lcom/today/player/util/DownloadObserver;->activityListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/today/player/util/DownloadObserver$onDownLoadListener;

    invoke-interface {p2, p1}, Lcom/today/player/util/DownloadObserver$onDownLoadListener;->onDownloadOk(I)V

    :cond_0
    return-void
.end method

.method public setRecommendJson(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/today/player/util/DownloadObserver;->recommendJson:Ljava/lang/String;

    return-void
.end method

.method public startDownLoad(ILjava/lang/String;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->serviceListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->serviceListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/util/DownloadObserver$onRequestListener;

    invoke-interface {v0, p1, p2}, Lcom/today/player/util/DownloadObserver$onRequestListener;->startDownload(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unRegisterDownloadListener()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->activityListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/today/player/util/DownloadObserver;->activityListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/today/player/util/DownloadObserver;->activityListener:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method
