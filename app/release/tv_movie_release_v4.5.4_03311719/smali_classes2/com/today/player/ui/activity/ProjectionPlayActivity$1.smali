.class Lcom/today/player/ui/activity/ProjectionPlayActivity$1;
.super Ljava/lang/Object;
.source "ProjectionPlayActivity.java"

# interfaces
.implements Lcom/today/player/dkplayer/SimonVideoController$OnPlayStateChangeListener;


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

    .line 40
    iput-object p1, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$1;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public playStateChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 44
    iget-object p1, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$1;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    invoke-virtual {p1}, Lcom/today/player/ui/activity/ProjectionPlayActivity;->e()V

    .line 45
    iget-object p1, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$1;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    invoke-virtual {p1}, Lcom/today/player/ui/activity/ProjectionPlayActivity;->finish()V

    .line 46
    iget-object p1, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$1;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    const/4 v0, 0x1

    const-string v1, "\u64ad\u653e\u9519\u8bef"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 48
    iget-object p1, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity$1;->this$0:Lcom/today/player/ui/activity/ProjectionPlayActivity;

    invoke-virtual {p1}, Lcom/today/player/ui/activity/ProjectionPlayActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
