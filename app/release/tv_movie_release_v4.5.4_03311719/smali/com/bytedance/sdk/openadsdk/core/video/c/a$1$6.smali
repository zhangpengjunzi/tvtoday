.class Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$6;
.super Ljava/lang/Object;
.source "BaseVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a(Lcom/bykv/vk/openvk/component/video/api/a;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->H(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g(Z)V

    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->t()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g(Z)V

    return-void

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->t()I

    move-result v0

    if-nez v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    goto :goto_0

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    goto :goto_0

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->O(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    :goto_0
    return-void
.end method
