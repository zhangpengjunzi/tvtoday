.class public Lcom/bytedance/sdk/openadsdk/component/h/b;
.super Ljava/lang/Object;
.source "TTAppOpenVideoManager.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/FrameLayout;

.field private c:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field private d:Lcom/bytedance/sdk/openadsdk/component/h/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;-><init>()V

    .line 150
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/b;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a(J)V

    .line 151
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/b;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c(J)V

    .line 152
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/b;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b(J)V

    .line 153
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->e(I)V

    .line 154
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/h/a;->i()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->f(I)V

    .line 155
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 2

    .line 34
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->b:Landroid/widget/FrameLayout;

    .line 35
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 36
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/h/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/h/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/c$a;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/h/a;->a(Lcom/bykv/vk/openvk/component/video/api/d/c$a;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/t;->f(Lcom/bytedance/sdk/openadsdk/core/f/n;)I

    move-result v0

    .line 43
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/g/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/g/a;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, ""

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->b(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(I)V

    .line 55
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->b(I)V

    .line 56
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->c(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(J)V

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(Z)V

    .line 60
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->n()Lcom/bykv/vk/openvk/component/video/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->n()Lcom/bykv/vk/openvk/component/video/api/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->n()Lcom/bykv/vk/openvk/component/video/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->n()Lcom/bykv/vk/openvk/component/video/api/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 3

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/h/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppOpenVideoManager onPause throw Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->d()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 119
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->a:Landroid/content/Context;

    .line 120
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->e()V

    .line 121
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    return-void
.end method

.method public g()J
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->g()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public h()J
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->h()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public i()J
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/h/a;->j()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/h/b;->d:Lcom/bytedance/sdk/openadsdk/component/h/a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/h/a;->h()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
