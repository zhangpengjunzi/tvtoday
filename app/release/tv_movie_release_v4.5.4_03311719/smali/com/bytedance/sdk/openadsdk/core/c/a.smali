.class public Lcom/bytedance/sdk/openadsdk/core/c/a;
.super Ljava/lang/Object;
.source "DynamicUtils.java"


# direct methods
.method public static a(Lcom/bytedance/sdk/component/adexpress/b/l;Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/b/l;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/b/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/b/l;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/b/l;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/b/l;->h()Z

    move-result v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/b/l;->i()I

    move-result v5

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "setting"

    invoke-static {p3, p4, p5, p6}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Ljava/lang/String;ZILcom/bytedance/sdk/openadsdk/core/f/n;)Lorg/json/JSONObject;

    move-result-object p4

    invoke-virtual {p0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p4, "templateInfo"

    invoke-virtual {v0, p4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "adInfo"

    new-instance p4, Lcom/bytedance/sdk/openadsdk/core/c/a/a;

    invoke-direct {p4, p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/c/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/c/a/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "appInfo"

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/c/a/b;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/c/a/b;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/c/a/b;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;ZILcom/bytedance/sdk/openadsdk/core/f/n;)Lorg/json/JSONObject;
    .locals 5

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/k/t;->f(Lcom/bytedance/sdk/openadsdk/core/f/n;)I

    move-result p3

    const-string v0, "rv_skip_time"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/f;->f(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/j/f;->c(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "voice_control"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/bytedance/sdk/openadsdk/core/j/f;->b(I)Z

    move-result p3

    invoke-virtual {p0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "fv_skip_show"

    invoke-virtual {p0, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p3, "show_dislike"

    invoke-virtual {p0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "video_adaptation"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0
.end method
