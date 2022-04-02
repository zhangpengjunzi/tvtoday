.class Lcom/today/player/dkplayer/VideoAnalysis$l$1;
.super Ljava/lang/Object;
.source "VideoAnalysis.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/dkplayer/VideoAnalysis$l;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/dkplayer/VideoAnalysis$l;

.field final synthetic val$sslErrorHandler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/today/player/dkplayer/VideoAnalysis$l;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$l$1;->this$1:Lcom/today/player/dkplayer/VideoAnalysis$l;

    iput-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis$l$1;->val$sslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 285
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$l$1;->val$sslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
