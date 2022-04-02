.class Lcom/today/player/ui/activity/ProjectionPlayActivity$2;
.super Ljava/lang/Object;
.source "ProjectionPlayActivity.java"

# interfaces
.implements Lcom/today/player/dkplayer/VideoAnalysis$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/ProjectionPlayActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/ProjectionPlayActivity;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$2;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$2;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    invoke-virtual {v0}, Lcom/today/player/ui/activity/ProjectionPlayActivity;->e()V

    .line 78
    iget-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$2;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    invoke-virtual {v0}, Lcom/today/player/ui/activity/ProjectionPlayActivity;->finish()V

    return-void
.end method
