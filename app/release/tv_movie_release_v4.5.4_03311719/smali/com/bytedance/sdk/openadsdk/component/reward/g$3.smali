.class Lcom/bytedance/sdk/openadsdk/component/reward/g$3;
.super Lcom/bytedance/sdk/component/f/a/a;
.source "RewardVideoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/component/reward/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/g$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/reward/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/g;Lcom/bytedance/sdk/openadsdk/component/reward/g$a;Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/g$a;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/f/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/f/b/c;Lcom/bytedance/sdk/component/f/b;)V
    .locals 8

    .line 331
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->f()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "RewardVideoCache"

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->e()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->e()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 332
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/g$a;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 333
    invoke-interface {p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g$a;->a(ZLjava/lang/Object;)V

    :cond_0
    const-string p1, "onFailure: RewardVideo preload success "

    .line 335
    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->a()I

    move-result p1

    int-to-long v5, p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/g;ZLcom/bytedance/sdk/openadsdk/core/f/n;JLjava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/g$a;

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    .line 339
    invoke-interface {p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g$a;->a(ZLjava/lang/Object;)V

    :cond_2
    const-string p1, "onFailure: RewardVideo preload fail "

    .line 341
    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->a()I

    move-result p1

    int-to-long v5, p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/f/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/g;ZLcom/bytedance/sdk/openadsdk/core/f/n;JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V
    .locals 7

    .line 348
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/g$a;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 349
    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/g$a;->a(ZLjava/lang/Object;)V

    :cond_0
    const-string p1, "RewardVideoCache"

    const-string v0, "onFailure: RewardVideo preload fail "

    .line 351
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const-wide/16 v4, -0x2

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/g;ZLcom/bytedance/sdk/openadsdk/core/f/n;JLjava/lang/String;)V

    return-void
.end method
