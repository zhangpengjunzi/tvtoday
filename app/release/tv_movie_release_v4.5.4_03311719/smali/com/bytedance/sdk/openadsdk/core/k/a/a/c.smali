.class public Lcom/bytedance/sdk/openadsdk/core/k/a/a/c;
.super Ljava/lang/Object;
.source "LinearParser.java"


# direct methods
.method public static a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/bytedance/sdk/openadsdk/core/k/b;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 104
    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const-string v4, "Icons"

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    return-object v2

    .line 105
    :cond_2
    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 106
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    goto/16 :goto_10

    .line 109
    :cond_3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "Icon"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 110
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->f:Ljava/lang/String;

    const-string v8, "width"

    invoke-interface {v0, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Ljava/lang/String;)I

    move-result v9

    .line 111
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->f:Ljava/lang/String;

    const-string v8, "height"

    invoke-interface {v0, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Ljava/lang/String;)I

    move-result v10

    if-lez v9, :cond_19

    const/16 v3, 0x12c

    if-gt v9, v3, :cond_19

    if-lez v10, :cond_19

    if-le v10, v3, :cond_4

    goto/16 :goto_f

    .line 116
    :cond_4
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->f:Ljava/lang/String;

    const-string v8, "offset"

    invoke-interface {v0, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/k/b/a;->a(Ljava/lang/String;)I

    move-result v3

    .line 117
    sget-object v8, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->f:Ljava/lang/String;

    const-string v11, "duration"

    invoke-interface {v0, v8, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/k/b/a;->a(Ljava/lang/String;)I

    move-result v8

    .line 118
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 119
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/16 v20, 0x0

    .line 122
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    if-ne v12, v5, :cond_6

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v11, :cond_0

    .line 180
    iget-object v6, v11, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d$a;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 181
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/k/b;

    int-to-long v6, v3

    move-wide/from16 v16, v6

    int-to-long v5, v8

    iget-object v3, v11, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d$a;->b:Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    iget-object v7, v11, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d$a;->c:Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;

    iget-object v14, v11, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d$a;->a:Ljava/lang/String;

    move-object v8, v2

    move-wide/from16 v11, v16

    move-object/from16 v19, v13

    move-object/from16 v17, v14

    move-wide v13, v5

    move-object v5, v15

    move-object v15, v3

    move-object/from16 v16, v7

    move-object/from16 v18, v5

    invoke-direct/range {v8 .. v20}, Lcom/bytedance/sdk/openadsdk/core/k/b;-><init>(IIJJLcom/bytedance/sdk/openadsdk/core/k/c/a$a;Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 182
    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    :goto_3
    move-object/from16 v19, v13

    move-object v5, v15

    .line 123
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    if-eq v12, v6, :cond_7

    move-object v15, v5

    move-object/from16 v13, v19

    const/4 v5, 0x3

    goto :goto_2

    .line 126
    :cond_7
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v14

    const-string v15, "HTMLResource"

    const-string v1, "IconClicks"

    const-string v13, "StaticResource"

    const-string v6, "IFrameResource"

    move-object/from16 v21, v2

    const-string v2, "IconViewTracking"

    move/from16 v22, v3

    const/4 v3, 0x1

    sparse-switch v14, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    goto :goto_5

    :sswitch_1
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x3

    goto :goto_5

    :sswitch_2
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x2

    goto :goto_5

    :sswitch_3
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    goto :goto_5

    :sswitch_4
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x4

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v12, -0x1

    :goto_5
    if-eqz v12, :cond_16

    if-eq v12, v3, :cond_14

    const/4 v3, 0x2

    if-eq v12, v3, :cond_10

    const/4 v3, 0x3

    if-eq v12, v3, :cond_a

    const/4 v3, 0x4

    if-eq v12, v3, :cond_9

    .line 176
    invoke-static/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v2, v19

    goto :goto_6

    .line 173
    :cond_9
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/k/b/c$a;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/k/b/c$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/k/b/c$a;->a()Lcom/bytedance/sdk/openadsdk/core/k/b/c;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    const/4 v12, 0x3

    goto :goto_8

    :cond_a
    move-object/from16 v2, v19

    .line 161
    :cond_b
    :goto_7
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v12, 0x3

    if-ne v3, v12, :cond_d

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v14, 0x2

    goto/16 :goto_e

    .line 162
    :cond_d
    :goto_9
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v14, 0x2

    if-eq v3, v14, :cond_e

    goto :goto_7

    .line 165
    :cond_e
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "IconClickThrough"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 166
    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto :goto_7

    .line 167
    :cond_f
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "IconClickTracking"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 168
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/k/b/c$a;

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/k/b/c$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/k/b/c$a;->a()Lcom/bytedance/sdk/openadsdk/core/k/b/c;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    move-object/from16 v2, v19

    const/4 v12, 0x3

    const/4 v14, 0x2

    .line 146
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;->a:Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    .line 147
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->f:Ljava/lang/String;

    const-string v3, "creativeType"

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 148
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/k/c/a;->a:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/k/c/a;->b:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_a

    :cond_11
    const/4 v3, 0x0

    goto :goto_b

    .line 149
    :cond_12
    :goto_a
    invoke-static {v0, v13}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    :goto_b
    sget-object v6, Lcom/bytedance/sdk/openadsdk/core/k/c/a;->a:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 152
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;->b:Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    goto :goto_c

    .line 154
    :cond_13
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;->c:Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    .line 156
    :goto_c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 157
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d$a;

    sget-object v11, Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;->b:Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;

    invoke-direct {v6, v3, v1, v11}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d$a;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;)V

    move-object v11, v6

    goto :goto_e

    :cond_14
    move-object/from16 v2, v19

    const/4 v12, 0x3

    const/4 v14, 0x2

    if-eqz v11, :cond_15

    .line 138
    invoke-static/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_e

    .line 140
    :cond_15
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d$a;

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;->a:Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    sget-object v11, Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;->c:Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;

    invoke-direct {v1, v3, v6, v11}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d$a;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;)V

    goto :goto_d

    :cond_16
    move-object/from16 v2, v19

    const/4 v12, 0x3

    const/4 v14, 0x2

    if-eqz v11, :cond_17

    .line 129
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d$a;->c:Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;->c:Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;

    if-eq v1, v3, :cond_17

    .line 130
    invoke-static/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_e

    .line 132
    :cond_17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d$a;

    invoke-static {v0, v15}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;->a:Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;

    sget-object v11, Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;->a:Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;

    invoke-direct {v1, v3, v6, v11}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d$a;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/k/c/a$a;Lcom/bytedance/sdk/openadsdk/core/k/c/a$b;)V

    :goto_d
    move-object v11, v1

    :cond_18
    :goto_e
    move-object v13, v2

    move-object v15, v5

    move-object/from16 v2, v21

    move/from16 v3, v22

    const/4 v5, 0x3

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_19
    :goto_f
    move-object/from16 v21, v2

    .line 113
    invoke-static/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_11

    :cond_1a
    :goto_10
    move-object/from16 v21, v2

    :goto_11
    move-object/from16 v2, v21

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x3e3dd04b -> :sswitch_4
        -0x165f3d2e -> :sswitch_3
        0x285474bc -> :sswitch_2
        0x3d6ff1e4 -> :sswitch_1
        0x72ef4cd9 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;ID)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object v0, p0

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v3, 0x0

    .line 78
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MediaFiles"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    return-object v3

    .line 79
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 82
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MediaFile"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->f:Ljava/lang/String;

    const-string v6, "type"

    invoke-interface {p0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 84
    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->f:Ljava/lang/String;

    const-string v6, "width"

    invoke-interface {p0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Ljava/lang/String;)I

    move-result v10

    .line 85
    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->f:Ljava/lang/String;

    const-string v6, "height"

    invoke-interface {p0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Ljava/lang/String;)I

    move-result v11

    .line 86
    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->f:Ljava/lang/String;

    const-string v6, "bitrate"

    invoke-interface {p0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Ljava/lang/String;)I

    move-result v12

    .line 87
    invoke-static {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-lez v10, :cond_0

    if-lez v11, :cond_0

    .line 88
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/k/c/d;->a:Ljava/util/List;

    invoke-interface {v5, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    move v7, p1

    move-wide/from16 v8, p2

    .line 91
    invoke-static/range {v7 .. v13}, Lcom/bytedance/sdk/openadsdk/core/k/c/d;->a(IDIIILjava/lang/String;)D

    move-result-wide v5

    cmpl-double v7, v5, v1

    if-lez v7, :cond_0

    move-object v3, v4

    move-wide v1, v5

    goto :goto_0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/bytedance/sdk/openadsdk/core/k/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 263
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoClicks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    return-void

    .line 264
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 267
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x24d417c3

    const-string v4, "ClickTracking"

    const-string v5, "ClickThrough"

    const/4 v6, 0x1

    if-eq v2, v3, :cond_4

    const v3, 0x7d9f703f

    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    :cond_5
    :goto_2
    if-eqz v1, :cond_7

    if-eq v1, v6, :cond_6

    .line 276
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 273
    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a()Lcom/bytedance/sdk/openadsdk/core/k/d;

    move-result-object v0

    invoke-static {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/k/d;->g(Ljava/util/List;)V

    goto :goto_0

    .line 270
    :cond_7
    invoke-static {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/k/a;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/bytedance/sdk/openadsdk/core/k/a;ID)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Linear"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 39
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 42
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/k/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 44
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 46
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v6, "TrackingEvents"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_1
    const-string v6, "Icons"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_2
    const-string v6, "MediaFiles"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_3
    const-string v6, "Duration"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_4
    const-string v6, "VideoClicks"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x2

    :cond_5
    :goto_2
    if-eqz v5, :cond_b

    if-eq v5, v8, :cond_a

    if-eq v5, v4, :cond_9

    if-eq v5, v3, :cond_7

    if-eq v5, v7, :cond_6

    .line 70
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 64
    :cond_6
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/bytedance/sdk/openadsdk/core/k/b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/k/a;->b()Lcom/bytedance/sdk/openadsdk/core/k/b;

    move-result-object v3

    if-nez v3, :cond_0

    .line 66
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a(Lcom/bytedance/sdk/openadsdk/core/k/b;)V

    goto/16 :goto_0

    .line 58
    :cond_7
    invoke-static {p0, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;ID)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 60
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/k/a;->d(Ljava/lang/String;)V

    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 54
    :cond_9
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/bytedance/sdk/openadsdk/core/k/a;)V

    goto/16 :goto_0

    .line 51
    :cond_a
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a()Lcom/bytedance/sdk/openadsdk/core/k/d;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/bytedance/sdk/openadsdk/core/k/d;)V

    goto/16 :goto_0

    .line 48
    :cond_b
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/k/a;->a(D)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7a2ef3da -> :sswitch_4
        -0x72e14e4c -> :sswitch_3
        -0x16f37aed -> :sswitch_2
        0x43362fa -> :sswitch_1
        0x247392d0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/bytedance/sdk/openadsdk/core/k/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 206
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TrackingEvents"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    return-void

    .line 207
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 210
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Tracking"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x4

    if-eqz v0, :cond_5

    .line 211
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->f:Ljava/lang/String;

    const-string v5, "event"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 213
    invoke-static {p0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "creativeView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    goto/16 :goto_3

    :sswitch_1
    const-string v1, "firstQuartile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    goto/16 :goto_3

    :sswitch_2
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :sswitch_3
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    goto :goto_3

    :sswitch_4
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    goto :goto_3

    :sswitch_5
    const-string v1, "skip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x7

    goto :goto_3

    :sswitch_6
    const-string v1, "mute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    goto :goto_3

    :sswitch_7
    const-string v1, "complete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    goto :goto_3

    :sswitch_8
    const-string v1, "unmute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xb

    goto :goto_3

    :sswitch_9
    const-string v1, "resume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x9

    goto :goto_3

    :sswitch_a
    const-string v1, "thirdQuartile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    goto :goto_3

    :sswitch_b
    const-string v2, "midpoint"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, -0x1

    :goto_3
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 249
    :pswitch_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/k/d;->l(Ljava/util/List;)V

    goto/16 :goto_0

    .line 246
    :pswitch_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/k/d;->k(Ljava/util/List;)V

    goto/16 :goto_0

    .line 243
    :pswitch_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/k/d;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 240
    :pswitch_3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/k/d;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 237
    :pswitch_4
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/k/d;->f(Ljava/util/List;)V

    goto/16 :goto_0

    .line 234
    :pswitch_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/k/d;->e(Ljava/util/List;)V

    goto/16 :goto_0

    .line 231
    :pswitch_6
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/k/d;->d(Ljava/util/List;)V

    goto/16 :goto_0

    .line 228
    :pswitch_7
    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/k/d;->a(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 225
    :pswitch_8
    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/k/d;->a(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 222
    :pswitch_9
    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/k/d;->a(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 219
    :pswitch_a
    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/k/d;->a(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 253
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 254
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto/16 :goto_0

    .line 256
    :cond_6
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x61aea3b8 -> :sswitch_b
        -0x4fbdabf6 -> :sswitch_a
        -0x37b237d3 -> :sswitch_9
        -0x321793ce -> :sswitch_8
        -0x23bacec7 -> :sswitch_7
        0x335219 -> :sswitch_6
        0x35e57f -> :sswitch_5
        0x5a5ddf8 -> :sswitch_4
        0x65825f6 -> :sswitch_3
        0x68ac462 -> :sswitch_2
        0x21644853 -> :sswitch_1
        0x69fcaef4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lorg/xmlpull/v1/XmlPullParser;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "Duration"

    .line 191
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    .line 192
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 193
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 195
    :try_start_0
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    const/4 v1, 0x1

    aget-object v1, p0, v1

    .line 196
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget-object p0, p0, v1

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v0, p0

    float-to-double v0, v0

    return-wide v0

    :catch_0
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/k/b/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "Tracking"

    .line 282
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/k/a/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
