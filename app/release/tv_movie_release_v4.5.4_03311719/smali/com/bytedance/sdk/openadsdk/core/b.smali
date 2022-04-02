.class public Lcom/bytedance/sdk/openadsdk/core/b;
.super Ljava/lang/Object;
.source "AdInfoFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/b$a;
    }
.end annotation


# direct methods
.method private static a(Lcom/bykv/vk/openvk/component/video/api/c/b;Z)I
    .locals 1

    if-nez p0, :cond_0

    const/16 p0, 0x19d

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->h()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x19e

    return p0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->g()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x19f

    return p0

    :cond_2
    const/16 p0, 0xc8

    return p0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/f/c;)I
    .locals 0

    if-nez p0, :cond_0

    const/16 p0, 0x197

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/c;->a()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x198

    return p0

    :cond_1
    const/16 p0, 0xc8

    return p0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/f/h;)I
    .locals 3

    const/16 v0, 0xc8

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/h;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p0, 0x193

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/h;->b()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p0, 0x194

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/h;->c()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/h;->c()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/16 p0, 0x195

    return p0

    :cond_3
    return v0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/f/n;)I
    .locals 6

    const/16 v0, 0x191

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ab()Lcom/bytedance/sdk/openadsdk/core/f/h;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/h;)I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ay()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->az()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "banner_ad"

    const-string v4, "load_html_fail"

    invoke-static {v1, p0, v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/b/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aa()Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/c;)I

    move-result v1

    if-eq v1, v2, :cond_6

    return v1

    :cond_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/b;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->O()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p0, 0x196

    return p0

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aw()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ad()I

    move-result v0

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_8

    const/4 v3, 0x5

    if-eq v0, v3, :cond_7

    const/16 v3, 0xf

    if-eq v0, v3, :cond_7

    const/16 v3, 0x10

    if-eq v0, v3, :cond_8

    const/16 v3, 0x32

    if-eq v0, v3, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aw()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/b;->a(Lcom/bykv/vk/openvk/component/video/api/c/b;Z)I

    move-result v1

    if-eq v1, v2, :cond_9

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->P()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/b;->a(Ljava/util/List;)I

    move-result v1

    if-eq v1, v2, :cond_9

    :cond_9
    :goto_1
    return v1

    :cond_a
    :goto_2
    const/16 p0, 0x192

    return p0
.end method

