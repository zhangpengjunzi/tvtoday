.class Lcom/bytedance/sdk/openadsdk/component/reward/d$a;
.super Lcom/bytedance/sdk/component/g/g;
.source "FullScreenVideoLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field b:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    const-string v0, "Fullscreen Task"

    .line 455
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/g/g;-><init>(Ljava/lang/String;)V

    .line 456
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/d$a;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 457
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/d$a;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/d$a;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-nez v0, :cond_0

    return-void

    .line 465
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 466
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/d$a;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->J()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/d$a;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->aB()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/d$a;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v0

    .line 470
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/d$a;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const-string v2, "material_meta"

    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 471
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/d$a;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const-string v2, "ad_slot"

    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "FullScreenVideoLoadManager"

    const-string v2, "FullScreenLog: preload video "

    .line 472
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/d$a$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/d$a$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/d$a;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bykv/vk/openvk/component/video/api/e/a$a;)V

    goto :goto_0

    .line 489
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/d$a;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/d$a$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/d$a$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/d$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/component/reward/b$a;)V

    :cond_2
    :goto_0
    return-void
.end method
