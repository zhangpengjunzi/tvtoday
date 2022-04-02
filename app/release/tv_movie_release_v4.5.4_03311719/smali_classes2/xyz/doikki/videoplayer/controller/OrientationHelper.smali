.class public Lxyz/doikki/videoplayer/controller/OrientationHelper;
.super Landroid/view/OrientationEventListener;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/doikki/videoplayer/controller/OrientationHelper$OnOrientationChangeListener;
    }
.end annotation


# instance fields
.field private mLastTime:J

.field private mOnOrientationChangeListener:Lxyz/doikki/videoplayer/controller/OrientationHelper$OnOrientationChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 7

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 22
    iget-wide v2, p0, Lxyz/doikki/videoplayer/controller/OrientationHelper;->mLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v2, p0, Lxyz/doikki/videoplayer/controller/OrientationHelper;->mOnOrientationChangeListener:Lxyz/doikki/videoplayer/controller/OrientationHelper$OnOrientationChangeListener;

    if-eqz v2, :cond_1

    .line 24
    invoke-interface {v2, p1}, Lxyz/doikki/videoplayer/controller/OrientationHelper$OnOrientationChangeListener;->onOrientationChanged(I)V

    .line 26
    :cond_1
    iput-wide v0, p0, Lxyz/doikki/videoplayer/controller/OrientationHelper;->mLastTime:J

    return-void
.end method

.method public setOnOrientationChangeListener(Lxyz/doikki/videoplayer/controller/OrientationHelper$OnOrientationChangeListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lxyz/doikki/videoplayer/controller/OrientationHelper;->mOnOrientationChangeListener:Lxyz/doikki/videoplayer/controller/OrientationHelper$OnOrientationChangeListener;

    return-void
.end method
