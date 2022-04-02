.class Lcom/bytedance/sdk/openadsdk/core/j/d$1;
.super Lcom/bytedance/sdk/component/f/a/a;
.source "SdkSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/j/d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/j/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/j/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/j/d;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/f/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/f/b/c;Lcom/bytedance/sdk/component/f/b;)V
    .locals 5

    const/4 p1, 0x5

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->d()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    check-cast v1, Lorg/json/JSONException;

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "cxrkaw"

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/ac;->ac1648021086452dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string v0, "mdqpebc"

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    const-string v3, "SeiPaqrnfnyCia~jb"

    invoke-static {v3}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sdvwmka\'lh~j,h|}\u007fc )4"

    invoke-static {v4}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/bytedance/sdk/component/utils/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->c()Ljava/util/Map;

    move-result-object p2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/j/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/j/d;

    invoke-static {v2, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/j/d;->a(Lcom/bytedance/sdk/openadsdk/core/j/d;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :try_start_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/j/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/j/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/j/d;->a(Lcom/bytedance/sdk/openadsdk/core/j/d;)Lcom/bytedance/sdk/openadsdk/core/j/b;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/j/b;->a(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/j/d;->e()Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez p2, :cond_3

    const/16 p2, 0xb

    const/16 v0, 0xb

    goto :goto_4

    :cond_1
    :try_start_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/j/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/j/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/j/d;->a(Lcom/bytedance/sdk/openadsdk/core/j/d;)Lcom/bytedance/sdk/openadsdk/core/j/b;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/j/b;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/16 p2, 0x40

    const/4 v0, 0x5

    :goto_2
    packed-switch p2, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const/4 p2, 0x4

    if-eq v0, p2, :cond_2

    if-eq v0, p1, :cond_5

    const/4 p1, 0x6

    :cond_2
    :pswitch_1
    const/4 p1, 0x1

    :try_start_5
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/j/d;->b(Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    nop

    :cond_3
    :goto_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/j/d;->b()V

    :cond_4
    return-void

    :goto_4
    const/16 p2, 0x3f

    goto :goto_2

    :catchall_3
    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/j/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/j/d;->a(Lcom/bytedance/sdk/openadsdk/core/j/d;)Lcom/bytedance/sdk/openadsdk/core/j/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/j/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
