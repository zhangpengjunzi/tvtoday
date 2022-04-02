.class public Lcom/bt/jrsdk/httplib/MainThread;
.super Ljava/lang/Object;
.source "MainThread.java"


# static fields
.field private static final HANDLER:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/bt/jrsdk/httplib/MainThread;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isMainThread()Z
    .locals 2

    .line 21
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static postDelay(Ljava/lang/Runnable;J)V
    .locals 1

    .line 24
    sget-object v0, Lcom/bt/jrsdk/httplib/MainThread;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static run(Ljava/lang/Runnable;)V
    .locals 1

    .line 13
    invoke-static {}, Lcom/bt/jrsdk/httplib/MainThread;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/bt/jrsdk/httplib/MainThread;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
