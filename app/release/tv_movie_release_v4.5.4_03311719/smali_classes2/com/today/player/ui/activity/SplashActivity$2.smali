.class Lcom/today/player/ui/activity/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/bt/jrsdk/listener/SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/SplashActivity;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/SplashActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/today/player/ui/activity/SplashActivity$2;->this$0:Lcom/today/player/ui/activity/SplashActivity;

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

    .line 149
    iget-object v0, p0, Lcom/today/player/ui/activity/SplashActivity$2;->this$0:Lcom/today/player/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/SplashActivity;->access$400(Lcom/today/player/ui/activity/SplashActivity;)V

    return-void
.end method

.method public onLoaded()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/today/player/ui/activity/SplashActivity$2;->this$0:Lcom/today/player/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/SplashActivity;->access$200(Lcom/today/player/ui/activity/SplashActivity;)Lcom/today/player/ad/VideoSplashAd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/today/player/ad/VideoSplashAd;->setReady(Z)V

    .line 133
    iget-object v0, p0, Lcom/today/player/ui/activity/SplashActivity$2;->this$0:Lcom/today/player/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/SplashActivity;->access$200(Lcom/today/player/ui/activity/SplashActivity;)Lcom/today/player/ad/VideoSplashAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/ad/VideoSplashAd;->showAd()V

    return-void
.end method

.method public onNoAd()V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/today/player/ui/activity/SplashActivity$2;->this$0:Lcom/today/player/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/SplashActivity;->access$300(Lcom/today/player/ui/activity/SplashActivity;)V

    .line 139
    iget-object v0, p0, Lcom/today/player/ui/activity/SplashActivity$2;->this$0:Lcom/today/player/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/SplashActivity;->access$200(Lcom/today/player/ui/activity/SplashActivity;)Lcom/today/player/ad/VideoSplashAd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/today/player/ad/VideoSplashAd;->setReady(Z)V

    return-void
.end method
