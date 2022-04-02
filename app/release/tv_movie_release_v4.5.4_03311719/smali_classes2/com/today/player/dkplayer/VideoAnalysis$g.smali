.class public Lcom/today/player/dkplayer/VideoAnalysis$g;
.super Ljava/lang/Object;
.source "VideoAnalysis.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/dkplayer/VideoAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field final synthetic this$0:Lcom/today/player/dkplayer/VideoAnalysis;


# direct methods
.method public constructor <init>(Lcom/today/player/dkplayer/VideoAnalysis;Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$g;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis$g;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 327
    invoke-static {p2}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 328
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$g;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-object p1, p1, Lcom/today/player/dkplayer/VideoAnalysis;->f:Lcom/today/player/ui/adapter/PraseAdapter;

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/PraseAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    .line 329
    iget-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis$g;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-object p2, p2, Lcom/today/player/dkplayer/VideoAnalysis;->f:Lcom/today/player/ui/adapter/PraseAdapter;

    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis$g;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-object v0, v0, Lcom/today/player/dkplayer/VideoAnalysis;->g:Ljava/util/List;

    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/today/player/api/ApiConfig;->mParseUrl:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/today/player/ui/adapter/PraseAdapter;->notifyItemChanged(I)V

    .line 330
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/today/player/api/ApiConfig;->setDefault(Lcom/today/player/bean/PlayerModel$ParseUrlDTO;)V

    .line 331
    iget-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis$g;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-object p2, p2, Lcom/today/player/dkplayer/VideoAnalysis;->f:Lcom/today/player/ui/adapter/PraseAdapter;

    invoke-virtual {p2, p3}, Lcom/today/player/ui/adapter/PraseAdapter;->notifyItemChanged(I)V

    .line 332
    iget-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis$g;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    const/4 p3, 0x0

    iput-boolean p3, p2, Lcom/today/player/dkplayer/VideoAnalysis;->f38j:Z

    .line 333
    iget-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis$g;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->getParseUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$g;->a:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/today/player/dkplayer/VideoAnalysis;->access$100(Lcom/today/player/dkplayer/VideoAnalysis;Ljava/lang/String;)V

    return-void
.end method
