.class Lcom/bytedance/sdk/openadsdk/i/g$4;
.super Ljava/util/TimerTask;
.source "PlayablePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/i/g;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/g;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/g$4;->a:Lcom/bytedance/sdk/openadsdk/i/g;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g$4;->a:Lcom/bytedance/sdk/openadsdk/i/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/g;->d(Lcom/bytedance/sdk/openadsdk/i/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/g$4$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/i/g$4$1;-><init>(Lcom/bytedance/sdk/openadsdk/i/g$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
