.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s$1;
.super Ljava/lang/Object;
.source "WebViewRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->G()Lcom/bytedance/sdk/openadsdk/core/f/n$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->G()Lcom/bytedance/sdk/openadsdk/core/f/n$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/a/b/a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/a/c/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;Lcom/bytedance/sdk/component/adexpress/a/c/b;)Lcom/bytedance/sdk/component/adexpress/a/c/b;

    .line 82
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/l;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
