.class Lcom/bt/jrsdk/activity/VideoFullActivity$3;
.super Ljava/lang/Object;
.source "VideoFullActivity.java"

# interfaces
.implements Lcom/bt/jrsdk/util/VideoTimeUtil$CountDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/activity/VideoFullActivity;->timerRuning()V
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

    .line 142
    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTime(J)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    new-instance v1, Lcom/bt/jrsdk/activity/VideoFullActivity$3$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bt/jrsdk/activity/VideoFullActivity$3$1;-><init>(Lcom/bt/jrsdk/activity/VideoFullActivity$3;J)V

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/activity/VideoFullActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
