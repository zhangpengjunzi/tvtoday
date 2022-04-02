.class public Lcom/bytedance/sdk/openadsdk/component/reward/c;
.super Lcom/bytedance/sdk/openadsdk/core/video/c/a;
.source "FullScreenVideoController.java"


# instance fields
.field private z:Lcom/bytedance/sdk/openadsdk/b/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/b/j;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    .line 21
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->z:Lcom/bytedance/sdk/openadsdk/b/j;

    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 46
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 47
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 48
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(I)V

    .line 49
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(I)V

    .line 50
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->F()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->c(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V

    return-void
.end method

.method protected t()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected u()V
    .locals 3

    .line 59
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->f(I)V

    .line 64
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->z:Lcom/bytedance/sdk/openadsdk/b/j;

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->b(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;Lcom/bytedance/sdk/openadsdk/b/j;)V

    return-void
.end method

.method protected v()V
    .locals 3

    .line 73
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 76
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 77
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V

    return-void
.end method

.method protected w()V
    .locals 3

    .line 86
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 87
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 88
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 89
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 90
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->F()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->b(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V

    return-void
.end method

.method protected x()V
    .locals 4

    .line 100
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 103
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->z:Lcom/bytedance/sdk/openadsdk/b/j;

    invoke-static {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;Lcom/bytedance/sdk/openadsdk/b/j;)V

    return-void
.end method

.method protected y()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->x:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bykv/vk/openvk/component/video/api/c/c;)V

    return-void
.end method

.method protected z()V
    .locals 0

    return-void
.end method
