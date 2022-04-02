.class Lcom/bt/jrsdk/activity/VideoActivity$3;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/activity/VideoActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/activity/VideoActivity;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/activity/VideoActivity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-virtual {p1}, Lcom/bt/jrsdk/activity/VideoActivity;->responseClick()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onClose()V

    .line 157
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/VideoActivity;->access$200(Lcom/bt/jrsdk/activity/VideoActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/VideoActivity;->access$100(Lcom/bt/jrsdk/activity/VideoActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    .line 162
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-virtual {p1}, Lcom/bt/jrsdk/activity/VideoActivity;->finish()V

    :cond_1
    return-void
.end method
