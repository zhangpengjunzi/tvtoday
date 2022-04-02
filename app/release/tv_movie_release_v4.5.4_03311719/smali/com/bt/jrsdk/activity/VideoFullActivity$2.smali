.class Lcom/bt/jrsdk/activity/VideoFullActivity$2;
.super Ljava/lang/Object;
.source "VideoFullActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bt/jrsdk/activity/VideoFullActivity;
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

    .line 122
    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$2;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 125
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Video click"

    .line 126
    invoke-static {p1}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$2;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-virtual {p1}, Lcom/bt/jrsdk/activity/VideoFullActivity;->responseClick()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$2;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$2;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onClick()V

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$2;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bt/jrsdk/activity/VideoFullActivity;->showTime:J

    .line 132
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$2;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/bt/jrsdk/activity/VideoFullActivity;->reportClick(FFF)V

    .line 134
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$2;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-virtual {p1}, Lcom/bt/jrsdk/activity/VideoFullActivity;->go2WebActivity()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
