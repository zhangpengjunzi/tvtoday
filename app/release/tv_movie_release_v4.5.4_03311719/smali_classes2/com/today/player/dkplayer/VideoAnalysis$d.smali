.class public Lcom/today/player/dkplayer/VideoAnalysis$d;
.super Ljava/lang/Object;
.source "VideoAnalysis.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/dkplayer/VideoAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/dkplayer/VideoAnalysis;


# direct methods
.method public constructor <init>(Lcom/today/player/dkplayer/VideoAnalysis;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$d;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$d;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    invoke-static {p1}, Lcom/today/player/dkplayer/VideoAnalysis;->access$000(Lcom/today/player/dkplayer/VideoAnalysis;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$d;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    invoke-static {p1}, Lcom/today/player/dkplayer/VideoAnalysis;->access$000(Lcom/today/player/dkplayer/VideoAnalysis;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 114
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$d;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    invoke-static {p1}, Lcom/today/player/dkplayer/VideoAnalysis;->access$000(Lcom/today/player/dkplayer/VideoAnalysis;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 115
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$d;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    invoke-static {p1}, Lcom/today/player/dkplayer/VideoAnalysis;->access$000(Lcom/today/player/dkplayer/VideoAnalysis;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->removeAllViews()V

    .line 116
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$d;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    invoke-static {p1}, Lcom/today/player/dkplayer/VideoAnalysis;->access$000(Lcom/today/player/dkplayer/VideoAnalysis;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$d;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-object p1, p1, Lcom/today/player/dkplayer/VideoAnalysis;->i:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$d;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-object p1, p1, Lcom/today/player/dkplayer/VideoAnalysis;->i:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
