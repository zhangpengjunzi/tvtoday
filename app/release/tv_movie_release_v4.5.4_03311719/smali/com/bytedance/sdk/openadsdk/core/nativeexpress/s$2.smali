.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s$2;
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

    .line 86
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->e(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;)Lcom/bytedance/sdk/component/adexpress/b/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->e(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;)Lcom/bytedance/sdk/component/adexpress/b/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;Lcom/bytedance/sdk/component/adexpress/b/f;)V

    :cond_1
    return-void
.end method
