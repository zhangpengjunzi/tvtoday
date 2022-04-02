.class Lcom/today/player/dkplayer/VideoAnalysis$4;
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

    .line 343
    iput-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$4;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis$4;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-object v0, v0, Lcom/today/player/dkplayer/VideoAnalysis;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->requestFocus()Z

    return-void
.end method
