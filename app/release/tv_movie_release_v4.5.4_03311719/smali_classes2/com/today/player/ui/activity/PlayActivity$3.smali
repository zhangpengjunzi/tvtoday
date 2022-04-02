.class Lcom/today/player/ui/activity/PlayActivity$3;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lcom/today/player/dkplayer/SimonVideoController$OnPlayStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/PlayActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/PlayActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/PlayActivity;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/today/player/ui/activity/PlayActivity$3;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public playStateChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/activity/PlayActivity$3;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/PlayActivity;->access$700(Lcom/today/player/ui/activity/PlayActivity;)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/today/player/ui/activity/PlayActivity$3;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/PlayActivity;->access$600(Lcom/today/player/ui/activity/PlayActivity;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u64ad\u653e\u9519\u8bef"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 208
    iget-object p1, p0, Lcom/today/player/ui/activity/PlayActivity$3;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-virtual {p1}, Lcom/today/player/ui/activity/PlayActivity;->finish()V

    .line 209
    iget-object p1, p0, Lcom/today/player/ui/activity/PlayActivity$3;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-virtual {p1}, Lcom/today/player/ui/activity/PlayActivity;->f()V

    :goto_0
    return-void
.end method
