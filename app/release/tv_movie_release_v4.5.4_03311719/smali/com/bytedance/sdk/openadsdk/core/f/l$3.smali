.class Lcom/bytedance/sdk/openadsdk/core/f/l$3;
.super Ljava/lang/Object;
.source "LandingPageModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/f/l;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f/l;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/l;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->a(Lcom/bytedance/sdk/openadsdk/core/f/l;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->b(Lcom/bytedance/sdk/openadsdk/core/f/l;)Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->c(Lcom/bytedance/sdk/openadsdk/core/f/l;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const/4 v6, 0x0

    .line 182
    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;JZ)V

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->d(Lcom/bytedance/sdk/openadsdk/core/f/l;)V

    :cond_0
    return-void
.end method
