.class Lcom/bykv/vk/openvk/component/video/a/d/d$3;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/a/d/d;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/component/video/api/c/c;

.field final synthetic b:Lcom/bykv/vk/openvk/component/video/a/d/d;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/a/d/d;Lcom/bykv/vk/openvk/component/video/api/c/c;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$3;->b:Lcom/bykv/vk/openvk/component/video/a/d/d;

    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$3;->a:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$3;->b:Lcom/bykv/vk/openvk/component/video/a/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/d/d;->h(Lcom/bykv/vk/openvk/component/video/a/d/d;)V

    .line 450
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$3;->b:Lcom/bykv/vk/openvk/component/video/a/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/d/d;->g(Lcom/bykv/vk/openvk/component/video/a/d/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$3;->b:Lcom/bykv/vk/openvk/component/video/a/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/d/d;->g(Lcom/bykv/vk/openvk/component/video/a/d/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$3;->a:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
