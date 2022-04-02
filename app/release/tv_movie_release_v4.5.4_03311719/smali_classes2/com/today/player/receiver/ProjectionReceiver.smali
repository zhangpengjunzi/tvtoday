.class public Lcom/today/player/receiver/ProjectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProjectionReceiver.java"


# static fields
.field public static action:Ljava/lang/String; = "android.content.movie.projection.Action"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 20
    sget-object v0, Lcom/today/player/receiver/ProjectionReceiver;->action:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    invoke-static {}, Lcom/today/player/util/AppManager;->getInstance()Lcom/today/player/util/AppManager;

    move-result-object v0

    const-class v1, Lcom/today/player/ui/activity/ProjectionPlayActivity;

    invoke-virtual {v0, v1}, Lcom/today/player/util/AppManager;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Lcom/today/player/util/AppManager;->getInstance()Lcom/today/player/util/AppManager;

    move-result-object v0

    const-class v1, Lcom/today/player/ui/activity/ProjectionPlayActivity;

    invoke-virtual {v0, v1}, Lcom/today/player/util/AppManager;->backActivity(Ljava/lang/Class;)V

    .line 23
    invoke-static {}, Lcom/today/player/util/AppManager;->getInstance()Lcom/today/player/util/AppManager;

    move-result-object v0

    const-class v1, Lcom/today/player/ui/activity/ProjectionPlayActivity;

    invoke-virtual {v0, v1}, Lcom/today/player/util/AppManager;->finishActivity(Ljava/lang/Class;)V

    .line 25
    :cond_0
    invoke-static {}, Lcom/today/player/util/AppManager;->getInstance()Lcom/today/player/util/AppManager;

    move-result-object v0

    const-class v1, Lcom/today/player/ui/activity/ProjectionPlayActivity;

    invoke-virtual {v0, v1}, Lcom/today/player/util/AppManager;->finishActivity(Ljava/lang/Class;)V

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/today/player/ui/activity/ProjectionPlayActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "html"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x14000000

    .line 28
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
