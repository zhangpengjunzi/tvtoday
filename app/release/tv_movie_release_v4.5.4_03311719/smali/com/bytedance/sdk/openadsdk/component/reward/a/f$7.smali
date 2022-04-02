.class Lcom/bytedance/sdk/openadsdk/component/reward/a/f$7;
.super Lcom/bytedance/sdk/openadsdk/i/a;
.source "RewardFullWebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Lcom/bytedance/sdk/openadsdk/f/e;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/f/e;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;Lcom/bytedance/sdk/openadsdk/f/e;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$7;->b:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$7;->a:Lcom/bytedance/sdk/openadsdk/f/e;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/i/d;
    .locals 7

    .line 329
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x675

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v2, :cond_4

    const/16 v2, 0x694

    if-eq v1, v2, :cond_3

    const/16 v2, 0x6b3

    if-eq v1, v2, :cond_2

    const/16 v2, 0x6d2

    if-eq v1, v2, :cond_1

    const v2, 0x37af15

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const-string v1, "5g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v1, "4g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const-string v1, "3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const-string v1, "2g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_a

    if-eq v0, v6, :cond_9

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    .line 342
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/d;->f:Lcom/bytedance/sdk/openadsdk/i/d;

    return-object v0

    .line 340
    :cond_6
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/d;->e:Lcom/bytedance/sdk/openadsdk/i/d;

    return-object v0

    .line 338
    :cond_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/d;->d:Lcom/bytedance/sdk/openadsdk/i/d;

    return-object v0

    .line 336
    :cond_8
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/d;->c:Lcom/bytedance/sdk/openadsdk/i/d;

    return-object v0

    .line 334
    :cond_9
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/d;->b:Lcom/bytedance/sdk/openadsdk/i/d;

    return-object v0

    .line 332
    :cond_a
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/d;->a:Lcom/bytedance/sdk/openadsdk/i/d;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$7;->b:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->d(Z)V

    .line 360
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$7;->a:Lcom/bytedance/sdk/openadsdk/f/e;

    if-eqz v0, :cond_0

    .line 361
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/f/e;->a()V

    :cond_0
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 4

    .line 367
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$7;->b:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->b(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$7;->b:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->c(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "playable_track"

    invoke-static {v0, v1, v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/b/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
