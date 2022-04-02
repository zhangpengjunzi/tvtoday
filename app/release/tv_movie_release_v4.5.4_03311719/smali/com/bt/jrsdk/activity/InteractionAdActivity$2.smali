.class Lcom/bt/jrsdk/activity/InteractionAdActivity$2;
.super Ljava/lang/Object;
.source "InteractionAdActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/activity/InteractionAdActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/activity/InteractionAdActivity;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/activity/InteractionAdActivity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity$2;->this$0:Lcom/bt/jrsdk/activity/InteractionAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 73
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Image Ad OnTouch"

    .line 74
    invoke-static {p1}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity$2;->this$0:Lcom/bt/jrsdk/activity/InteractionAdActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->reportClick(FFF)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
