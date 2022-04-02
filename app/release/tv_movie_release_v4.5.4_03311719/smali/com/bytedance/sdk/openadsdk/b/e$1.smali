.class final Lcom/bytedance/sdk/openadsdk/b/e$1;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/b/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/b/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/b/j;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/b/j;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/e$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/e$1;->b:Lcom/bytedance/sdk/openadsdk/b/j;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/e$1;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/b/e$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "dtpbplii"

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/e$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/e$1;->b:Lcom/bytedance/sdk/openadsdk/b/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/e$1;->b:Lcom/bytedance/sdk/openadsdk/b/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/b/j;->b()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "ae]f|qtfWmk\u007fm"

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/e$1;->b:Lcom/bytedance/sdk/openadsdk/b/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/b/j;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/e$1;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/e$1;->d:Ljava/lang/String;

    const-string v4, "ae]pljqX|`gn"

    invoke-static {v4}, Lcom/bytedance/sdk/component/c/b/a/e/f;->f1648021086469dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/b/e;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
