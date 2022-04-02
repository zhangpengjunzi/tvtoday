.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a(Lcom/bykv/vk/openvk/component/video/api/a;Lcom/bykv/vk/openvk/component/video/api/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/component/video/api/c/a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;Lcom/bykv/vk/openvk/component/video/api/c/a;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->a:Lcom/bykv/vk/openvk/component/video/api/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->a:Lcom/bykv/vk/openvk/component/video/api/c/a;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/c/a;->a()I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->a:Lcom/bykv/vk/openvk/component/video/api/c/a;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/a;->b()I

    move-result v1

    .line 184
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;II)V

    const-string v2, "CSJ_VIDEO_NativeController"

    const-string v3, "CALLBACK_ON_ERROR\u3001\u3001before isVideoPlaying\u3001\u3001\u3001\u3001\u3001"

    .line 185
    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, -0x3ec

    if-eq v1, v3, :cond_0

    return-void

    .line 190
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video play error\uff1a errorcode,extra\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-static {v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;II)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Play video error\uff0cshow result page\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    .line 193
    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->t(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->r(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->s(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/ref/WeakReference;Z)V

    .line 195
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->c(Z)V

    .line 196
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->f()V

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->u(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 200
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->v(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b()V

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->w(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->w(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->x(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->y(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v7, v7, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->z(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/bykv/vk/openvk/component/video/a/e/a;->a(JJ)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/bykv/vk/openvk/component/video/api/d/c$a;->b(JI)V

    .line 230
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->l(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->l(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 231
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->u()Z

    move-result v2

    if-nez v2, :cond_4

    .line 232
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;->l(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/d/c$d;

    invoke-interface {v2, v0, v1}, Lcom/bykv/vk/openvk/component/video/api/d/c$d;->a(II)V

    :cond_4
    return-void
.end method
