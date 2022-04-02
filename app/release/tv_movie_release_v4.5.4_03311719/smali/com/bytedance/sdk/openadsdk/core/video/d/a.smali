.class public Lcom/bytedance/sdk/openadsdk/core/video/d/a;
.super Ljava/lang/Object;
.source "VideoPreloadFactory.java"


# static fields
.field public static final a:Lcom/bykv/vk/openvk/component/video/api/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/bykv/vk/openvk/component/video/a/a/b/a;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/component/video/a/a/b/a;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a:Lcom/bykv/vk/openvk/component/video/api/e/a;

    return-void
.end method

.method public static a(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bykv/vk/openvk/component/video/api/e/a$a;)V
    .locals 13

    .line 44
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->b()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x1770

    .line 47
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->d(I)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->e(I)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->f(I)V

    const-string v0, "material_meta"

    .line 51
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const-string v4, "ad_slot"

    .line 52
    invoke-virtual {p0, v4}, Lcom/bykv/vk/openvk/component/video/api/c/c;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v4}, Lcom/bykv/vk/openvk/component/video/api/c/c;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    :cond_4
    const/4 v5, 0x0

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 56
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 57
    invoke-virtual {p0, v4}, Lcom/bykv/vk/openvk/component/video/api/c/c;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 58
    invoke-static {p0, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->b(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_1

    :cond_5
    move-object v0, v5

    .line 62
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 65
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/d/a$1;

    move-object v6, v4

    move-object v7, p1

    move-object v8, v5

    move-object v9, v0

    move-wide v10, v1

    move-object v12, p0

    invoke-direct/range {v6 .. v12}, Lcom/bytedance/sdk/openadsdk/core/video/d/a$1;-><init>(Lcom/bykv/vk/openvk/component/video/api/e/a$a;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;JLcom/bykv/vk/openvk/component/video/api/c/c;)V

    .line 104
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->j()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz p1, :cond_6

    const/16 v3, 0x194

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected url: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, p0, v3, v4}, Lcom/bykv/vk/openvk/component/video/api/e/a$a;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;ILjava/lang/String;)V

    .line 108
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v9, v3, v1

    const/4 v11, -0x1

    const-string v12, "video url is invalid"

    move-object v6, p0

    move-object v7, v5

    move-object v8, v0

    .line 109
    invoke-static/range {v6 .. v12}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->b(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;JILjava/lang/String;)V

    return-void

    .line 113
    :cond_7
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result p1

    if-ne p1, v3, :cond_8

    goto :goto_2

    .line 117
    :cond_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_9

    .line 119
    :try_start_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a:Lcom/bykv/vk/openvk/component/video/api/e/a;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0, p0, v4}, Lcom/bykv/vk/openvk/component/video/api/e/a;->a(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bykv/vk/openvk/component/video/api/e/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 124
    :cond_9
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/f/a;->a()Lcom/bykv/vk/openvk/component/video/a/b/f/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)Z

    :catch_0
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->c(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method static synthetic a(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->b(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V

    return-void
.end method

.method static synthetic a(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;JILjava/lang/String;)V
    .locals 0

    .line 32
    invoke-static/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->b(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;JILjava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/bykv/vk/openvk/component/video/api/c/c;)Z
    .locals 2

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 8

    .line 213
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v5, "ws:"

    move-object v2, p0

    .line 216
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const-string v5, "wss:"

    move-object v2, p0

    .line 218
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 222
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/b/a/f;->c(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/f;

    move-result-object p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 5

    .line 143
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->g()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->b()I

    move-result v0

    int-to-long v0, v0

    .line 147
    :goto_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/k/t;->b(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 148
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result v4

    invoke-static {p1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v2

    .line 149
    new-instance v3, Lcom/bytedance/sdk/openadsdk/b/b/b/k;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->j()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/k;-><init>(Ljava/lang/String;J)V

    .line 150
    new-instance p0, Lcom/bytedance/sdk/openadsdk/b/b/b/a;

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/b/b/c;)V

    .line 151
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/b/b/a;)V

    return-void
.end method

.method private static b(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V
    .locals 4

    .line 176
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/k/t;->b(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 180
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/b/b/l;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/l;-><init>()V

    .line 182
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/l;->a(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->b()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/b/b/l;->a(J)V

    .line 184
    invoke-virtual {v1, p3, p4}, Lcom/bytedance/sdk/openadsdk/b/b/b/l;->b(J)V

    .line 185
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->p()I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_1

    const-wide/16 p3, 0x1

    .line 186
    invoke-virtual {v1, p3, p4}, Lcom/bytedance/sdk/openadsdk/b/b/b/l;->c(J)V

    goto :goto_0

    :cond_1
    const-wide/16 p3, 0x0

    .line 188
    invoke-virtual {v1, p3, p4}, Lcom/bytedance/sdk/openadsdk/b/b/b/l;->c(J)V

    .line 191
    :goto_0
    new-instance p0, Lcom/bytedance/sdk/openadsdk/b/b/b/a;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/b/b/c;)V

    .line 192
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->b(Lcom/bytedance/sdk/openadsdk/b/b/b/a;)V

    return-void
.end method

.method private static b(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;JILjava/lang/String;)V
    .locals 4

    .line 157
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/k/t;->b(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 161
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v0

    .line 162
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/b/b/j;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/j;-><init>()V

    .line 163
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/b/j;->a(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->b()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/b/b/j;->a(J)V

    .line 165
    invoke-virtual {v1, p3, p4}, Lcom/bytedance/sdk/openadsdk/b/b/b/j;->b(J)V

    .line 166
    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/b/b/b/j;->a(I)V

    .line 167
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string p3, ""

    if-eqz p0, :cond_1

    move-object p6, p3

    :cond_1
    invoke-virtual {v1, p6}, Lcom/bytedance/sdk/openadsdk/b/b/b/j;->b(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1, p3}, Lcom/bytedance/sdk/openadsdk/b/b/b/j;->c(Ljava/lang/String;)V

    .line 169
    new-instance p0, Lcom/bytedance/sdk/openadsdk/b/b/b/a;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/b/b/c;)V

    .line 170
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->c(Lcom/bytedance/sdk/openadsdk/b/b/b/a;)V

    return-void
.end method

.method private static c(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 5

    .line 198
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/k/t;->b(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 202
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->l()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/b/b/i;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->b()I

    move-result p0

    int-to-long v3, p0

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/b/b/b/i;-><init>(Ljava/lang/String;J)V

    .line 204
    new-instance p0, Lcom/bytedance/sdk/openadsdk/b/b/b/a;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/b/b/c;)V

    .line 205
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/b/b/a/a;->d(Lcom/bytedance/sdk/openadsdk/b/b/b/a;)V

    return-void
.end method
