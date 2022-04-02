.class Lcom/bytedance/sdk/openadsdk/component/reward/k$1;
.super Ljava/lang/Object;
.source "TTFullScreenVideoAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/k;->showFullScreenVideoAd(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/k;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/k;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/k;->a(Lcom/bytedance/sdk/openadsdk/component/reward/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/b;->a()Lcom/bytedance/sdk/openadsdk/g/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/k;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b(Lcom/bytedance/sdk/openadsdk/component/reward/k;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "TTFullScreenVideoAdImpl"

    const-string v1, "show full screen video error: "

    .line 192
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/k;->a(Lcom/bytedance/sdk/openadsdk/component/reward/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/b;->a()Lcom/bytedance/sdk/openadsdk/g/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/k;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b(Lcom/bytedance/sdk/openadsdk/component/reward/k;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "playable tool error open"

    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/g/b;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :catchall_0
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/k;->b(Lcom/bytedance/sdk/openadsdk/component/reward/k;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object p1

    const-string v0, "fullscreen_interstitial_ad"

    const-string v1, "activity start  fail "

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
