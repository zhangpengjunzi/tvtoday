.class Lcom/bytedance/sdk/component/e/c/c$1;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/e/c/c;->s()Lcom/bytedance/sdk/component/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/e/c/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/e/c/c;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/bytedance/sdk/component/e/c/c$1;->a:Lcom/bytedance/sdk/component/e/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 303
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c$1;->a:Lcom/bytedance/sdk/component/e/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/c;->a(Lcom/bytedance/sdk/component/e/c/c;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c$1;->a:Lcom/bytedance/sdk/component/e/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/c;->b(Lcom/bytedance/sdk/component/e/c/c;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/e/d/i;

    if-nez v0, :cond_1

    goto :goto_1

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/e/c/c$1;->a:Lcom/bytedance/sdk/component/e/c/c;

    invoke-static {v1}, Lcom/bytedance/sdk/component/e/c/c;->c(Lcom/bytedance/sdk/component/e/c/c;)Lcom/bytedance/sdk/component/e/r;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/bytedance/sdk/component/e/c/c$1;->a:Lcom/bytedance/sdk/component/e/c/c;

    invoke-static {v1}, Lcom/bytedance/sdk/component/e/c/c;->c(Lcom/bytedance/sdk/component/e/c/c;)Lcom/bytedance/sdk/component/e/r;

    move-result-object v1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/d/i;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/e/c/c$1;->a:Lcom/bytedance/sdk/component/e/c/c;

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/component/e/r;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/e/h;)V

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/component/e/c/c$1;->a:Lcom/bytedance/sdk/component/e/c/c;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/e/d/i;->a(Lcom/bytedance/sdk/component/e/c/c;)V

    .line 316
    iget-object v1, p0, Lcom/bytedance/sdk/component/e/c/c$1;->a:Lcom/bytedance/sdk/component/e/c/c;

    invoke-static {v1}, Lcom/bytedance/sdk/component/e/c/c;->c(Lcom/bytedance/sdk/component/e/c/c;)Lcom/bytedance/sdk/component/e/r;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/bytedance/sdk/component/e/c/c$1;->a:Lcom/bytedance/sdk/component/e/c/c;

    invoke-static {v1}, Lcom/bytedance/sdk/component/e/c/c;->c(Lcom/bytedance/sdk/component/e/c/c;)Lcom/bytedance/sdk/component/e/r;

    move-result-object v1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/d/i;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/e/c/c$1;->a:Lcom/bytedance/sdk/component/e/c/c;

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/component/e/r;->b(Ljava/lang/String;Lcom/bytedance/sdk/component/e/h;)V

    goto :goto_0

    .line 322
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c$1;->a:Lcom/bytedance/sdk/component/e/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/c;->a(Lcom/bytedance/sdk/component/e/c/c;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 323
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c$1;->a:Lcom/bytedance/sdk/component/e/c/c;

    const/16 v1, 0x3eb

    const-string v2, "canceled"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/e/c/c;->a(Lcom/bytedance/sdk/component/e/c/c;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 328
    iget-object v1, p0, Lcom/bytedance/sdk/component/e/c/c$1;->a:Lcom/bytedance/sdk/component/e/c/c;

    const/16 v2, 0x7d0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/e/c/c;->a(Lcom/bytedance/sdk/component/e/c/c;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c$1;->a:Lcom/bytedance/sdk/component/e/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/c;->c(Lcom/bytedance/sdk/component/e/c/c;)Lcom/bytedance/sdk/component/e/r;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 331
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/c/c$1;->a:Lcom/bytedance/sdk/component/e/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/c;->c(Lcom/bytedance/sdk/component/e/c/c;)Lcom/bytedance/sdk/component/e/r;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/e/c/c$1;->a:Lcom/bytedance/sdk/component/e/c/c;

    const-string v2, "exception"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/e/r;->b(Ljava/lang/String;Lcom/bytedance/sdk/component/e/h;)V

    :cond_4
    :goto_2
    return-void
.end method
