.class Lcom/bytedance/sdk/openadsdk/core/j/d$a;
.super Landroid/content/BroadcastReceiver;
.source "SdkSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/j/d;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/j/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/d$a;->a:Lcom/bytedance/sdk/openadsdk/core/j/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/j/d;Lcom/bytedance/sdk/openadsdk/core/j/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j/d$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/j/d;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "b^opcZoc"

    invoke-static {p1}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "b^opcZrnel"

    invoke-static {p1}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/j/d;->d()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/d$a;->a:Lcom/bytedance/sdk/openadsdk/core/j/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/j/d;->a(Lcom/bytedance/sdk/openadsdk/core/j/d;)Lcom/bytedance/sdk/openadsdk/core/j/b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/d$a;->a:Lcom/bytedance/sdk/openadsdk/core/j/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/j/d;->a(Lcom/bytedance/sdk/openadsdk/core/j/d;)Lcom/bytedance/sdk/openadsdk/core/j/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/j/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method
