.class Lcom/bt/jrsdk/activity/TTAdFullActivity$1;
.super Ljava/lang/Object;
.source "TTAdFullActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 76
    iput-object p1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onClose()V

    .line 81
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onFinish()V

    .line 83
    :cond_0
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 84
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onClose()V

    .line 85
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$1;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    invoke-virtual {p1}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->finish()V

    return-void
.end method
