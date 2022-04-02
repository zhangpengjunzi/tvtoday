.class public Lcom/today/player/dkplayer/VideoAnalysis$l$a;
.super Ljava/lang/Object;
.source "VideoAnalysis.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/dkplayer/VideoAnalysis$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/webkit/WebView;

.field public final b:Ljava/lang/String;

.field final synthetic this$1:Lcom/today/player/dkplayer/VideoAnalysis$l;


# direct methods
.method public constructor <init>(Lcom/today/player/dkplayer/VideoAnalysis$l;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$l$a;->this$1:Lcom/today/player/dkplayer/VideoAnalysis$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis$l$a;->a:Landroid/webkit/WebView;

    .line 261
    iput-object p3, p0, Lcom/today/player/dkplayer/VideoAnalysis$l$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis$l$a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 266
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis$l$a;->this$1:Lcom/today/player/dkplayer/VideoAnalysis$l;

    iget-object v0, v0, Lcom/today/player/dkplayer/VideoAnalysis$l;->a:Lcom/today/player/dkplayer/VideoAnalysis$play;

    iget-object v1, p0, Lcom/today/player/dkplayer/VideoAnalysis$l$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/today/player/dkplayer/VideoAnalysis$play;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
