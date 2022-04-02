.class Lcom/today/player/ui/activity/PlayActivity$1;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lcom/bt/jrsdk/listener/VideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/PlayActivity;->loadVideoAd()V
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

    .line 95
    iput-object p1, p0, Lcom/today/player/ui/activity/PlayActivity$1;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    return-void
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onLoaded()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$1;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    iget-object v0, v0, Lcom/today/player/ui/activity/PlayActivity;->playAd:Lcom/today/player/ad/VideoPlayAd;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$1;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    iget-object v0, v0, Lcom/today/player/ui/activity/PlayActivity;->playAd:Lcom/today/player/ad/VideoPlayAd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/today/player/ad/VideoPlayAd;->setReady(Z)V

    :cond_0
    return-void
.end method

.method public onNoAd()V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$1;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    iget-object v0, v0, Lcom/today/player/ui/activity/PlayActivity;->playAd:Lcom/today/player/ad/VideoPlayAd;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$1;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    iget-object v0, v0, Lcom/today/player/ui/activity/PlayActivity;->playAd:Lcom/today/player/ad/VideoPlayAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/today/player/ad/VideoPlayAd;->setReady(Z)V

    .line 107
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$1;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    iget-object v0, v0, Lcom/today/player/ui/activity/PlayActivity;->playAd:Lcom/today/player/ad/VideoPlayAd;

    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity$1;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v1}, Lcom/today/player/ui/activity/PlayActivity;->access$000(Lcom/today/player/ui/activity/PlayActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/today/player/ad/VideoPlayAd;->loadAd(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$1;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/today/player/ui/activity/PlayActivity;->access$102(Lcom/today/player/ui/activity/PlayActivity;Z)Z

    :cond_0
    return-void
.end method
