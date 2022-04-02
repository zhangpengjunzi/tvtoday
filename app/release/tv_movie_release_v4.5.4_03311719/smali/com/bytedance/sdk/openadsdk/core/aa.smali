.class public Lcom/bytedance/sdk/openadsdk/core/aa;
.super Ljava/lang/Object;
.source "WebHelper.java"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .line 187
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_0

    if-eqz p5, :cond_2

    .line 188
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    invoke-static {p2, p7}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Z)Z

    move-result p7

    const-string v1, "ad_pending_download"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/f/p;->c(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object p7

    .line 192
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string p1, "?"

    .line 195
    invoke-virtual {p7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, "&orientation=portrait"

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 198
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, "?orientation=portrait"

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result p7

    const/4 v0, 0x3

    if-ne p7, v0, :cond_4

    .line 202
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->f()I

    move-result p7

    const/4 v0, 0x2

    if-eq p7, v0, :cond_3

    .line 203
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->f()I

    move-result p7

    const/4 v0, 0x1

    if-ne p7, v0, :cond_4

    sget-boolean p7, Lcom/bytedance/sdk/openadsdk/core/aa;->a:Z

    if-eqz p7, :cond_4

    :cond_3
    iget-boolean p7, p2, Lcom/bytedance/sdk/openadsdk/core/f/n;->a:Z

    if-nez p7, :cond_4

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-class p7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;

    invoke-direct {v0, p0, p7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 207
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class p7, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    invoke-direct {v0, p0, p7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_5
    :goto_0
    const-string p7, "url"

    .line 209
    invoke-virtual {v0, p7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->af()Ljava/lang/String;

    move-result-object p1

    const-string p7, "gecko_id"

    invoke-virtual {v0, p7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->U()Ljava/lang/String;

    move-result-object p1

    const-string p7, "web_title"

    invoke-virtual {v0, p7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x1132

    const-string p7, "sdk_version"

    .line 212
    invoke-virtual {v0, p7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object p1

    const-string p7, "adid"

    invoke-virtual {v0, p7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object p1

    const-string p7, "log_extra"

    invoke-virtual {v0, p7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object p1

    const/4 p7, 0x0

    if-nez p1, :cond_6

    move-object p1, p7

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v1, "icon_url"

    .line 216
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "event_tag"

    .line 217
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "source"

    .line 218
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_7

    const/high16 p0, 0x10000000

    .line 220
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 223
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 224
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ar()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "multi_process_materialmeta"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 226
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/v;->a()Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/v;->h()V

    .line 227
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/v;->a()Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    .line 230
    :goto_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ad()I

    move-result p0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_9

    .line 231
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ad()I

    move-result p0

    const/16 p1, 0xf

    if-eq p0, p1, :cond_9

    .line 232
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ad()I

    move-result p0

    const/16 p1, 0x32

    if-ne p0, p1, :cond_d

    :cond_9
    const-string p0, "multi_process_data"

    if-eqz p4, :cond_b

    .line 235
    instance-of p1, p4, Lcom/bytedance/sdk/openadsdk/multipro/b/a$a;

    if-eqz p1, :cond_a

    .line 236
    check-cast p4, Lcom/bytedance/sdk/openadsdk/multipro/b/a$a;

    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/multipro/b/a$a;->f()Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    move-result-object p7

    :cond_a
    if-eqz p7, :cond_b

    .line 239
    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b
    if-eqz p5, :cond_c

    .line 243
    invoke-interface {p5}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getVideoModel()Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    move-result-object p7

    if-eqz p7, :cond_c

    .line 245
    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_c
    if-eqz p7, :cond_d

    .line 249
    iget-boolean p0, p7, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->d:Z

    const-string p1, "video_is_auto_play"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    invoke-static {}, Lcom/bytedance/sdk/component/utils/l;->c()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 251
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "videoDataModel="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "videoDataModel"

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-object v0
.end method

.method public static a(Z)V
    .locals 0

    .line 39
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/aa;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/com/bytedance/overseas/sdk/a/c;Z)Z
    .locals 14

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p5

    const/4 v0, 0x0

    if-eqz v6, :cond_f

    if-eqz v7, :cond_f

    const/4 v1, -0x1

    move/from16 v3, p2

    if-ne v3, v1, :cond_0

    goto/16 :goto_4

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ab()Lcom/bytedance/sdk/openadsdk/core/f/h;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 51
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/h;->a()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v4, :cond_6

    .line 53
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/h;->a()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 55
    new-instance v11, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v11, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v11, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/k/t;->l(Landroid/content/Context;)Z

    move-result v4

    const/high16 v5, 0x10000000

    const-string v12, "open_url_app"

    if-eqz v4, :cond_3

    .line 59
    invoke-static {p0, v11}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/j/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-static {p1, v8}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    .line 65
    :cond_1
    instance-of v0, v6, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 66
    invoke-virtual {v11, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    :cond_2
    new-instance v13, Lcom/bytedance/sdk/openadsdk/core/aa$1;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/aa$1;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;ILjava/lang/String;Z)V

    invoke-static {p0, v11, v13}, Lcom/bytedance/sdk/component/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/b$a;)Z

    .line 82
    invoke-static {p0, p1, v8, v12, v10}, Lcom/bytedance/sdk/openadsdk/b/e;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/p;->a()Lcom/bytedance/sdk/openadsdk/b/p;

    move-result-object v0

    invoke-virtual {v0, p1, v8}, Lcom/bytedance/sdk/openadsdk/b/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    return v9

    .line 89
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/j/f;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    invoke-static {p1, v8}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    .line 92
    :cond_4
    instance-of v2, v6, Landroid/app/Activity;

    if-nez v2, :cond_5

    .line 93
    invoke-virtual {v11, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    :cond_5
    invoke-static {p0, p1, v8, v12, v10}, Lcom/bytedance/sdk/openadsdk/b/e;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 97
    invoke-virtual {p0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/p;->a()Lcom/bytedance/sdk/openadsdk/b/p;

    move-result-object v2

    invoke-virtual {v2, p1, v8}, Lcom/bytedance/sdk/openadsdk/b/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v9

    .line 101
    :catchall_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->O()Ljava/lang/String;

    move-result-object v2

    .line 108
    :cond_6
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/h;->c()I

    move-result v4

    const/4 v5, 0x2

    const-string v11, "open_fallback_url"

    if-ne v4, v5, :cond_9

    .line 109
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ad()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_9

    .line 110
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ad()I

    move-result v4

    const/16 v5, 0xf

    if-eq v4, v5, :cond_9

    if-eqz p6, :cond_b

    .line 112
    invoke-interface/range {p6 .. p6}, Lcom/com/bytedance/overseas/sdk/a/c;->a()Z

    move-result v1

    if-nez v1, :cond_8

    .line 113
    invoke-interface/range {p6 .. p6}, Lcom/com/bytedance/overseas/sdk/a/c;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 114
    invoke-static {p0, p1, v8, v11, v10}, Lcom/bytedance/sdk/openadsdk/b/e;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v9

    .line 121
    :cond_7
    invoke-static {p0, p1, v8, v11, v10}, Lcom/bytedance/sdk/openadsdk/b/e;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v0

    .line 118
    :cond_8
    invoke-static {p0, p1, v8, v11, v10}, Lcom/bytedance/sdk/openadsdk/b/e;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v9

    .line 124
    :cond_9
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/h;->c()I

    move-result v0

    if-ne v0, v9, :cond_a

    .line 125
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/h;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 127
    :cond_a
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->O()Ljava/lang/String;

    move-result-object v2

    .line 130
    :cond_b
    :goto_0
    invoke-static {p0, p1, v8, v11, v10}, Lcom/bytedance/sdk/openadsdk/b/e;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v9, v2

    goto :goto_3

    .line 132
    :cond_c
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aw()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_1

    .line 136
    :cond_d
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ax()Lcom/bytedance/sdk/openadsdk/core/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 134
    :cond_e
    :goto_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->O()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v9, v0

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    move-object v7, v9

    .line 140
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    :cond_f
    :goto_4
    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 11

    move-object v8, p0

    .line 144
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v9

    .line 145
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result v0

    const/4 v1, 0x2

    const/4 v10, 0x0

    if-ne v0, v1, :cond_4

    .line 146
    invoke-static/range {p7 .. p7}, Lcom/bytedance/sdk/component/utils/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v9

    .line 149
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    :try_start_0
    invoke-static/range {p7 .. p7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    instance-of v1, v8, Landroid/app/Activity;

    if-nez v1, :cond_3

    const/high16 v1, 0x10000000

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    :cond_3
    invoke-static {p0, v0, v10}, Lcom/bytedance/sdk/component/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/b$a;)Z

    goto :goto_1

    :catch_0
    return v9

    :cond_4
    move-object v0, p0

    move-object/from16 v1, p7

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 161
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 162
    invoke-static {p0, v0, v10}, Lcom/bytedance/sdk/component/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/b$a;)Z

    .line 163
    sput-boolean v9, Lcom/bytedance/sdk/openadsdk/core/aa;->a:Z

    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;ILjava/lang/String;Z)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move v7, p5

    .line 174
    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 175
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/f/n;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_3

    .line 262
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->L()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method
