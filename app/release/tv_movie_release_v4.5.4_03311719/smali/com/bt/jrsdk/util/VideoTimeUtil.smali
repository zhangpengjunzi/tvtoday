.class public Lcom/bt/jrsdk/util/VideoTimeUtil;
.super Ljava/lang/Object;
.source "VideoTimeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bt/jrsdk/util/VideoTimeUtil$CountDownListener;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:J = 0x3e8L

.field private static timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countDown(Lxyz/doikki/videoplayer/player/VideoView;Lcom/bt/jrsdk/util/VideoTimeUtil$CountDownListener;)V
    .locals 7

    .line 19
    sget-object v0, Lcom/bt/jrsdk/util/VideoTimeUtil;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 20
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/bt/jrsdk/util/VideoTimeUtil;->timer:Ljava/util/Timer;

    .line 21
    new-instance v2, Lcom/bt/jrsdk/util/VideoTimeUtil$1;

    invoke-direct {v2, p1, p0}, Lcom/bt/jrsdk/util/VideoTimeUtil$1;-><init>(Lcom/bt/jrsdk/util/VideoTimeUtil$CountDownListener;Lxyz/doikki/videoplayer/player/VideoView;)V

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public static recycler()V
    .locals 1

    .line 44
    sget-object v0, Lcom/bt/jrsdk/util/VideoTimeUtil;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/bt/jrsdk/util/VideoTimeUtil;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method
