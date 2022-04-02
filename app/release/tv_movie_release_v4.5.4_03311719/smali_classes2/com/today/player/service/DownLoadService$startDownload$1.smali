.class public final Lcom/today/player/service/DownLoadService$startDownload$1;
.super Ljava/lang/Object;
.source "DownLoadService.kt"

# interfaces
.implements Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/service/DownLoadService;->startDownload(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\"\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J.\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\r\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/today/player/service/DownLoadService$startDownload$1",
        "Lcom/today/player/util/DownloadTaskManager$downLoadTaskCallback;",
        "onFail",
        "",
        "url",
        "",
        "position",
        "",
        "onProgress",
        "progress",
        "onSuccess",
        "fileName",
        "filePath",
        "onTooManyTasks",
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
.field final synthetic this$0:Lcom/today/player/service/DownLoadService;


# direct methods
.method constructor <init>(Lcom/today/player/service/DownLoadService;)V
    .locals 0

    iput-object p1, p0, Lcom/today/player/service/DownLoadService$startDownload$1;->this$0:Lcom/today/player/service/DownLoadService;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$3VqmShcBkc5zjgA3yiJyRiN_quM(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/today/player/service/DownLoadService$startDownload$1;->onProgress$lambda-3(II)V

    return-void
.end method

.method public static synthetic lambda$5Wm5bsKxyFvRI_ETOw6Hd51rP70(I)V
    .locals 0

    invoke-static {p0}, Lcom/today/player/service/DownLoadService$startDownload$1;->onTooManyTasks$lambda-4(I)V

    return-void
.end method

.method public static synthetic lambda$lq06PFB3dXkYuTNyjVE9sNeL8N0(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/today/player/service/DownLoadService$startDownload$1;->onSuccess$lambda-0(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$pkQhr6VWPDfQyU0k-a-FmzoCu3U(Ljava/lang/String;Lcom/today/player/service/DownLoadService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/today/player/service/DownLoadService$startDownload$1;->onSuccess$lambda-1(Ljava/lang/String;Lcom/today/player/service/DownLoadService;)V

    return-void
.end method

.method public static synthetic lambda$xetE8TWyiYB_SpT336LgQqubBhQ(I)V
    .locals 0

    invoke-static {p0}, Lcom/today/player/service/DownLoadService$startDownload$1;->onFail$lambda-2(I)V

    return-void
.end method

.method private static final onFail$lambda-2(I)V
    .locals 1

    .line 91
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/today/player/util/DownloadObserver;->onFail(I)V

    return-void
.end method

.method private static final onProgress$lambda-3(II)V
    .locals 1

    .line 96
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/today/player/util/DownloadObserver;->onProgress(II)V

    return-void
.end method

.method private static final onSuccess$lambda-0(ILjava/lang/String;)V
    .locals 1

    .line 80
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/today/player/util/DownloadObserver;->setDownloadOk(ILjava/lang/String;)V

    return-void
.end method

.method private static final onSuccess$lambda-1(Ljava/lang/String;Lcom/today/player/service/DownLoadService;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    sget-object p0, Lcom/today/player/util/InstallUtil;->Companion:Lcom/today/player/util/InstallUtil$Companion;

    invoke-virtual {p0}, Lcom/today/player/util/InstallUtil$Companion;->getInstance()Lcom/today/player/util/InstallUtil;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/today/player/util/InstallUtil;->getInstallAppIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/today/player/service/DownLoadService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final onTooManyTasks$lambda-4(I)V
    .locals 1

    .line 101
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/today/player/util/DownloadObserver;->onTooManyTasks(I)V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;I)V
    .locals 0

    .line 91
    new-instance p1, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$xetE8TWyiYB_SpT336LgQqubBhQ;

    invoke-direct {p1, p2}, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$xetE8TWyiYB_SpT336LgQqubBhQ;-><init>(I)V

    invoke-static {p1}, Lcom/today/player/util/MainThread;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 0

    .line 96
    new-instance p1, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$3VqmShcBkc5zjgA3yiJyRiN_quM;

    invoke-direct {p1, p2, p3}, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$3VqmShcBkc5zjgA3yiJyRiN_quM;-><init>(II)V

    invoke-static {p1}, Lcom/today/player/util/MainThread;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 79
    new-instance p1, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$lq06PFB3dXkYuTNyjVE9sNeL8N0;

    invoke-direct {p1, p4, p3}, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$lq06PFB3dXkYuTNyjVE9sNeL8N0;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/today/player/util/MainThread;->run(Ljava/lang/Runnable;)V

    const-string p1, "go 2 install"

    .line 82
    invoke-static {p1}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/today/player/service/DownLoadService$startDownload$1;->this$0:Lcom/today/player/service/DownLoadService;

    new-instance p2, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$pkQhr6VWPDfQyU0k-a-FmzoCu3U;

    invoke-direct {p2, p3, p1}, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$pkQhr6VWPDfQyU0k-a-FmzoCu3U;-><init>(Ljava/lang/String;Lcom/today/player/service/DownLoadService;)V

    const-wide/16 p3, 0x1f4

    invoke-static {p2, p3, p4}, Lcom/today/player/util/MainThread;->postDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onTooManyTasks(Ljava/lang/String;I)V
    .locals 0

    .line 101
    new-instance p1, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$5Wm5bsKxyFvRI_ETOw6Hd51rP70;

    invoke-direct {p1, p2}, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$5Wm5bsKxyFvRI_ETOw6Hd51rP70;-><init>(I)V

    invoke-static {p1}, Lcom/today/player/util/MainThread;->run(Ljava/lang/Runnable;)V

    return-void
.end method
