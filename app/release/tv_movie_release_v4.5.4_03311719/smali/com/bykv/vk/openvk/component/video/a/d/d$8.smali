.class Lcom/bykv/vk/openvk/component/video/a/d/d$8;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/a/d/d;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bykv/vk/openvk/component/video/a/d/d;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/a/d/d;Z)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$8;->b:Lcom/bykv/vk/openvk/component/video/a/d/d;

    iput-boolean p2, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$8;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$8;->b:Lcom/bykv/vk/openvk/component/video/a/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/d/d;->i(Lcom/bykv/vk/openvk/component/video/a/d/d;)Lcom/bykv/vk/openvk/component/video/a/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$8;->b:Lcom/bykv/vk/openvk/component/video/a/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/d/d;->i(Lcom/bykv/vk/openvk/component/video/a/d/d;)Lcom/bykv/vk/openvk/component/video/a/d/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$8;->a:Z

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/a/d/c;->a(Z)V

    :cond_0
    return-void
.end method
