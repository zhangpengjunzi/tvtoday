.class public Lcom/bytedance/sdk/openadsdk/k/o;
.super Ljava/lang/Object;
.source "SpAdUtile.java"


# direct methods
.method private static a(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3

    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/o;->e()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/o;->e()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "material_data"

    if-eqz v1, :cond_0

    .line 39
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/o;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/o;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/o;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 43
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 83
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "show_ad_tag"

    const-string v2, "material_data"

    const-string v3, "show_time"

    if-eqz v0, :cond_0

    .line 84
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/o;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/o;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/o;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 89
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/o;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/o;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 94
    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 95
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "show_ad_tag"

    if-eqz v1, :cond_0

    .line 54
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/o;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/o;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/o;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 58
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public static c()J
    .locals 4

    const-wide/16 v0, 0x0

    .line 68
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "show_time"

    if-eqz v2, :cond_0

    .line 69
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/o;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 71
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/o;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/o;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 73
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    return-wide v0
.end method

.method public static d()V
    .locals 1

    .line 103
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/o;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/o;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/o;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private static e()Landroid/content/Context;
    .locals 1

    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .locals 1

    const-string v0, "sp_last_ad_show_cache_show_ad"

    return-object v0
.end method
