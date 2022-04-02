.class Lcom/bytedance/sdk/openadsdk/component/b/a$1;
.super Ljava/lang/Object;
.source "FeedAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/b/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic d:J

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/component/b/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/b/a;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->e:Lcom/bytedance/sdk/openadsdk/component/b/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/f/a;Lcom/bytedance/sdk/openadsdk/core/f/b;)V
    .locals 7

    .line 60
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 61
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object p1

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 65
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/b/b;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v4, v5, v2, v3, v6}, Lcom/bytedance/sdk/openadsdk/component/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;ILcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ao()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 70
    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/b/b;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v4, v5, v2, v3, v6}, Lcom/bytedance/sdk/openadsdk/component/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;ILcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/c/b;->h()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 75
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/t;->f(Lcom/bytedance/sdk/openadsdk/core/f/n;)I

    move-result v3

    .line 77
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/j/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/j/f;->G()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 80
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/bykv/vk/openvk/component/video/api/c/b;->e(I)V

    .line 82
    :cond_3
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aD()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 83
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aD()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/bykv/vk/openvk/component/video/api/c/b;->e(I)V

    .line 86
    :cond_4
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aB()I

    move-result v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/a/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/bykv/vk/openvk/component/video/api/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v3

    const-string v4, "material_meta"

    .line 88
    invoke-virtual {v3, v4, v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const-string v4, "ad_slot"

    invoke-virtual {v3, v4, v2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 90
    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bykv/vk/openvk/component/video/api/e/a$a;)V

    goto/16 :goto_0

    .line 94
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 96
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 97
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->d:J

    sub-long/2addr v3, v5

    .line 99
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/f/n;

    const-string v1, "embeded_ad"

    invoke-static {p1, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;J)V

    goto :goto_2

    .line 101
    :cond_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->b:Landroid/content/Context;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/t;->b(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->d:J

    invoke-static {v1, p1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/b/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;J)V

    goto :goto_2

    .line 104
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->b:Landroid/content/Context;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/t;->b(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->d:J

    invoke-static {v1, p1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/b/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;J)V

    .line 106
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;->onFeedAdLoad(Ljava/util/List;)V

    .line 109
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->e()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->e()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 110
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;)V

    goto :goto_3

    .line 113
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    const/4 v0, -0x4

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;->onError(ILjava/lang/String;)V

    .line 115
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(I)V

    .line 116
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;)V

    goto :goto_3

    .line 119
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;->onError(ILjava/lang/String;)V

    .line 121
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(I)V

    .line 122
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;)V

    :cond_a
    :goto_3
    return-void
.end method
