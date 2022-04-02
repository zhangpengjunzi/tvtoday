.class Lcom/bytedance/sdk/openadsdk/component/reward/i$3;
.super Ljava/lang/Object;
.source "RewardVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Lcom/bytedance/sdk/openadsdk/component/reward/i;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/i;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;JJ)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->f:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->a:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->d:J

    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/f/a;Lcom/bytedance/sdk/openadsdk/core/f/b;)V
    .locals 5

    .line 249
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 250
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get material data success isPreload="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->a:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RewardVideoLoadManager"

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/f/n;

    const/4 p2, 0x1

    .line 254
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/b;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/h/b;-><init>(Z)V

    .line 256
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/b;->a(Ljava/lang/String;)V

    const/4 v1, 0x7

    .line 257
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/b;->a(I)V

    .line 258
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/b;->c(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/b;->d(Ljava/lang/String;)V

    .line 260
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/t;->g(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/b;->b(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->M()Lcom/bytedance/sdk/openadsdk/core/f/k;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/k;)Lcom/bytedance/sdk/component/e/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/component/e/i;->a(Lcom/bytedance/sdk/component/e/n;)Lcom/bytedance/sdk/component/e/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 267
    :cond_0
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->f:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/l;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 268
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->a:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    if-eqz v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->d:J

    sub-long/2addr v1, v3

    const-string v3, "rewarded_video"

    .line 272
    invoke-static {p1, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;J)V

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V

    .line 278
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a()Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/i$3;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    invoke-virtual {v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/core/video/b/a$a;)V

    .line 289
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->a:Z

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f/p;->i(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 291
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/j/f;->n(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;

    move-result-object v1

    .line 292
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/j/a;->d:I

    if-ne v1, p2, :cond_3

    .line 293
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->f:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/o;->d(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 294
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->f:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/i$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/i$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Lcom/bytedance/sdk/openadsdk/component/reward/i;Lcom/bytedance/sdk/openadsdk/component/reward/i$a;)V

    return-void

    .line 301
    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f/p;->i(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 302
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_4

    .line 303
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 305
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aB()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v0

    const-string v1, "material_meta"

    .line 308
    invoke-virtual {v0, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const-string v2, "ad_slot"

    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 311
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/i$3;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bykv/vk/openvk/component/video/api/c/b;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bykv/vk/openvk/component/video/api/e/a$a;)V

    goto :goto_1

    .line 349
    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->f:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;

    move-result-object p2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/i$3$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/i$3;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/component/reward/l;)V

    invoke-virtual {p2, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/component/reward/g$a;)V

    goto :goto_1

    .line 373
    :cond_5
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->f:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    goto :goto_1

    .line 377
    :cond_6
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->a:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$3;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    if-eqz p1, :cond_7

    const/4 v0, -0x3

    .line 378
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onError(ILjava/lang/String;)V

    .line 380
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(I)V

    .line 381
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;)V

    :cond_7
    :goto_1
    return-void
.end method
