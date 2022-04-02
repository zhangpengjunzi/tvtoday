.class Lcom/bt/jrsdk/activity/TTAdFullActivity$3;
.super Ljava/lang/Object;
.source "TTAdFullActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/activity/TTAdFullActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/activity/TTAdFullActivity;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 0

    return-void
.end method

.method public onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 0

    .line 190
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object p2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    iget-object p2, p2, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 191
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object p2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    iget-object p2, p2, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onClick()V

    .line 193
    :cond_0
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object p2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    iget-object p2, p2, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 194
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object p2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    iget-object p2, p2, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onClick()V

    :cond_1
    return-void
.end method

.method public onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 1

    .line 200
    iget-object p1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->access$400(Lcom/bt/jrsdk/activity/TTAdFullActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->access$402(Lcom/bt/jrsdk/activity/TTAdFullActivity;Z)Z

    .line 202
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 203
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onShow()V

    .line 205
    :cond_0
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 206
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onShow()V

    :cond_1
    return-void
.end method
