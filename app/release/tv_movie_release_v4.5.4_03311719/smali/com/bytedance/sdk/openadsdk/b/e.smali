.class public Lcom/bytedance/sdk/openadsdk/b/e;
.super Ljava/lang/Object;
.source "AdEventManager.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 1

    const-string v0, "l`lgmkawino"

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    :goto_0
    const/16 p0, 0x5d

    const/16 p1, 0x5d

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x4

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :goto_2
    :pswitch_2
    packed-switch p1, :pswitch_data_2

    goto :goto_3

    :pswitch_3
    const/16 p0, 0x5e

    const/16 p1, 0x4b

    goto :goto_1

    :goto_3
    const/16 p1, 0x5b

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "rdlgawYsqyo"

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "h4"

    invoke-static {v3}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "rdlgawYsqyoT>"

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ae]f|qtfWmk\u007fm"

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v1, "oqgm[ptkWa?"

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v1, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;J)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x37

    const/4 v2, 0x0

    :cond_0
    :goto_0
    :pswitch_0
    const/16 v3, 0x48

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :goto_2
    :pswitch_2
    packed-switch v1, :pswitch_data_2

    const/16 v1, 0x1e

    goto :goto_2

    :pswitch_3
    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    :pswitch_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "rdlgawYsqyo"

    invoke-static {v3}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "h4"

    invoke-static {v4}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "rdlgawYsqyoT>"

    invoke-static {v3}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "iovfvdesafdTahzg\u007fu"

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ae]f|qtfWmk\u007fm"

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/a;->a1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "dtpbplii"

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/a;->a1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/32 v2, 0x927c0

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    invoke-virtual {v1, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p3, "lncg"

    invoke-static {p3}, Lcom/bytedance/sdk/component/e/c/a;->a1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/b/e;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :pswitch_5
    const/16 v3, 0x49

    const/16 v2, 0x10

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_5
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;JZ)V
    .locals 3

    const/16 v0, 0x37

    const/4 v1, 0x0

    :goto_0
    :pswitch_0
    const/16 v2, 0x48

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :goto_2
    :pswitch_2
    packed-switch v0, :pswitch_data_2

    const/16 v0, 0x1e

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x39

    :goto_3
    :pswitch_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "ig]otZjhimcekR}zsrw`g"

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/j;->j1648021086452dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    goto :goto_4

    :cond_0
    const/4 p5, 0x2

    :goto_4
    invoke-virtual {v0, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "ae]f|qtfWmk\u007fm"

    invoke-static {p5}, Lcom/bytedance/sdk/component/c/b/j;->j1648021086452dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "dtpbplii"

    invoke-static {p5}, Lcom/bytedance/sdk/component/c/b/j;->j1648021086452dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;)V

    :goto_5
    const-string p3, "lq]okdbnfn"

    invoke-static {p3}, Lcom/bytedance/sdk/component/c/b/j;->j1648021086452dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p3, p1, v1}, Lcom/bytedance/sdk/openadsdk/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/b/a;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->c()Lcom/bytedance/sdk/openadsdk/b/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Lcom/bytedance/sdk/openadsdk/b/k;)V

    return-void

    :pswitch_5
    const/16 v2, 0x49

    const/16 v1, 0x10

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_5
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/b/e;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;Lcom/bytedance/sdk/openadsdk/b/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/b/j;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "dtpbplii"

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p4, "pdp`akr"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p7, :cond_0

    invoke-interface {p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {v1, p6, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p4, "fdgg[gtbib"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "fdgg[jpbz"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    :cond_1
    if-eqz p8, :cond_2

    invoke-virtual {p8, v1}, Lcom/bytedance/sdk/openadsdk/b/j;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_2
    const-string p4, "ae]f|qtfWmk\u007fm"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/i/e;->e1648021086475dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    check-cast p4, Lorg/json/JSONException;

    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 2

    const/16 v0, 0x5c

    :goto_0
    const/16 v1, 0xe

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p6, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "dtpbplii"

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p4, "ae]f|qtfWmk\u007fm"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p4

    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    :goto_3
    return-void

    :pswitch_2
    const/16 v1, 0x48

    :goto_4
    :pswitch_3
    const/16 v1, 0xf

    const/16 v0, 0x5f

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x38

    const/16 v1, 0x3c

    :goto_0
    :pswitch_0
    const/16 v2, 0x29

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    packed-switch v1, :pswitch_data_1

    goto :goto_5

    :pswitch_2
    packed-switch v0, :pswitch_data_2

    goto :goto_4

    :pswitch_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p4, :cond_0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_0
    const-string p4, "ae]f|qtfWmk\u007fm"

    invoke-static {p4}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p4

    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;)V

    :goto_3
    invoke-static {p0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :goto_4
    :pswitch_4
    packed-switch v0, :pswitch_data_3

    const/16 v0, 0x27

    goto :goto_4

    :goto_5
    :pswitch_5
    const/16 v2, 0x28

    const/16 v1, 0x53

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x51
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x27
        :pswitch_5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    :goto_0
    :pswitch_0
    const/16 v0, 0x5f

    const/16 v1, 0x5f

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_5

    :pswitch_1
    packed-switch v1, :pswitch_data_1

    :pswitch_2
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x27

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    :goto_2
    :pswitch_4
    if-eqz p4, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ae]f|qtfWmk\u007fm"

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/j;->j1648021086452dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p4

    check-cast p4, Lorg/json/JSONException;

    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_4

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/b/e;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string p0, "cmk`o"

    invoke-static {p0}, Lcom/bytedance/sdk/component/c/b/j;->j1648021086452dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r;->c(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    :cond_2
    return-void

    :goto_5
    :pswitch_5
    const/16 v0, 0x5e

    const/16 v1, 0x7d

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_0
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_4
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ae]f|qtfWmk\u007fm"

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "dtpbplii"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V
    .locals 5
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    if-nez p0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string p3, "iovfvdesafdTahzg\u007fu"

    invoke-static {p3}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->g()I

    move-result v2

    invoke-virtual {v1, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "rdco[lhsm{khxdaaO|wg|zr"

    invoke-static {p3}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->f()I

    move-result v2

    invoke-virtual {v1, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "ae]f|qtfWmk\u007fm"

    invoke-static {p3}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "lne\\a}rui"

    invoke-static {p3}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-double v1, v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/k/t;->e(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v3

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result p3

    const-string v1, "simt[qojm"

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    cmpl-float v3, p3, v2

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "u`]skiodq"

    invoke-static {p3}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->F()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->s()Ljava/lang/String;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "tufptZvuajo"

    if-nez v1, :cond_3

    :try_start_2
    move-object v1, p3

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v1, :cond_3

    :try_start_3
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    const v1, 0x47c35000    # 100000.0f

    mul-float p3, p3, v1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p3

    :try_start_4
    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aj()Ljava/util/Map;

    move-result-object p3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz p3, :cond_5

    :try_start_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aj()Ljava/util/Map;

    move-result-object p3

    const-string v1, "sei\\flbcagmTxt~j"

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/4 v1, 0x2

    if-ne p3, v1, :cond_5

    const-wide v3, 0x40f86a0000000000L    # 100000.0

    if-eqz p4, :cond_4

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v0, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aj()Ljava/util/Map;

    move-result-object p3

    const-string p4, "psk`a"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v0, p4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    :cond_5
    :goto_3
    :try_start_6
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/b/o;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :catch_0
    nop

    :goto_4
    new-instance p3, Lcom/bytedance/sdk/openadsdk/b/a$a;

    invoke-direct {p3}, Lcom/bytedance/sdk/openadsdk/b/a$a;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/bytedance/sdk/openadsdk/b/a$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/b/a$a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    const-string p2, "simt"

    invoke-static {p2}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/b/a$a;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/b/a$a;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Z()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Lcom/bytedance/sdk/openadsdk/b/a/a;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->R()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->g()Lcom/bytedance/sdk/openadsdk/j/a;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p0, p3}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/bytedance/sdk/openadsdk/j/a;->a(Ljava/util/List;)V

    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/component/utils/l;->c()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "AeGuakr"

    invoke-static {p0}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "simt$"

    invoke-static {p3}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/d/c;->a(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/core/f/g;Ljava/lang/String;ZLjava/util/Map;I)V
    .locals 4
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Lcom/bytedance/sdk/openadsdk/core/f/g;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    :try_start_0
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/f/g;->a()Lorg/json/JSONObject;

    move-result-object p3

    const-string v2, "ir]ueioc"

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-lt p7, v1, :cond_1

    const/4 p5, 0x2

    if-gt p7, p5, :cond_1

    const-string p5, "urgq[gcoi\u007fcd~Rzv`t"

    invoke-static {p5}, Lcom/bytedance/sdk/component/e/c/a;->a1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    if-eqz p6, :cond_2

    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/util/Map$Entry;

    invoke-interface {p6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/String;

    invoke-interface {p6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p3, p7, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const-string p5, "iovfvdesafdTahzg\u007fu"

    invoke-static {p5}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->g()I

    move-result p6

    invoke-virtual {p3, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "ae]f|qtfWmk\u007fm"

    invoke-static {p5}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string p3, "lne\\a}rui"

    invoke-static {p3}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p3, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    const-wide/16 v2, 0x3e8

    div-long/2addr p5, v2

    long-to-double p5, p5

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/k/t;->e(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p5, v2

    :try_start_1
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result p3

    const-string p5, "simt[qojm"

    invoke-static {p5}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    cmpl-float p7, p3, p6

    if-lez p7, :cond_4

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    :goto_1
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v0, p5, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "u`]skiodq"

    invoke-static {p3}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->F()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v0, p3, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    new-instance p3, Lcom/bytedance/sdk/openadsdk/b/a$a;

    invoke-direct {p3}, Lcom/bytedance/sdk/openadsdk/b/a$a;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/bytedance/sdk/openadsdk/b/a$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/bytedance/sdk/openadsdk/b/a$a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/a$a;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/b/a$a;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Z()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Lcom/bytedance/sdk/openadsdk/b/a/a;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string p3, "cmk`o"

    if-nez p0, :cond_5

    invoke-static {p3}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->S()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->g()Lcom/bytedance/sdk/openadsdk/j/a;

    move-result-object p4

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/bytedance/sdk/openadsdk/j/a;->a(Ljava/util/List;)V

    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/component/utils/l;->c()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "AeGuakr"

    invoke-static {p0}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " "

    invoke-static {p5}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {p3}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/r;->c(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    :cond_7
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    :goto_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 0

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V
    .locals 5

    :pswitch_0
    const/16 v0, 0x4a

    const/16 v1, 0x37

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_1
    packed-switch v1, :pswitch_data_1

    :pswitch_2
    packed-switch v1, :pswitch_data_2

    goto :goto_1

    :pswitch_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "rdtfmfcX|z"

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "ae]f|qtfWmk\u007fm"

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bhfgmkaXzline{k"

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :goto_1
    :pswitch_4
    const/16 v0, 0x49

    const/16 v1, 0x60

    goto :goto_0

    :goto_2
    const/16 v0, 0x48

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "dtpbplii"

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p2

    const-string p3, "bhfgmkaXdfko"

    invoke-static {p3}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p0, p1, p3, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;JLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    :try_start_0
    const-string v0, "dtpbplii"

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string p3, "ae]f|qtfWmk\u007fm"

    invoke-static {p3}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    check-cast p2, Lorg/json/JSONException;

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    const-string p2, "oqgm[db"

    invoke-static {p2}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/j;Lcom/bytedance/sdk/openadsdk/b/a/a;)V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :pswitch_0
    const/16 v0, 0xf

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "esplvZkto"

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ae]f|qtfWmk\u007fm"

    invoke-static {p2}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p2

    const-string v1, "simt[`tug{"

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p0, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :goto_1
    :pswitch_2
    const/16 v0, 0xe

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .locals 7
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    const-string v0, "cmk`o"

    const-string v1, "ae]f|qtfWmk\u007fm"

    const/4 v2, 0x0

    if-eqz p8, :cond_3

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {v1}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p8, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ddtjg`"

    invoke-static {v4}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/k/e;->f(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {v1}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p8, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "t`e"

    invoke-static {v1}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p8, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r;->c(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    const-string v0, "lne\\a}rui"

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-double v3, v3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/t;->e(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v0

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    const-string v1, "simt[qojm"

    invoke-static {v1}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p8, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->S()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->g()Lcom/bytedance/sdk/openadsdk/j/a;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/j/a;->a(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_3
    :goto_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/a$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/a$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/a$a;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/b/a$a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/b/a$a;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/b/a$a;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p1

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/b/a$a;->h(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Z()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, p8}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Lcom/bytedance/sdk/openadsdk/b/a/a;)V

    invoke-static {}, Lcom/bytedance/sdk/component/utils/l;->c()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "AeGuakr"

    invoke-static {p0}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sdlgNvGcM\u007foex"

    invoke-static {p1}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/j;Lcom/bytedance/sdk/openadsdk/b/a/a;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p4, Lcom/bytedance/sdk/openadsdk/b/a$a;

    invoke-direct {p4}, Lcom/bytedance/sdk/openadsdk/b/a$a;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/bytedance/sdk/openadsdk/b/a$a;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/bytedance/sdk/openadsdk/b/a$a;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Z()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/a$a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/b/a$a;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Lcom/bytedance/sdk/openadsdk/b/a/a;)V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :goto_0
    const/16 v0, 0x50

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "lncg[dbXl|xjxdaa"

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "ddtjg`"

    invoke-static {v4}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/e;->f(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "tnvbhZrnel"

    invoke-static {v4}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_0
    instance-of p2, v4, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "dtpbplii"

    if-eqz p2, :cond_1

    :try_start_1
    invoke-static {v5}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_1
    invoke-static {v5}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_3
    const-string p2, "ae]f|qtfWmk\u007fm"

    invoke-static {p2}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_4

    :cond_2
    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/e;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :pswitch_1
    const/16 v0, 0x52

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dislike/a;->a()Lcom/bytedance/sdk/openadsdk/dislike/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/util/List;)V

    invoke-static {}, Lcom/bytedance/sdk/component/utils/l;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AeGuakr"

    invoke-static {p1}, Lcom/bytedance/sdk/component/c/b/j;->j1648021086452dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tu]gmvjnclUbob`/"

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/j;->j1648021086452dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/component/utils/h;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/e$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/b/e$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/b/j;)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/b/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/h;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/e$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/e$1;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/b/j;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "ae]phjrX|pzn"

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->x()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "iovfvdesafdTahzg\u007fu"

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->g()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ae]f|qtfWmk\u007fm"

    invoke-static {v2}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;)V

    :goto_0
    const-string v0, "phawqwcXkechg"

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/b/a;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->c()Lcom/bytedance/sdk/openadsdk/b/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Lcom/bytedance/sdk/openadsdk/b/k;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;J)V
    .locals 6
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/j/f;->F()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "dtpbplii"

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/a/b/b;->b1648021086458dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch p4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p4, "dsct[db"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/b/b;->b1648021086458dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p3, 0x5

    goto :goto_1

    :sswitch_1
    const-string p4, "iovfvdesafd"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/b/b;->b1648021086458dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :sswitch_2
    const-string p4, "el`f``bXim"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/b/b;->b1648021086458dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p3, 0x2

    goto :goto_1

    :sswitch_3
    const-string p4, "ftnowftbmgUbbyk}ce{g}tzHy}"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/b/b;->b1648021086458dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p3, 0x4

    goto :goto_1

    :sswitch_4
    const-string p4, "rdubvaccW\u007fcoib"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/b/b;->b1648021086458dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p3, 0x3

    goto :goto_1

    :sswitch_5
    const-string p4, "b`lmawYfl"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/b/b;->b1648021086458dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    :goto_1
    if-eqz p3, :cond_8

    if-eq p3, v5, :cond_7

    if-eq p3, v4, :cond_6

    if-eq p3, v3, :cond_5

    if-eq p3, v2, :cond_4

    if-eq p3, v1, :cond_3

    const-string p3, ""

    goto :goto_3

    :cond_3
    const-string p3, "dsct[dbXdfkoxdcj"

    goto :goto_2

    :cond_4
    const-string p3, "ftnowftbmgUbbyk}ce{g}tzHy}Ews|zkILG"

    goto :goto_2

    :cond_5
    const-string p3, "rdubvaccW\u007fcoibQc\u007fpvg}xs"

    goto :goto_2

    :cond_6
    const-string p3, "el`f``bXimUgclj{y|w"

    goto :goto_2

    :cond_7
    const-string p3, "iovfvdesafdT`bokdx\u007fv"

    goto :goto_2

    :cond_8
    const-string p3, "b`lmawYflVfdmizf}t"

    :goto_2
    invoke-static {p3}, Lcom/bytedance/sdk/component/c/b/a/b/b;->b1648021086458dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_3
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65146dea -> :sswitch_5
        -0x514cfef6 -> :sswitch_4
        -0x2d935a6e -> :sswitch_3
        -0x2a77c376 -> :sswitch_2
        0x6deace12 -> :sswitch_1
        0x72060cfe -> :sswitch_0
    .end sparse-switch
.end method

.method public static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/b/e;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 2

    const/16 v0, 0x5c

    :goto_0
    const/16 v1, 0xe

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "dtpbplii"

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p6, :cond_0

    const-string p4, "ae]f|qtfWmk\u007fm"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string p4, "ile@efnb"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "\u4e0a\u62a4\u6572\u636d>%"

    invoke-static {p6}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :pswitch_2
    const/16 v1, 0x48

    :goto_2
    :pswitch_3
    const/16 v1, 0xf

    const/16 v0, 0x5f

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p4, :cond_0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p4

    goto :goto_1

    :cond_0
    const-string p4, "ae]f|qtfWmk\u007fm"

    invoke-static {p4}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    check-cast p4, Lorg/json/JSONException;

    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p4, :cond_0

    :try_start_0
    const-string v1, "ae]f|qtfWmk\u007fm"

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V
    .locals 1

    const-string v0, "cmk`oZekgzo"

    invoke-static {v0}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "lne\\a}rui"

    invoke-static {v1}, Lcom/bytedance/sdk/component/e/c/f;->f1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "u`]skiodq"

    invoke-static {v1}, Lcom/bytedance/sdk/component/e/c/f;->f1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->F()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/a$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/b/a$a;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/b/a$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/b/a$a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/b/a$a;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/b/a$a;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Lcom/bytedance/sdk/openadsdk/b/a/a;)V

    invoke-static {}, Lcom/bytedance/sdk/component/utils/l;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "AeGuakr"

    invoke-static {p0}, Lcom/bytedance/sdk/component/e/c/f;->f1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t`e9$"

    invoke-static {v1}, Lcom/bytedance/sdk/component/e/c/f;->f1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "l``fh?&"

    invoke-static {p2}, Lcom/bytedance/sdk/component/e/c/f;->f1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-static {p2}, Lcom/bytedance/sdk/component/e/c/f;->f1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p4, :cond_0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p4

    goto :goto_1

    :cond_0
    const-string p4, "ae]f|qtfWmk\u007fm"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/b/b;->b1648021086458dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    check-cast p4, Lorg/json/JSONException;

    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    if-nez p4, :cond_0

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p4, "ae]f|qtfWmk\u007fm"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/a/e/g;->g1648021086456dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p4, "ae]f|qtfWmk\u007fm"

    invoke-static {p4}, Lcom/bytedance/sdk/component/c/b/j;->j1648021086452dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    check-cast p4, Lorg/json/JSONException;

    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "AeGuakr"

    if-eqz p4, :cond_1

    :try_start_0
    const-string v1, "lne\\a}rui"

    invoke-static {v1}, Lcom/bytedance/sdk/component/e/c/f;->f1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "u`]skiodq"

    invoke-static {v1}, Lcom/bytedance/sdk/component/e/c/f;->f1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->F()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/f;->f1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cbp#hja+(eelShv{bp2zg5szhmc"

    invoke-static {v2}, Lcom/bytedance/sdk/component/e/c/f;->f1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/a$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/b/a$a;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/b/a$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/b/a$a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/b/a$a;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/b/a$a;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/b/a$a;

    move-result-object p0

    const/4 p4, 0x0

    invoke-virtual {p0, p4}, Lcom/bytedance/sdk/openadsdk/b/a$a;->a(Lcom/bytedance/sdk/openadsdk/b/a/a;)V

    invoke-static {}, Lcom/bytedance/sdk/component/utils/l;->c()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/f;->f1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "t`e9$"

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/f;->f1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "l``fh?&"

    invoke-static {p2}, Lcom/bytedance/sdk/component/e/c/f;->f1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-static {p2}, Lcom/bytedance/sdk/component/e/c/f;->f1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
