.class Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$4;
.super Ljava/lang/Object;
.source "BaseVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a(Lcom/bykv/vk/openvk/component/video/api/a;Lcom/bykv/vk/openvk/component/video/api/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/component/video/api/c/a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;Lcom/bykv/vk/openvk/component/video/api/c/a;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$4;->a:Lcom/bykv/vk/openvk/component/video/api/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$4;->a:Lcom/bykv/vk/openvk/component/video/api/c/a;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/c/a;->a()I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$4;->a:Lcom/bykv/vk/openvk/component/video/api/c/a;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/a;->b()I

    move-result v1

    .line 184
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(II)V

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->s(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/component/utils/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->i(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/x;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->t(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->w(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->x(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$4;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/bykv/vk/openvk/component/video/a/e/a;->a(JJ)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/d/c$a;->b(JI)V

    :cond_1
    return-void
.end method
