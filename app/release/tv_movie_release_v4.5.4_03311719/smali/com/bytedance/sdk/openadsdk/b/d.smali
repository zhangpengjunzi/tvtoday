.class public Lcom/bytedance/sdk/openadsdk/b/d;
.super Lcom/bytedance/sdk/openadsdk/b/c;
.source "AdEventDispatcher4MultiProcess.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/b/c<",
        "Lcom/bytedance/sdk/openadsdk/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/b/c;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->c()V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/b/a;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d;->a()V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/b/k;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/bytedance/sdk/openadsdk/b/a;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/d;->a(Lcom/bytedance/sdk/openadsdk/b/a;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
