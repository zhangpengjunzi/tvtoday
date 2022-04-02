.class public Lcom/bytedance/sdk/openadsdk/b/b/a/a;
.super Ljava/lang/Object;
.source "VideoEventManager.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bykv/vk/openvk/component/video/api/b/a;",
            "Lcom/bytedance/sdk/openadsdk/b/b/b/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/bykv/vk/openvk/component/video/api/c/c;)J
    .locals 2

    .line 51
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->c(Lcom/bykv/vk/openvk/component/video/api/c/c;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;II)Lorg/json/JSONObject;
    .locals 3

    .line 76
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "session_id"

    .line 80
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-lez p2, :cond_1

    const-string p1, "play_type"

    .line 83
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p0, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "video_resolution"

    .line 88
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "video_size"

    .line 89
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "video_url"

    .line 90
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "player_type"

    .line 91
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;Lcom/bytedance/sdk/openadsdk/b/j;)V
    .locals 6

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/b/b/b/o;

    if-nez p0, :cond_1

    return-void

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->d()Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object p1

    .line 149
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->e()Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v0

    if-eqz p1, :cond_4

    if-nez v0, :cond_2

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->l()Z

    move-result v1

    if-nez v1, :cond_3

    .line 154
    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V

    .line 157
    :cond_3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/b/b/h;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/h;-><init>()V

    .line 158
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->m()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/h;->a(I)V

    .line 159
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aB()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/a/a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/bykv/vk/openvk/component/video/api/a/a;->b(Lcom/bykv/vk/openvk/component/video/api/c/c;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/b/b/h;->b(J)V

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/b/b/h;->a(J)V

    .line 161
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->c()I

    move-result v2

    .line 163
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result p1

    invoke-static {v0, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object p0

    .line 164
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object p1

    .line 166
    new-instance v2, Lcom/bytedance/sdk/openadsdk/b/b/b/a;

    invoke-direct {v2, v0, p1, p0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/b/b/c;)V

    .line 167
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->l()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;->a(Z)V

    const-string p0, "feed_play"

    .line 168
    invoke-static {v2, p0, p3}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/b/j;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static a(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V
    .locals 9

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 176
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/b/b/b/o;

    if-nez p0, :cond_1

    return-void

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->d()Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->e()Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_2

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a()J

    move-result-wide v2

    .line 186
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    cmp-long v8, v2, v6

    if-gtz v8, :cond_3

    goto :goto_0

    .line 192
    :cond_3
    new-instance v6, Lcom/bytedance/sdk/openadsdk/b/b/b/g;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/b/b/b/g;-><init>()V

    .line 193
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/b/b/b/g;->a(J)V

    .line 194
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/b/b/b/g;->b(J)V

    .line 196
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->c()I

    move-result v4

    .line 197
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result v0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object p0

    .line 198
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v4, Lcom/bytedance/sdk/openadsdk/b/b/b/a;

    invoke-direct {v4, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/b/b/c;)V

    .line 201
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->l()Z

    move-result p0

    invoke-virtual {v4, p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;->a(Z)V

    .line 204
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    .line 205
    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "percent"

    .line 206
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->h()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "feed_pause"

    .line 207
    invoke-static {v4, p1, p0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 209
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static a(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;Lcom/bytedance/sdk/openadsdk/b/j;)V
    .locals 10

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 344
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o;

    if-nez v0, :cond_1

    return-void

    .line 348
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->d()Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v1

    .line 349
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->e()Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v2

    if-eqz v1, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    .line 353
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a()J

    move-result-wide v3

    .line 354
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c()J

    move-result-wide v5

    .line 356
    new-instance v7, Lcom/bytedance/sdk/openadsdk/b/b/b/d;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/b/b/b/d;-><init>()V

    .line 357
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/b/b/b/d;->b(J)V

    .line 358
    invoke-virtual {v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/b/b/b/d;->a(J)V

    .line 359
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->i()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/b/b/b/d;->a(I)V

    .line 360
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->j()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/b/b/b/d;->b(I)V

    .line 362
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->c()I

    move-result v5

    .line 363
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result v1

    invoke-static {v2, v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v0

    .line 364
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v1

    .line 366
    new-instance v5, Lcom/bytedance/sdk/openadsdk/b/b/b/a;

    invoke-direct {v5, v2, v1, v0, v7}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/b/b/c;)V

    .line 367
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->l()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;->a(Z)V

    .line 369
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "duration"

    .line 370
    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "percent"

    .line 371
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->h()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "feed_break"

    .line 372
    invoke-static {v5, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/j;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 374
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 376
    :goto_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/b/b/b/a<",
            "Lcom/bytedance/sdk/openadsdk/b/b/b/k;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_start"

    .line 103
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 466
    invoke-static {p0, p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/j;)V

    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/b/j;)V
    .locals 1

    const/4 v0, 0x0

    .line 474
    invoke-static {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/j;)V

    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 470
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/j;)V

    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/j;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 482
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    move-object v3, p2

    .line 485
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;->e()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 486
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;->b()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x352ab080    # -6989760.0f

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_4

    const v2, -0x2a77c376

    if-eq v1, v2, :cond_3

    const v2, 0x72060cfe

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "draw_ad"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v1, "embeded_ad"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v1, "stream"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_6

    goto :goto_1

    .line 490
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "customer_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    :goto_1
    move-object v2, p1

    .line 495
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;->a()Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/bytedance/sdk/openadsdk/b/b/a/a$1;

    invoke-direct {v5, p0, v2, p3}, Lcom/bytedance/sdk/openadsdk/b/b/a/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/b/j;)V

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/j;Lcom/bytedance/sdk/openadsdk/b/a/a;)V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bykv/vk/openvk/component/video/api/c/c;)V
    .locals 11

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 126
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aB()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/a/a;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/bykv/vk/openvk/component/video/api/a/a;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)Z

    move-result v1

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    const/4 v9, 0x2

    .line 129
    :goto_0
    new-instance v10, Lcom/bytedance/sdk/openadsdk/b/b/b/o;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object v1, v10

    move-object v4, v0

    move v5, v9

    move-object v6, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;-><init>(JLjava/lang/String;ILcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    .line 130
    sget-object v1, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result p1

    invoke-static {p0, v0, v9, p1}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object p1

    .line 133
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/b/b/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/b/b/c;)V

    .line 135
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;->a(Z)V

    const-string p0, "play_start"

    .line 136
    invoke-static {v1, p0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V
    .locals 2

    .line 522
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/b;->a()Lcom/bytedance/sdk/openadsdk/g/b;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/b/a/a$2;

    invoke-direct {v1, p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a$2;-><init>(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/b;->a(Lcom/bytedance/sdk/openadsdk/g/a;)V

    return-void
.end method

.method static synthetic b(Lcom/bykv/vk/openvk/component/video/api/c/c;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->d(Lcom/bykv/vk/openvk/component/video/api/c/c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V
    .locals 9

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 217
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/b/b/b/o;

    if-nez p0, :cond_1

    return-void

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->d()Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->e()Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_2

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a()J

    move-result-wide v2

    .line 227
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    cmp-long v8, v2, v6

    if-gtz v8, :cond_3

    goto :goto_0

    .line 233
    :cond_3
    new-instance v6, Lcom/bytedance/sdk/openadsdk/b/b/b/e;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/b/b/b/e;-><init>()V

    .line 234
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/b/b/b/e;->a(J)V

    .line 235
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/b/b/b/e;->b(J)V

    .line 237
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->c()I

    move-result v4

    .line 238
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result v0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object p0

    .line 239
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v4, Lcom/bytedance/sdk/openadsdk/b/b/b/a;

    invoke-direct {v4, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/b/b/c;)V

    .line 242
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->l()Z

    move-result p0

    invoke-virtual {v4, p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;->a(Z)V

    .line 244
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    .line 245
    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "percent"

    .line 246
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->h()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "feed_continue"

    .line 247
    invoke-static {v4, p1, p0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 249
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static b(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;Lcom/bytedance/sdk/openadsdk/b/j;)V
    .locals 10

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 385
    :cond_0
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->e(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V

    .line 387
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o;

    if-nez v0, :cond_1

    return-void

    .line 391
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->d()Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v1

    .line 392
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->e()Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_2

    goto :goto_1

    .line 396
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a()J

    move-result-wide v3

    .line 397
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gtz v9, :cond_3

    return-void

    .line 403
    :cond_3
    new-instance v7, Lcom/bytedance/sdk/openadsdk/b/b/b/f;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/b/b/b/f;-><init>()V

    .line 404
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/b/b/b/f;->b(J)V

    .line 405
    invoke-virtual {v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/b/b/b/f;->a(J)V

    .line 406
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->j()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/b/b/b/f;->a(I)V

    .line 408
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->c()I

    move-result v5

    .line 409
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result v1

    invoke-static {v2, v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v0

    .line 410
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v1

    .line 411
    new-instance v5, Lcom/bytedance/sdk/openadsdk/b/b/b/a;

    invoke-direct {v5, v2, v1, v0, v7}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/b/b/c;)V

    .line 412
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->l()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;->a(Z)V

    .line 415
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "duration"

    .line 416
    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "percent"

    .line 417
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->h()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "feed_over"

    .line 418
    invoke-static {v5, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/j;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 420
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 423
    :goto_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/b/b/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/b/b/b/a<",
            "Lcom/bytedance/sdk/openadsdk/b/b/b/l;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_success"

    .line 108
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Lcom/bykv/vk/openvk/component/video/api/c/c;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->r()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->q()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 548
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->e()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    :cond_2
    return-wide v0
.end method

.method public static c(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V
    .locals 9

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 259
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/b/b/b/o;

    if-nez p0, :cond_1

    return-void

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->d()Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v0

    .line 264
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->e()Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a()J

    move-result-wide v2

    .line 269
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c()J

    move-result-wide v4

    .line 271
    new-instance v6, Lcom/bytedance/sdk/openadsdk/b/b/b/n;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/b/b/b/n;-><init>()V

    .line 272
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/b/b/b/n;->a(J)V

    .line 273
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/b/b/b/n;->b(J)V

    .line 274
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->d()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/b/b/b/n;->a(I)V

    .line 275
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->e()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/b/b/b/n;->b(I)V

    .line 277
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->c()I

    move-result v4

    .line 278
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result v0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object p0

    .line 279
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v4, Lcom/bytedance/sdk/openadsdk/b/b/b/a;

    invoke-direct {v4, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/b/b/c;)V

    .line 282
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->l()Z

    move-result p0

    invoke-virtual {v4, p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;->a(Z)V

    .line 285
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    .line 286
    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "percent"

    .line 287
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->h()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "play_error"

    .line 288
    invoke-static {v4, p1, p0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 290
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static c(Lcom/bytedance/sdk/openadsdk/b/b/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/b/b/b/a<",
            "Lcom/bytedance/sdk/openadsdk/b/b/b/j;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_error"

    .line 113
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Lcom/bykv/vk/openvk/component/video/api/c/c;)Ljava/lang/String;
    .locals 2

    .line 554
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->k()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V
    .locals 10

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 300
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/b/b/b/o;

    if-nez v0, :cond_1

    return-void

    .line 304
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->d()Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v1

    .line 305
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->e()Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v2

    if-eqz v1, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    .line 309
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->a()J

    move-result-wide v3

    .line 310
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c()J

    move-result-wide v5

    .line 313
    new-instance v7, Lcom/bytedance/sdk/openadsdk/b/b/b/b;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/b/b/b/b;-><init>()V

    .line 314
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/b/b/b/b;->a(J)V

    .line 315
    invoke-virtual {v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/b/b/b/b;->b(J)V

    .line 316
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->f()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/b/b/b/b;->a(I)V

    .line 317
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->g()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/b/b/b/b;->b(I)V

    .line 319
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->c()I

    move-result v5

    .line 320
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result v1

    invoke-static {v2, v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v0

    .line 321
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v1

    .line 323
    new-instance v5, Lcom/bytedance/sdk/openadsdk/b/b/b/a;

    invoke-direct {v5, v2, v1, v0, v7}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/b/b/c;)V

    .line 324
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->l()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;->a(Z)V

    .line 326
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "duration"

    .line 327
    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "percent"

    .line 328
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->h()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "endcard_skip"

    .line 329
    invoke-static {v5, p1, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 331
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 334
    :goto_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/b/b/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/b/b/b/a<",
            "Lcom/bytedance/sdk/openadsdk/b/b/b/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_cancel"

    .line 118
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;)V
    .locals 7

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->k()I

    move-result v0

    if-gtz v0, :cond_1

    const-string p0, "VideoEventManager"

    const-string p1, "Cancel log report when buffer count is 0"

    .line 434
    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 437
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/b/b/b/o;

    if-nez p0, :cond_2

    return-void

    .line 441
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->d()Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v0

    .line 442
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->e()Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_3

    goto :goto_0

    .line 446
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_4

    return-void

    .line 452
    :cond_4
    new-instance v4, Lcom/bytedance/sdk/openadsdk/b/b/b/m;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/b/b/b/m;-><init>()V

    .line 453
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->b()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/b/b/b/m;->a(J)V

    .line 454
    invoke-virtual {v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/b/b/m;->b(J)V

    .line 455
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->k()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/m;->a(I)V

    .line 457
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->c()I

    move-result v2

    .line 458
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/o;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result v0

    invoke-static {v1, p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object p0

    .line 459
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v0

    .line 460
    new-instance v2, Lcom/bytedance/sdk/openadsdk/b/b/b/a;

    invoke-direct {v2, v1, v0, p0, v4}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/b/b/c;)V

    .line 461
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/b/b/o$a;->l()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;->a(Z)V

    const-string p0, "play_buffer"

    .line 462
    invoke-static {v2, p0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
