.class public Lcom/bytedance/sdk/openadsdk/component/h/a;
.super Lcom/bytedance/sdk/openadsdk/core/video/c/a;
.source "TTAppOpenVideoController.java"


# instance fields
.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/h/a;->z:Z

    .line 19
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->M()V

    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/a;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 35
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 36
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 37
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(I)V

    .line 38
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(I)V

    .line 39
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->F()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->c(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;Lcom/bytedance/sdk/openadsdk/b/j;)V

    return-void
.end method

.method protected t()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected u()V
    .locals 3

    .line 46
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/a;->z:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/a;->z:Z

    .line 50
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 52
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 53
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 54
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->f(I)V

    .line 56
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->b(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;Lcom/bytedance/sdk/openadsdk/b/j;)V

    :cond_0
    return-void
.end method

.method protected v()V
    .locals 3

    .line 62
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 64
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 66
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V

    return-void
.end method

.method protected w()V
    .locals 3

    .line 71
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 73
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->F()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->b(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V

    return-void
.end method

.method protected x()V
    .locals 4

    .line 80
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 83
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/h/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;Lcom/bytedance/sdk/openadsdk/b/j;)V

    return-void
.end method

.method protected y()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/h/a;->x:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bykv/vk/openvk/component/video/api/c/c;)V

    return-void
.end method

.method public z()V
    .locals 3

    .line 99
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 100
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 101
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 102
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 103
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->f(I)V

    .line 104
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->e(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V

    return-void
.end method
