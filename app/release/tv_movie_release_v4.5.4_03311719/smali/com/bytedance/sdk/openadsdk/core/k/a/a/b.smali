.class public Lcom/bytedance/sdk/openadsdk/core/k/a/a/b;
.super Ljava/lang/Object;
.source "InLineParser.java"


# direct methods
.method public static a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;ID)Lcom/bytedance/sdk/openadsdk/core/k/a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/k/b/c;",
            ">;ID)",
            "Lcom/bytedance/sdk/openadsdk/core/k/a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->f:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "InLine"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;-><init>()V

    .line 32
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v9, 0x3

    if-ne v3, v9, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a()Lcom/bytedance/sdk/openadsdk/core/k/d;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/k/d;->j(Ljava/util/List;)V

    .line 72
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_4

    goto :goto_0

    .line 36
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    .line 37
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v5, "Impression"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_1
    const-string v5, "AdTitle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_2
    const-string v5, "Error"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_3
    const-string v5, "Description"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_4
    const-string v5, "Creatives"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x4

    :cond_5
    :goto_2
    if-eqz v4, :cond_d

    if-eq v4, v7, :cond_c

    if-eq v4, v1, :cond_b

    if-eq v4, v9, :cond_a

    if-eq v4, v6, :cond_6

    .line 68
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 51
    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->c()Lcom/bytedance/sdk/openadsdk/core/k/c;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 52
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 54
    :cond_7
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v9, :cond_0

    .line 55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_8

    goto :goto_3

    .line 58
    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Creative"

    .line 59
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move v6, p3

    move-wide v7, p4

    .line 60
    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/b;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/bytedance/sdk/openadsdk/core/k/a;ID)V

    goto :goto_3

    .line 62
    :cond_9
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    .line 48
    :cond_a
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a()Lcom/bytedance/sdk/openadsdk/core/k/d;

    move-result-object v4

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/k/d;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 45
    :cond_b
    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 42
    :cond_c
    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/k/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39
    :cond_d
    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64e1597c -> :sswitch_4
        -0x360d424 -> :sswitch_3
        0x401e1e8 -> :sswitch_2
        0x1deadbd5 -> :sswitch_1
        0x7e026e29 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/bytedance/sdk/openadsdk/core/k/a;ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 80
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 81
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linear"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/k/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-static {p1, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/bytedance/sdk/openadsdk/core/k/a;ID)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompanionAds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/k/a;->c()Lcom/bytedance/sdk/openadsdk/core/k/c;

    move-result-object v0

    if-nez v0, :cond_2

    .line 87
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/a;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/bytedance/sdk/openadsdk/core/k/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a(Lcom/bytedance/sdk/openadsdk/core/k/c;)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    return-void
.end method
