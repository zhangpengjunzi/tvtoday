.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;
.super Lcom/bytedance/sdk/component/g/g;
.source "ExpressRenderEventMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    .line 171
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    .line 172
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dynamic_backup_render"

    const/4 v4, 0x0

    .line 171
    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/b/e;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
