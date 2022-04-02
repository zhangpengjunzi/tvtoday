.class Lcom/bytedance/sdk/openadsdk/component/reward/d$4;
.super Landroid/content/BroadcastReceiver;
.source "FullScreenVideoLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/d;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/d$4;->a:Lcom/bytedance/sdk/openadsdk/component/reward/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 427
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 428
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 429
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/d$4;->a:Lcom/bytedance/sdk/openadsdk/component/reward/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/d;->b(Lcom/bytedance/sdk/openadsdk/component/reward/d;)Lcom/bytedance/sdk/component/g/g;

    move-result-object p1

    if-nez p1, :cond_0

    .line 430
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/d$4;->a:Lcom/bytedance/sdk/openadsdk/component/reward/d;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/d;->c(Lcom/bytedance/sdk/openadsdk/component/reward/d;)Ljava/util/List;

    move-result-object v0

    const-string v1, "fsv net connect task"

    invoke-direct {p2, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/d;->a(Lcom/bytedance/sdk/openadsdk/component/reward/d;Lcom/bytedance/sdk/component/g/g;)Lcom/bytedance/sdk/component/g/g;

    .line 432
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/h;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/d$4;->a:Lcom/bytedance/sdk/openadsdk/component/reward/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/d;->b(Lcom/bytedance/sdk/openadsdk/component/reward/d;)Lcom/bytedance/sdk/component/g/g;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
