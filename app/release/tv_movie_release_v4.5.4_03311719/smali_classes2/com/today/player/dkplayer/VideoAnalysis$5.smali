.class Lcom/today/player/dkplayer/VideoAnalysis$5;
.super Ljava/lang/Object;
.source "VideoAnalysis.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/dkplayer/VideoAnalysis;->load(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/dkplayer/VideoAnalysis;


# direct methods
.method constructor <init>(Lcom/today/player/dkplayer/VideoAnalysis;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$5;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis$5;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    invoke-static {v0}, Lcom/today/player/dkplayer/VideoAnalysis;->access$200(Lcom/today/player/dkplayer/VideoAnalysis;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u89e3\u6790\u5931\u8d25\uff0c\u8bf7\u5207\u6362\u5176\u4ed6\u7ebf\u8def\u89e3\u6790"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