.method private static a(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/f/k;",
            ">;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 p0, 0x199

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const/16 p0, 0x19a

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/f/k;

    if-nez v0, :cond_3

    const/16 p0, 0x19b

    return p0

    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x19c

    return p0

    :cond_4
    const/16 p0, 0xc8

    return p0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/f/o;I)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/bytedance/sdk/openadsdk/AdSlot;",
            "Lcom/bytedance/sdk/openadsdk/core/f/o;",
            "I)",
            "Landroid/util/Pair<",
            "Lcom/bytedance/sdk/openadsdk/core/f/a;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/f/a;-><init>()V

    const-string v2, "request_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Ljava/lang/String;)V

    const-string v2, "ret"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(I)V

    const-string v2, "message"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b(Ljava/lang/String;)V

    const-string v2, "auction_price"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a()I

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    :cond_1
    const-string v3, "creatives"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/b;->b(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/f/o;I)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    invoke-static {p0, v0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b;->b(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/f/o;I)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/k/a;
    .locals 4

    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/u;->c(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/u;->d(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    move v3, v1

    move v1, v0

    move v0, v3

    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;-><init>(Landroid/content/Context;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Ljava/lang/String;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "reason_code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "load_vast_fail"

    invoke-static {v1, p0, p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/k/a;J)V
    .locals 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "reason_code"

    const-string v2, "load_vast_fail"

    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/k/a;->i()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/k/a;->f()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/k/a;->h()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double p2, v3, v5

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "duration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p3

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "load_vast_success"

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, -0x3

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const/4 p2, -0x2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "error_code"

    sget p3, Lcom/bytedance/sdk/openadsdk/core/k/a/b;->e:I

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p0, p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/k/a;Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->r(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->d(I)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->c(Z)V

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lcom/bytedance/sdk/openadsdk/core/k/a;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->d()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->h(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->e()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->i(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lcom/bytedance/sdk/openadsdk/core/f/c;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/bykv/vk/openvk/component/video/api/c/b;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;-><init>()V

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/c/b;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->h()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/c/b;->a(D)V

    invoke-virtual {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->d(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lcom/bykv/vk/openvk/component/video/api/c/b;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->b()Lcom/bytedance/sdk/openadsdk/core/k/b;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/k;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/f/k;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->b()Lcom/bytedance/sdk/openadsdk/core/k/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/k/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->b()Lcom/bytedance/sdk/openadsdk/core/k/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/k/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->b()Lcom/bytedance/sdk/openadsdk/core/k/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/k/b;->c()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->b(I)V

    :cond_4
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lcom/bytedance/sdk/openadsdk/core/f/k;)V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/f/d;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    const-string v1, "splash_clickarea"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "splash_layout_id"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/f/d;-><init>()V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(I)V

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->b(I)V

    return-object v1
.end method

.method public static b(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/f/o;I)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;-><init>()V

    const-string v2, "interaction_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->r(I)V

    const-string v2, "target_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->f(Ljava/lang/String;)V

    const-string v2, "ad_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->k(Ljava/lang/String;)V

    const-string v2, "app_log_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->l(Ljava/lang/String;)V

    const-string v2, "source"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->e(Ljava/lang/String;)V

    const-string v2, "dislike_control"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->v(I)V

    const/16 v2, -0xc8

    const-string v4, "play_bar_show_time"

    invoke-virtual {p0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->m(I)V

    const-string v2, "gecko_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->n(Ljava/lang/String;)V

    const-string v2, "set_click_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-string v6, "cta"

    invoke-virtual {v2, v6, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(D)V

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-string v6, "other"

    invoke-virtual {v2, v6, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(D)V

    :cond_1
    const-string v2, "icon"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "screenshot"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(Z)V

    const-string v4, "play_bar_style"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/f/n;->k(I)V

    const-string v4, "market_url"

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/f/n;->o(Ljava/lang/String;)V

    const-string v4, "video_adaptation"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/f/n;->i(I)V

    const-string v4, "feed_video_opentype"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/f/n;->f(I)V

    const-string v4, "session_params"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lorg/json/JSONObject;)V

    const-string v4, "auction_price"

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/f/n;->c(Ljava/lang/String;)V

    const-string v4, "render"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    const-string v7, "render_sequence"

    invoke-virtual {v4, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/bytedance/sdk/openadsdk/core/f/n;->g(I)V

    const-string v7, "backup_render_control"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/f/n;->h(I)V

    :cond_2
    if-eqz p2, :cond_3

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/core/f/o;->f:I

    goto :goto_0

    :cond_3
    const/4 p2, 0x1

    :goto_0
    const-string v4, "render_control"

    invoke-virtual {p0, v4, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->d(I)V

    const-string p2, "width"

    const-string v4, "height"

    const-string v7, "url"

    if-eqz v2, :cond_4

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/f/k;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/core/f/k;-><init>()V

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/f/k;->b(I)V

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a(I)V

    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lcom/bytedance/sdk/openadsdk/core/f/k;)V

    :cond_4
    const-string v2, "reward_data"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v8, "reward_amount"

    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/f/n;->c(I)V

    const-string v8, "reward_name"

    invoke-virtual {v2, v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Ljava/lang/String;)V

    :cond_5
    const-string v2, "cover_image"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/f/k;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/core/f/k;-><init>()V

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/bytedance/sdk/openadsdk/core/f/k;->b(I)V

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a(I)V

    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(Lcom/bytedance/sdk/openadsdk/core/f/k;)V

    :cond_6
    const-string v2, "image"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_7

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/f/k;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/core/f/k;-><init>()V

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/bytedance/sdk/openadsdk/core/f/k;->b(I)V

    invoke-virtual {v9, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a(I)V

    const-string v10, "image_preview"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v10}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a(Z)V

    const-string v10, "image_key"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/f/k;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/f/n;->c(Lcom/bytedance/sdk/openadsdk/core/f/k;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    const-string p2, "show_url"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_8

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_8

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->R()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    const-string p2, "click_url"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_9

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_9

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->S()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    const-string p2, "play_start"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_a

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_a

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->T()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    const-string p2, "click_area"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_b

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/f/f;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/f/f;-><init>()V

    const-string v4, "click_upper_content_area"

    invoke-virtual {p2, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/bytedance/sdk/openadsdk/core/f/f;->a:Z

    const-string v4, "click_upper_non_content_area"

    invoke-virtual {p2, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/bytedance/sdk/openadsdk/core/f/f;->b:Z

    const-string v4, "click_lower_content_area"

    invoke-virtual {p2, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/bytedance/sdk/openadsdk/core/f/f;->c:Z

    const-string v4, "click_lower_non_content_area"

    invoke-virtual {p2, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/bytedance/sdk/openadsdk/core/f/f;->d:Z

    const-string v4, "click_button_area"

    invoke-virtual {p2, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/bytedance/sdk/openadsdk/core/f/f;->e:Z

    const-string v4, "click_video_area"

    invoke-virtual {p2, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, v2, Lcom/bytedance/sdk/openadsdk/core/f/f;->f:Z

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lcom/bytedance/sdk/openadsdk/core/f/f;)V

    :cond_b
    const-string p2, "adslot"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/b;->c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    :cond_c
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    const-string p1, "intercept_flag"

    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->l(I)V

    const-string p1, "phone_num"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->g(Ljava/lang/String;)V

    const-string p1, "title"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->h(Ljava/lang/String;)V

    const-string p1, "description"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->i(Ljava/lang/String;)V

    const-string p1, "button_text"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->j(Ljava/lang/String;)V

    const-string p1, "ad_logo"

    invoke-virtual {p0, p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->j(I)V

    const-string p1, "ext"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->m(Ljava/lang/String;)V

    const-string p1, "cover_click_area"

    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->p(I)V

    const-string p2, "image_mode"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->s(I)V

    const-string p2, "orientation"

    invoke-virtual {p0, p2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->u(I)V

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-string p2, "aspect_ratio"

    invoke-virtual {p0, p2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float p2, v4

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(F)V

    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->p(I)V

    const-string p1, "app"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "deep_link"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/b;->e(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lcom/bytedance/sdk/openadsdk/core/f/c;)V

    const-string p1, "interaction_method_params"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/b;->f(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/f/m;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lcom/bytedance/sdk/openadsdk/core/f/m;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/b;->h(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/f/h;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lcom/bytedance/sdk/openadsdk/core/f/h;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/f/p;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/f/p;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lcom/bytedance/sdk/openadsdk/core/f/p;)V

    const-string p1, "filter_words"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p2, 0x0

    :goto_5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p2, v2, :cond_e

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/b;->d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_e
    const-string p1, "count_down"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->t(I)V

    const-string p1, "expiration_time"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(J)V

    const-string p1, "video_encode_type"

    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->B(I)V

    const-string p1, "player_type"

    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->A(I)V

    const-string p1, "video"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/b;->i(Lorg/json/JSONObject;)Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lcom/bykv/vk/openvk/component/video/api/c/b;)V

    :cond_f
    const-string p1, "h265_video"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/b;->i(Lorg/json/JSONObject;)Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(Lcom/bykv/vk/openvk/component/video/api/c/b;)V

    :cond_10
    const-string p1, "download_conf"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/b;->g(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/f/i;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lcom/bytedance/sdk/openadsdk/core/f/i;)V

    :cond_11
    const-string p1, "media_ext"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/b;->j(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Ljava/util/Map;)V

    const-string p1, "tpl_info"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_12

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/f/n$a;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n$a;-><init>()V

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n$a;->b(Ljava/lang/String;)V

    const-string v2, "md5"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n$a;->c(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n$a;->d(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n$a;->e(Ljava/lang/String;)V

    const-string v2, "diff_data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n$a;->f(Ljava/lang/String;)V

    const-string v2, "dynamic_creative"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n$a;->g(Ljava/lang/String;)V

    const-string v2, "version"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n$a;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lcom/bytedance/sdk/openadsdk/core/f/n$a;)V

    :cond_12
    const-string p1, "creative_extra"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->d(Ljava/lang/String;)V

    const-string p1, "if_block_lp"

    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->e(I)V

    const-string p1, "cache_sort"

    invoke-virtual {p0, p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->n(I)V

    const-string p1, "if_sp_cache"

    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->o(I)V

    const-string p1, "splash_control"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/b;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/f/d;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Lcom/bytedance/sdk/openadsdk/core/f/d;)V

    :cond_13
    const-string p1, "is_package_open"

    invoke-virtual {p0, p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->w(I)V

    const-string p1, "ad_info"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(Ljava/lang/String;)V

    const/4 p1, 0x2

    const-string p2, "ua_policy"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->q(I)V

    const/16 p1, 0x14

    const-string p2, "playable_duration_time"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->x(I)V

    const-string p1, "playable_endcard_close_time"

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->y(I)V

    const-string p1, "endcard_close_time"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->z(I)V

    const-string p1, "interaction_method"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(I)V

    const-string p1, "is_html"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->d(Z)V

    const-string p1, "dsp_html"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->p(Ljava/lang/String;)V

    const-string p1, "is_vast"

    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "vast_json"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object p0

    goto :goto_6

    :cond_14
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/k/t;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "dsp_vast"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    return-object v0

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->am()I

    move-result v2

    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/b;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object p0

    invoke-static {v1, p1, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/k/a;J)V

    if-eqz p0, :cond_16

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/k/a;->f(Ljava/lang/String;)V

    :cond_16
    :goto_6
    if-nez p0, :cond_17

    return-object v0

    :cond_17
    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/b;->a(Lcom/bytedance/sdk/openadsdk/core/k/a;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    :cond_18
    return-object v1
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ay()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 18

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "mCodeId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "mImgAcceptedWidth"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "mImgAcceptedHeight"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "mExpressViewAcceptedWidth"

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v6, v9

    const-string v9, "mExpressViewAcceptedHeight"

    invoke-virtual {v0, v9, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v7, v7

    const/4 v8, 0x6

    const-string v9, "mAdCount"

    invoke-virtual {v0, v9, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    const-string v10, "mSupportDeepLink"

    invoke-virtual {v0, v10, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "mRewardName"

    invoke-virtual {v0, v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mRewardAmount"

    invoke-virtual {v0, v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "mMediaExtra"

    invoke-virtual {v0, v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "mUserID"

    invoke-virtual {v0, v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const-string v15, "mOrientation"

    invoke-virtual {v0, v15, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "mNativeAdType"

    invoke-virtual {v0, v15, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "mIsAutoPlay"

    invoke-virtual {v0, v15, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    move/from16 v17, v15

    const-string v15, "mIsExpressAd"

    invoke-virtual {v0, v15, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v15, "mBidAdm"

    invoke-virtual {v0, v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardAmount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    move/from16 v2, v16

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    move/from16 v2, v17

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setIsAutoPlay(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->isExpressAd(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>()V

    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setId(Ljava/lang/String;)V

    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setName(Ljava/lang/String;)V

    const-string v2, "is_selected"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setIsSelected(Z)V

    const-string v2, "options"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/b;->d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/FilterWord;->addOption(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :catchall_0
    return-object v0
.end method

.method private static e(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/f/c;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/f/c;-><init>()V

    const-string v1, "app_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/c;->b(Ljava/lang/String;)V

    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/c;->c(Ljava/lang/String;)V

    const-string v1, "download_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/c;->a(Ljava/lang/String;)V

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const-string v3, "score"

    invoke-virtual {p0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/c;->a(D)V

    const/4 v1, -0x1

    const-string v2, "comment_num"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/c;->a(I)V

    const/4 v1, 0x0

    const-string v2, "app_size"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/f/c;->b(I)V

    return-object v0
.end method

.method private static f(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/f/m;
    .locals 7

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/m;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/f/m;-><init>()V

    const-string v1, ""

    const-wide/16 v2, 0x14

    const-wide/16 v4, 0xa

    if-nez p0, :cond_0

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/f/m;->a(J)V

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/f/m;->b(J)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/m;->a(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v6, "onlylp_loading_maxtime"

    invoke-virtual {p0, v6, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/f/m;->a(J)V

    const-string v4, "straight_lp_showtime"

    invoke-virtual {p0, v4, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/f/m;->b(J)V

    const-string v2, "loading_text"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/f/m;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method private static g(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/f/i;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/i;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/f/i;-><init>()V

    const/4 v1, 0x0

    const-string v2, "if_send_click"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/f/i;->a(I)V

    return-object v0
.end method

.method private static h(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/f/h;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/h;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/f/h;-><init>()V

    const-string v1, "deeplink_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/h;->a(Ljava/lang/String;)V

    const-string v1, "fallback_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/h;->b(Ljava/lang/String;)V

    const-string v1, "fallback_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/f/h;->a(I)V

    return-object v0
.end method

.method private static i(Lorg/json/JSONObject;)Lcom/bykv/vk/openvk/component/video/api/c/b;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/component/video/api/c/b;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/component/video/api/c/b;-><init>()V

    const-string v1, "cover_height"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->b(I)V

    const-string v1, "cover_width"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->c(I)V

    const-string v1, "resolution"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->a(Ljava/lang/String;)V

    const-string v1, "size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/api/c/b;->a(J)V

    const-wide/16 v1, 0x0

    const-string v3, "video_duration"

    invoke-virtual {p0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/api/c/b;->a(D)V

    const-string v1, "cover_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->b(Ljava/lang/String;)V

    const-string v1, "video_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->c(Ljava/lang/String;)V

    const-string v1, "endcard"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->d(Ljava/lang/String;)V

    const-string v1, "playable_download_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->e(Ljava/lang/String;)V

    const-string v1, "file_hash"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->f(Ljava/lang/String;)V

    const-string v1, "if_playable_loading_show"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->g(I)V

    const-string v1, "remove_loading_page_type"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->h(I)V

    const-string v1, "fallback_endcard_judge"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->a(I)V

    const v1, 0x4b000

    const-string v3, "video_preload_size"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->d(I)V

    const-string v1, "reward_video_cached_type"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->e(I)V

    const-string v1, "execute_cached_type"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->f(I)V

    return-object v0
.end method

.method private static j(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method
