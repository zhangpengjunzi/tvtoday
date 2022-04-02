.class public final synthetic Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$pkQhr6VWPDfQyU0k-a-FmzoCu3U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/today/player/service/DownLoadService;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/today/player/service/DownLoadService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$pkQhr6VWPDfQyU0k-a-FmzoCu3U;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$pkQhr6VWPDfQyU0k-a-FmzoCu3U;->f$1:Lcom/today/player/service/DownLoadService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$pkQhr6VWPDfQyU0k-a-FmzoCu3U;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$pkQhr6VWPDfQyU0k-a-FmzoCu3U;->f$1:Lcom/today/player/service/DownLoadService;

    invoke-static {v0, v1}, Lcom/today/player/service/DownLoadService$startDownload$1;->lambda$pkQhr6VWPDfQyU0k-a-FmzoCu3U(Ljava/lang/String;Lcom/today/player/service/DownLoadService;)V

    return-void
.end method
