.class Lcom/bytedance/sdk/openadsdk/g/b$12;
.super Ljava/lang/Object;
.source "StatsLogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/g/b;->c(Lcom/bytedance/sdk/openadsdk/g/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/g/a/b;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/g/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/b;Lcom/bytedance/sdk/openadsdk/g/a/b;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/b$12;->b:Lcom/bytedance/sdk/openadsdk/g/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/b$12;->a:Lcom/bytedance/sdk/openadsdk/g/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$12;->b:Lcom/bytedance/sdk/openadsdk/g/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/b$12;->a:Lcom/bytedance/sdk/openadsdk/g/a/b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/b;->a(Lcom/bytedance/sdk/openadsdk/g/b;Lcom/bytedance/sdk/openadsdk/g/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$12;->b:Lcom/bytedance/sdk/openadsdk/g/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/b$12;->a:Lcom/bytedance/sdk/openadsdk/g/a/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/g/a/b;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/g/b;->a(Lcom/bytedance/sdk/openadsdk/g/b;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$12;->a:Lcom/bytedance/sdk/openadsdk/g/a/b;

    const-string v1, "reg_creative"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/b;

    .line 204
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/b$12$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/g/b$12$1;-><init>(Lcom/bytedance/sdk/openadsdk/g/b$12;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a;)V

    :cond_1
    :goto_0
    return-void
.end method
