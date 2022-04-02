.class Lcom/today/player/ui/activity/PlayActivity$2;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lcom/bt/jrsdk/listener/SplashAdListener;


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

    .line 135
    iput-object p1, p0, Lcom/today/player/ui/activity/PlayActivity$2;->this$0:Lcom/today/player/ui/activity/PlayActivity;

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
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$2;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/PlayActivity;->access$200(Lcom/today/player/ui/activity/PlayActivity;)Lcom/today/player/ad/VideoSplashAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$2;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-virtual {v0}, Lcom/today/player/ui/activity/PlayActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$2;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/PlayActivity;->access$400(Lcom/today/player/ui/activity/PlayActivity;)V

    .line 162
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$2;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/PlayActivity;->access$500(Lcom/today/player/ui/activity/PlayActivity;)V

    :cond_0
    return-void
.end method

.method public onLoaded()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$2;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/PlayActivity;->access$200(Lcom/today/player/ui/activity/PlayActivity;)Lcom/today/player/ad/VideoSplashAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$2;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/PlayActivity;->access$200(Lcom/today/player/ui/activity/PlayActivity;)Lcom/today/player/ad/VideoSplashAd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/today/player/ad/VideoSplashAd;->setReady(Z)V

    .line 140
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$2;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/PlayActivity;->access$200(Lcom/today/player/ui/activity/PlayActivity;)Lcom/today/player/ad/VideoSplashAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/ad/VideoSplashAd;->showAd()V

    :cond_0
    return-void
.end method

.method public onNoAd()V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$2;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/PlayActivity;->access$200(Lcom/today/player/ui/activity/PlayActivity;)Lcom/today/player/ad/VideoSplashAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$2;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/PlayActivity;->access$300(Lcom/today/player/ui/activity/PlayActivity;)V

    .line 148
    invoke-static {}, Lcom/bt/admanager/AdWeightManager;->getInstance()Lcom/bt/admanager/AdWeightManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bt/admanager/AdWeightManager;->splashImageCountAdd()V

    .line 149
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$2;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/PlayActivity;->access$200(Lcom/today/player/ui/activity/PlayActivity;)Lcom/today/player/ad/VideoSplashAd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/today/player/ad/VideoSplashAd;->setReady(Z)V

    :cond_0
    return-void
.end method
