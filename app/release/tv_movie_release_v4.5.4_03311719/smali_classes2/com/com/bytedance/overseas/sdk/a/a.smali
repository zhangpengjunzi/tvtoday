.class Lcom/com/bytedance/overseas/sdk/a/a;
.super Lcom/com/bytedance/overseas/sdk/a/b;
.source "AndroidRGPDownLoader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/com/bytedance/overseas/sdk/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 7

    .line 27
    iget-object v0, p0, Lcom/com/bytedance/overseas/sdk/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/com/bytedance/overseas/sdk/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->as()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/com/bytedance/overseas/sdk/a/a;->a:Lcom/bytedance/sdk/openadsdk/core/f/c;

    if-nez v0, :cond_1

    return v1

    .line 34
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/com/bytedance/overseas/sdk/a/a;->a:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 36
    invoke-virtual {p0}, Lcom/com/bytedance/overseas/sdk/a/a;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const-string v2, "START_ONLY_FOR_ANDROID"

    const/4 v3, 0x1

    .line 40
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0}, Lcom/com/bytedance/overseas/sdk/a/a;->c()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_3

    const/high16 v2, 0x10000000

    .line 42
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    :cond_3
    invoke-virtual {p0}, Lcom/com/bytedance/overseas/sdk/a/a;->c()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    invoke-virtual {p0}, Lcom/com/bytedance/overseas/sdk/a/a;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/com/bytedance/overseas/sdk/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v4, p0, Lcom/com/bytedance/overseas/sdk/a/a;->c:Ljava/lang/String;

    const-string v5, "click_open"

    const/4 v6, 0x0

    invoke-static {v0, v2, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/b/e;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    :cond_4
    return v1
.end method

.method public b()Z
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/com/bytedance/overseas/sdk/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ab()Lcom/bytedance/sdk/openadsdk/core/f/h;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/com/bytedance/overseas/sdk/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ab()Lcom/bytedance/sdk/openadsdk/core/f/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/h;->a()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 65
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0}, Lcom/com/bytedance/overseas/sdk/a/a;->c()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    const/high16 v2, 0x10000000

    .line 69
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/com/bytedance/overseas/sdk/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v5, p0, Lcom/com/bytedance/overseas/sdk/a/a;->c:Ljava/lang/String;

    const-string v6, "open_url_app"

    invoke-static {v2, v4, v5, v6, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 72
    invoke-virtual {p0}, Lcom/com/bytedance/overseas/sdk/a/a;->c()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/p;->a()Lcom/bytedance/sdk/openadsdk/b/p;

    move-result-object v2

    iget-object v3, p0, Lcom/com/bytedance/overseas/sdk/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v4, p0, Lcom/com/bytedance/overseas/sdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/b/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    nop

    .line 81
    :cond_1
    iget-boolean v2, p0, Lcom/com/bytedance/overseas/sdk/a/a;->d:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/com/bytedance/overseas/sdk/a/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    :cond_2
    iput-boolean v1, p0, Lcom/com/bytedance/overseas/sdk/a/a;->d:Z

    .line 83
    invoke-virtual {p0}, Lcom/com/bytedance/overseas/sdk/a/a;->c()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/com/bytedance/overseas/sdk/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v3, p0, Lcom/com/bytedance/overseas/sdk/a/a;->c:Ljava/lang/String;

    const-string v4, "open_fallback_url"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
