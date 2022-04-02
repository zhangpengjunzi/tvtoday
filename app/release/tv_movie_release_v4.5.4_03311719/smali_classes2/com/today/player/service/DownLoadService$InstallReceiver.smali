.class public final Lcom/today/player/service/DownLoadService$InstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownLoadService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/service/DownLoadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallReceiver"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownLoadService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownLoadService.kt\ncom/today/player/service/DownLoadService$InstallReceiver\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n1858#2,3:130\n*S KotlinDebug\n*F\n+ 1 DownLoadService.kt\ncom/today/player/service/DownLoadService$InstallReceiver\n*L\n119#1:130,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u001c\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/today/player/service/DownLoadService$InstallReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "installSucPkg",
        "",
        "packageName",
        "",
        "onReceive",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private final installSucPkg(Ljava/lang/String;)V
    .locals 4

    .line 118
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/util/DownloadObserver;->getRecommendList()Ljava/util/List;

    move-result-object v0

    const-string v1, "list"

    .line 119
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 131
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Lcom/today/player/bean/RecommendBean;

    .line 120
    invoke-virtual {v2}, Lcom/today/player/bean/RecommendBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/today/player/util/DownloadObserver;->onSuccess(I)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 p1, 0x0

    if-nez p2, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v0, v3, v1, v2, p1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string p2, "install "

    .line 111
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/today/player/service/DownLoadService$InstallReceiver;->installSucPkg(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
