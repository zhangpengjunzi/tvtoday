.class Lcom/bt/jrsdk/activity/SplashAdActivity$2;
.super Ljava/lang/Object;
.source "SplashAdActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/activity/SplashAdActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/activity/SplashAdActivity;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/activity/SplashAdActivity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity$2;->this$0:Lcom/bt/jrsdk/activity/SplashAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Image Ad OnTouch"

    .line 92
    invoke-static {p1}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity$2;->this$0:Lcom/bt/jrsdk/activity/SplashAdActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/bt/jrsdk/activity/SplashAdActivity;->reportClick(FFF)V

    .line 94
    iget-object p1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity$2;->this$0:Lcom/bt/jrsdk/activity/SplashAdActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/SplashAdActivity;->access$100(Lcom/bt/jrsdk/activity/SplashAdActivity;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
