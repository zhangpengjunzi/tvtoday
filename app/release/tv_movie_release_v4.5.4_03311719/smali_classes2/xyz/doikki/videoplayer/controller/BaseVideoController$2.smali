.class Lxyz/doikki/videoplayer/controller/BaseVideoController$2;
.super Ljava/lang/Object;
.source "BaseVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/doikki/videoplayer/controller/BaseVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxyz/doikki/videoplayer/controller/BaseVideoController;


# direct methods
.method constructor <init>(Lxyz/doikki/videoplayer/controller/BaseVideoController;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController$2;->this$0:Lxyz/doikki/videoplayer/controller/BaseVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 317
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController$2;->this$0:Lxyz/doikki/videoplayer/controller/BaseVideoController;

    invoke-static {v0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->access$000(Lxyz/doikki/videoplayer/controller/BaseVideoController;)I

    move-result v0

    .line 318
    iget-object v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController$2;->this$0:Lxyz/doikki/videoplayer/controller/BaseVideoController;

    iget-object v1, v1, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController$2;->this$0:Lxyz/doikki/videoplayer/controller/BaseVideoController;

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-float v0, v0

    iget-object v2, v1, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v2}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->getSpeed()F

    move-result v2

    div-float/2addr v0, v2

    float-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController$2;->this$0:Lxyz/doikki/videoplayer/controller/BaseVideoController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->access$102(Lxyz/doikki/videoplayer/controller/BaseVideoController;Z)Z

    :goto_0
    return-void
.end method
