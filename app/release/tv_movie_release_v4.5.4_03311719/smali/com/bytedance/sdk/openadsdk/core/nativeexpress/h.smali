.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;
.super Ljava/lang/Object;
.source "ExpressEventManager.java"


# direct methods
.method private static a(Ljava/lang/String;)I
    .locals 5

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "draw_ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "interaction"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "embeded_ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "fullscreen_interstitial_ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "open_ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "rewarded_video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "banner_ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    return v2

    :pswitch_1
    return v3

    :pswitch_2
    return v4

    :pswitch_3
    const/16 p0, 0x8

    return p0

    :pswitch_4
    const/4 p0, 0x7

    return p0

    :pswitch_5
    const/16 p0, 0x9

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x65146dea -> :sswitch_6
        -0x514cfef6 -> :sswitch_5
        -0x4b4ad1c8 -> :sswitch_4
        -0x2d935a6e -> :sswitch_3
        -0x2a77c376 -> :sswitch_2
        0x6deace12 -> :sswitch_1
        0x72060cfe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/b;->b()Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object v0

    .line 30
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(I)Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object p1

    .line 31
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/k/t;->g(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object p1

    .line 32
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/g/a/b;->b(I)Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object p1

    .line 33
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/g/a/b;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object p0

    .line 34
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/b;->a()Lcom/bytedance/sdk/openadsdk/g/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/g/b;->b(Lcom/bytedance/sdk/openadsdk/g/a/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 1

    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/b;->b()Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object v0

    .line 17
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(I)Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/b;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object p0

    .line 18
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/k/t;->g(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/b;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object p0

    const-string p1, "dynamic_backup_render_new"

    .line 19
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object p0

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/b;->a()Lcom/bytedance/sdk/openadsdk/g/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/g/b;->a(Lcom/bytedance/sdk/openadsdk/g/a/b;)V

    return-void
.end method
