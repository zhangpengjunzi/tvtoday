.class public Lcom/today/player/receiver/SearchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchReceiver.java"


# static fields
.field public static action:Ljava/lang/String; = "android.content.movie.search.Action"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 23
    sget-object v0, Lcom/today/player/receiver/SearchReceiver;->action:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    invoke-static {}, Lcom/today/player/util/AppManager;->getInstance()Lcom/today/player/util/AppManager;

    move-result-object v0

    const-class v1, Lcom/today/player/ui/activity/SearchActivity;

    invoke-virtual {v0, v1}, Lcom/today/player/util/AppManager;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "title"

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/today/player/util/AppManager;->getInstance()Lcom/today/player/util/AppManager;

    move-result-object p1

    const-class v0, Lcom/today/player/ui/activity/SearchActivity;

    invoke-virtual {p1, v0}, Lcom/today/player/util/AppManager;->backActivity(Ljava/lang/Class;)V

    .line 26
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/today/player/event/ServerEvent;

    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Lcom/today/player/event/ServerEvent;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/today/player/ui/activity/SearchActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x14000000

    .line 30
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
