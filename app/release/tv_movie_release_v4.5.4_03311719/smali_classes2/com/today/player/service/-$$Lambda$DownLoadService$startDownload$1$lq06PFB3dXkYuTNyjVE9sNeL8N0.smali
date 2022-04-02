.class public final synthetic Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$lq06PFB3dXkYuTNyjVE9sNeL8N0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$lq06PFB3dXkYuTNyjVE9sNeL8N0;->f$0:I

    iput-object p2, p0, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$lq06PFB3dXkYuTNyjVE9sNeL8N0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$lq06PFB3dXkYuTNyjVE9sNeL8N0;->f$0:I

    iget-object v1, p0, Lcom/today/player/service/-$$Lambda$DownLoadService$startDownload$1$lq06PFB3dXkYuTNyjVE9sNeL8N0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/today/player/service/DownLoadService$startDownload$1;->lambda$lq06PFB3dXkYuTNyjVE9sNeL8N0(ILjava/lang/String;)V

    return-void
.end method
