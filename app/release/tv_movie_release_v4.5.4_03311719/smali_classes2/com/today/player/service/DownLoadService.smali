.class public final Lcom/today/player/service/DownLoadService;
.super Landroid/app/Service;
.source "DownLoadService.kt"

# interfaces
.implements Lcom/today/player/util/DownloadObserver$onRequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/service/DownLoadService$InstallReceiver;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001bB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0002J\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u0007H\u0016J\u0008\u0010\u000f\u001a\u00020\u0007H\u0016J\"\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u0008\u0010\u0014\u001a\u00020\u0007H\u0002J\u001a\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00112\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u000c\u0010\u0019\u001a\u00020\u001a*\u00020\tH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/today/player/service/DownLoadService;",
        "Landroid/app/Service;",
        "Lcom/today/player/util/DownloadObserver$onRequestListener;",
        "()V",
        "installReceiver",
        "Lcom/today/player/service/DownLoadService$InstallReceiver;",
        "deleteDirWithFile",
        "",
        "dir",
        "Ljava/io/File;",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "onDestroy",
        "onStartCommand",
        "",
        "flags",
        "startId",
        "removeCache",
        "startDownload",
        "position",
        "url",
        "",
        "checkFile",
        "",
        "InstallReceiver",
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


# instance fields
.field private installReceiver:Lcom/today/player/service/DownLoadService$InstallReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private final checkFile(Ljava/io/File;)Z
    .locals 1

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final deleteDirWithFile(Ljava/io/File;)V
    .locals 5

    .line 47
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/today/player/service/DownLoadService;->checkFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v1, "dir.listFiles()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    array-length v2, v0

    :cond_1
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 50
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    invoke-direct {p0, v3}, Lcom/today/player/service/DownLoadService;->deleteDirWithFile(Ljava/io/File;)V

    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private final removeCache()V
    .locals 3

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/today/player/service/DownLoadService;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "down"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, v0}, Lcom/today/player/service/DownLoadService;->deleteDirWithFile(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 21
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "Create"

    .line 22
    invoke-static {v0}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/today/player/util/DownloadObserver$onRequestListener;

    invoke-virtual {v0, v1}, Lcom/today/player/util/DownloadObserver;->registerRequestListener(Lcom/today/player/util/DownloadObserver$onRequestListener;)V

    .line 24
    new-instance v0, Lcom/today/player/service/DownLoadService$InstallReceiver;

    invoke-direct {v0}, Lcom/today/player/service/DownLoadService$InstallReceiver;-><init>()V

    iput-object v0, p0, Lcom/today/player/service/DownLoadService;->installReceiver:Lcom/today/player/service/DownLoadService$InstallReceiver;

    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/today/player/service/DownLoadService;->installReceiver:Lcom/today/player/service/DownLoadService$InstallReceiver;

    if-nez v1, :cond_0

    const-string v1, "installReceiver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/today/player/service/DownLoadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    invoke-direct {p0}, Lcom/today/player/service/DownLoadService;->removeCache()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy"

    .line 63
    invoke-static {v0}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/today/player/service/DownLoadService;->installReceiver:Lcom/today/player/service/DownLoadService$InstallReceiver;

    if-nez v0, :cond_0

    const-string v0, "installReceiver"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/today/player/service/DownLoadService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const-string v0, "onStartCommand"

    .line 37
    invoke-static {v0}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 38
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public startDownload(ILjava/lang/String;)V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartDownload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/today/player/util/DownloadTaskManager;->getInstance()Lcom/today/player/util/DownloadTaskManager;

    move-result-object v0

    new-instance v1, Lcom/today/player/service/DownLoadService$startDownload$1;

    invoke-direct {v1, p0}, Lcom/today/player/service/DownLoadService$startDownload$1;-><init>(Lcom/today/player/service/DownLoadService;)V

    check-cast v1, Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;

    invoke-virtual {v0, p2, p1, v1}, Lcom/today/player/util/DownloadTaskManager;->downLoad(Ljava/lang/String;ILcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;)V

    return-void
.end method
