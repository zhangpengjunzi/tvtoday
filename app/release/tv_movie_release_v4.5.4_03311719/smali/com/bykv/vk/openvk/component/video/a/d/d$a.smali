.class Lcom/bykv/vk/openvk/component/video/a/d/d$a;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/a/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/component/video/a/d/d;

.field private b:J


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/a/d/d;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$a;->a:Lcom/bykv/vk/openvk/component/video/a/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 304
    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$a;->b:J

    return-void
.end method

.method public run()V
    .locals 6

    .line 309
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$a;->a:Lcom/bykv/vk/openvk/component/video/a/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/d/d;->i(Lcom/bykv/vk/openvk/component/video/a/d/d;)Lcom/bykv/vk/openvk/component/video/a/d/c;

    move-result-object v0

    const-string v1, "CSJ_VIDEO_MEDIA"

    if-eqz v0, :cond_0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$a;->a:Lcom/bykv/vk/openvk/component/video/a/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/d/d;->i(Lcom/bykv/vk/openvk/component/video/a/d/d;)Lcom/bykv/vk/openvk/component/video/a/d/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/a/d/c;->i()J

    move-result-wide v2

    .line 312
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$a;->a:Lcom/bykv/vk/openvk/component/video/a/d/d;

    iget-wide v4, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$a;->b:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/bykv/vk/openvk/component/video/a/d/d;->d(Lcom/bykv/vk/openvk/component/video/a/d/d;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[video] MediaPlayerProxy#start  error: getCurrentPosition :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/d/d$a;->a:Lcom/bykv/vk/openvk/component/video/a/d/d;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/d/d;->g(Lcom/bykv/vk/openvk/component/video/a/d/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x64

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "[video] MediaPlayerProxy#start not first play ! sendMsg --> OP_START , video start to play !"

    .line 318
    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
