.class Lcom/today/player/dkplayer/VideoAnalysis$2;
.super Ljava/lang/Object;
.source "VideoAnalysis.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/dkplayer/VideoAnalysis;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/dkplayer/VideoAnalysis;

.field final synthetic val$str6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/today/player/dkplayer/VideoAnalysis;Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$2;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    iput-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis$2;->val$str6:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis$2;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-object v1, p0, Lcom/today/player/dkplayer/VideoAnalysis$2;->val$str6:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/today/player/dkplayer/VideoAnalysis;->access$100(Lcom/today/player/dkplayer/VideoAnalysis;Ljava/lang/String;)V

    return-void
.end method
