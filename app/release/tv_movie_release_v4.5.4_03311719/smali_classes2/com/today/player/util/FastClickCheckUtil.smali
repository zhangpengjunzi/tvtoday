.class public Lcom/today/player/util/FastClickCheckUtil;
.super Ljava/lang/Object;
.source "FastClickCheckUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x1f4

    .line 18
    invoke-static {p0, v0}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;I)V

    return-void
.end method

.method public static check(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/today/player/util/FastClickCheckUtil$1;

    invoke-direct {v1, p0}, Lcom/today/player/util/FastClickCheckUtil$1;-><init>(Landroid/view/View;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
