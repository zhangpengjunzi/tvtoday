.class public Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;
.source "TTFullScreenExpressVideoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected I()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(JZ)Z
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->l:Lcom/bytedance/sdk/openadsdk/component/reward/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->l:Lcom/bytedance/sdk/openadsdk/component/reward/view/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/b;->a()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->l:Lcom/bytedance/sdk/openadsdk/component/reward/view/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/b;->a()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->getAdShowTime()Lcom/bytedance/sdk/openadsdk/b/j;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/j;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/j;-><init>()V

    :goto_0
    move-object v6, v0

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->L:Lcom/bytedance/sdk/openadsdk/component/reward/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->L:Lcom/bytedance/sdk/openadsdk/component/reward/b/a;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/b/c;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->M:Z

    if-nez v0, :cond_1

    .line 56
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->m:Lcom/bytedance/sdk/openadsdk/component/reward/a/e;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->L:Lcom/bytedance/sdk/openadsdk/component/reward/b/a;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/b/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/b/c;->d()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->H()Z

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/a/e;->a(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/b/j;)V

    goto :goto_1

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->m:Lcom/bytedance/sdk/openadsdk/component/reward/a/e;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->l:Lcom/bytedance/sdk/openadsdk/component/reward/view/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/b;->b()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->H()Z

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/a/e;->a(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/b/j;)V

    .line 60
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->l:Lcom/bytedance/sdk/openadsdk/component/reward/view/b;

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->l:Lcom/bytedance/sdk/openadsdk/component/reward/view/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/b;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dynamic_show_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->D:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->D:Ljava/lang/String;

    const-string v2, "rit_scene"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->m:Lcom/bytedance/sdk/openadsdk/component/reward/a/e;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/e;->a(Ljava/util/Map;)V

    .line 68
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->m:Lcom/bytedance/sdk/openadsdk/component/reward/a/e;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/e;->a(Lcom/bykv/vk/openvk/component/video/api/d/c$a;)V

    .line 195
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->a(JZLjava/util/Map;)Z

    move-result p1

    return p1
.end method

.method protected d()V
    .locals 3

    .line 37
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->d()V

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/p;->i(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->o:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Z)V

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->o:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->b()V

    .line 41
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->a(Z)V

    return-void

    .line 44
    :cond_0
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->d(I)V

    return-void
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method protected t()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->finish()V

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->o:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Z)V

    .line 32
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->t()V

    return-void
.end method
