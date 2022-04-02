.class Lcom/bt/jrsdk/activity/VideoFullActivity$4;
.super Ljava/lang/Object;
.source "VideoFullActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/activity/VideoFullActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/activity/VideoFullActivity;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$4;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$4;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-virtual {p1}, Lcom/bt/jrsdk/activity/VideoFullActivity;->responseClick()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 188
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$4;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$4;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onClose()V

    .line 190
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$4;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onFinish()V

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$4;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/VideoFullActivity;->access$100(Lcom/bt/jrsdk/activity/VideoFullActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    .line 193
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$4;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-virtual {p1}, Lcom/bt/jrsdk/activity/VideoFullActivity;->finish()V

    :cond_1
    return-void
.end method
