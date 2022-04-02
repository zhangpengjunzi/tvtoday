.class public Lcom/bytedance/sdk/openadsdk/core/k/a;
.super Ljava/lang/Object;
.source "VastAdConfig.java"


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/core/k/d;

.field b:Lcom/bytedance/sdk/openadsdk/core/k/b;

.field c:Lcom/bytedance/sdk/openadsdk/core/k/c;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:D

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k/d;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/k/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/k/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->a:Lcom/bytedance/sdk/openadsdk/core/k/d;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/k/a;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;-><init>()V

    .line 175
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/k/a;->a:Lcom/bytedance/sdk/openadsdk/core/k/d;

    const-string v2, "videoTrackers"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/k/d;->a(Lorg/json/JSONObject;)V

    const-string v1, "vastIcon"

    .line 176
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/k/b;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/k/b;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/k/a;->b:Lcom/bytedance/sdk/openadsdk/core/k/b;

    const-string v1, "endCard"

    .line 177
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/k/c;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/k/c;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/k/a;->c:Lcom/bytedance/sdk/openadsdk/core/k/c;

    const-string v1, "title"

    .line 178
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/k/a;->d:Ljava/lang/String;

    const-string v1, "description"

    .line 179
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/k/a;->e:Ljava/lang/String;

    const-string v1, "clickThroughUrl"

    .line 180
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/k/a;->f:Ljava/lang/String;

    const-string v1, "videoUrl"

    .line 181
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/k/a;->g:Ljava/lang/String;

    const-string v1, "videDuration"

    .line 182
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/k/a;->h:D

    const-string v1, "tag"

    .line 183
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/k/a;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/k/d;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->a:Lcom/bytedance/sdk/openadsdk/core/k/d;

    return-object v0
.end method

.method public a(D)V
    .locals 0

    .line 114
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->h:D

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->a:Lcom/bytedance/sdk/openadsdk/core/k/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/k/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/k/b;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/k/b;->a(Ljava/lang/String;)V

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->b:Lcom/bytedance/sdk/openadsdk/core/k/b;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/k/c;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/k/c;->a(Ljava/lang/String;)V

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->c:Lcom/bytedance/sdk/openadsdk/core/k/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/core/k/b;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->b:Lcom/bytedance/sdk/openadsdk/core/k/b;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->e:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/core/k/c;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->c:Lcom/bytedance/sdk/openadsdk/core/k/c;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->g:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->j:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 196
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->i:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->a:Lcom/bytedance/sdk/openadsdk/core/k/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/k/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()D
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->h:D

    return-wide v0
.end method

.method public i()Ljava/lang/String;
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->f:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, -0x1

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x157d1974

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x1efe4ca7

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "VAST_END_CARD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "VAST_ICON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_4

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->f:Ljava/lang/String;

    return-object v0

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->c:Lcom/bytedance/sdk/openadsdk/core/k/c;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/k/c;->h:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->f:Ljava/lang/String;

    :goto_1
    return-object v0

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->b:Lcom/bytedance/sdk/openadsdk/core/k/b;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/k/b;->h:Ljava/lang/String;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->f:Ljava/lang/String;

    :goto_2
    return-object v0
.end method

.method public j()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 148
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->a:Lcom/bytedance/sdk/openadsdk/core/k/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/k/d;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "videoTrackers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->b:Lcom/bytedance/sdk/openadsdk/core/k/b;

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/k/b;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "vastIcon"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->c:Lcom/bytedance/sdk/openadsdk/core/k/c;

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/k/c;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "endCard"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->d:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->e:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->f:Ljava/lang/String;

    const-string v2, "clickThroughUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->g:Ljava/lang/String;

    const-string v2, "videoUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->h:D

    const-string v3, "videDuration"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 161
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->i:Ljava/lang/String;

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/a;->i:Ljava/lang/String;

    return-object v0
.end method
