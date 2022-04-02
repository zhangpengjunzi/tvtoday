.class public Lcom/bytedance/sdk/openadsdk/core/f/p;
.super Ljava/lang/Object;
.source "PlayableModel.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "playable"

    .line 74
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "playable_url"

    const-string v3, ""

    .line 76
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/p;->d:Ljava/lang/String;

    const-string v2, "playable_orientation"

    .line 80
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/p;->e:I

    :cond_1
    const-string v0, "is_playable"

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/p;->a:Z

    const-string v0, "playable_type"

    .line 83
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/p;->b:I

    const-string v0, "playable_style"

    .line 84
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/p;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z
    .locals 2

    .line 129
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->k(Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/bytedance/sdk/openadsdk/core/f/p;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 133
    :cond_0
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/p;->a:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->d(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;
    .locals 0

    .line 164
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->k(Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/bytedance/sdk/openadsdk/core/f/p;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 168
    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/f/p;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;
    .locals 0

    .line 176
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->k(Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/bytedance/sdk/openadsdk/core/f/p;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/f/p;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 192
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->c(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->c(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->i()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static e(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static f(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->q()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static g(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->q()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static h(Lcom/bytedance/sdk/openadsdk/core/f/n;)I
    .locals 0

    .line 267
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->k(Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/bytedance/sdk/openadsdk/core/f/p;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 271
    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/f/p;->e:I

    return p0
.end method

.method public static i(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z
    .locals 2

    .line 278
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->l(Lcom/bytedance/sdk/openadsdk/core/f/n;)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static j(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z
    .locals 1

    .line 285
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->l(Lcom/bytedance/sdk/openadsdk/core/f/n;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static k(Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/bytedance/sdk/openadsdk/core/f/p;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->e()Lcom/bytedance/sdk/openadsdk/core/f/p;

    move-result-object p0

    return-object p0
.end method

.method private static l(Lcom/bytedance/sdk/openadsdk/core/f/n;)I
    .locals 0

    .line 153
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->k(Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/bytedance/sdk/openadsdk/core/f/p;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 157
    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/f/p;->b:I

    return p0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "is_playable"

    .line 89
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/p;->a:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/p;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "playable_url"

    .line 96
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playable_orientation"

    .line 100
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/p;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "playable"

    .line 101
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    :try_start_2
    const-string v0, "playable_type"

    .line 107
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/p;->b:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 109
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    :try_start_3
    const-string v0, "playable_style"

    .line 112
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/p;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 114
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void
.end method
