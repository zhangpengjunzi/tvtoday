.class Lxyz/doikki/videoplayer/controller/BaseVideoController$1;
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

    .line 273
    iput-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController$1;->this$0:Lxyz/doikki/videoplayer/controller/BaseVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 276
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController$1;->this$0:Lxyz/doikki/videoplayer/controller/BaseVideoController;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->hide()V

    return-void
.end method
