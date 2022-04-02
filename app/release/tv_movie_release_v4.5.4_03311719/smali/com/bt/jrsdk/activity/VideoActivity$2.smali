.class Lcom/bt/jrsdk/activity/VideoActivity$2;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bt/jrsdk/activity/VideoActivity;
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

    .line 117
    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$2;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Video click"

    .line 121
    invoke-static {p1}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$2;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-virtual {p1}, Lcom/bt/jrsdk/activity/VideoActivity;->responseClick()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity$2;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity$2;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onClick()V

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$2;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bt/jrsdk/activity/VideoActivity;->showTime:J

    .line 127
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$2;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/bt/jrsdk/activity/VideoActivity;->reportClick(FFF)V

    .line 128
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity$2;->this$0:Lcom/bt/jrsdk/activity/VideoActivity;

    invoke-virtual {p1}, Lcom/bt/jrsdk/activity/VideoActivity;->go2WebActivity()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
