.class Lcom/bytedance/sdk/openadsdk/b/h$c;
.super Landroid/content/BroadcastReceiver;
.source "AdEventThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/b/h;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/b/h;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/h$c;->a:Lcom/bytedance/sdk/openadsdk/b/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/b/h;Lcom/bytedance/sdk/openadsdk/b/h$1;)V
    .locals 0

    .line 625
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/h$c;-><init>(Lcom/bytedance/sdk/openadsdk/b/h;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 629
    sget-object p1, Lcom/bytedance/sdk/openadsdk/b/h;->a:Ljava/lang/String;

    const-string p2, "onReceive: timer event"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/h$c;->a:Lcom/bytedance/sdk/openadsdk/b/h;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/b/h;->i:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    .line 633
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/h$c;->a:Lcom/bytedance/sdk/openadsdk/b/h;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/b/h;->i:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 634
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/h$c;->a:Lcom/bytedance/sdk/openadsdk/b/h;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/b/h;->i:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 635
    iput p2, p1, Landroid/os/Message;->what:I

    .line 636
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/h$c;->a:Lcom/bytedance/sdk/openadsdk/b/h;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/b/h;->i:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
