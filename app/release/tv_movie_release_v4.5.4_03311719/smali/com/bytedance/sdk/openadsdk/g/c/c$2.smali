.class Lcom/bytedance/sdk/openadsdk/g/c/c$2;
.super Lcom/bytedance/sdk/component/g/g;
.source "LogUploaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/g/c/c;->a(Lcom/bytedance/sdk/openadsdk/g/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/g/a;

.field final synthetic b:Z

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/g/c/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/c/c;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a;Z)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/c/c$2;->c:Lcom/bytedance/sdk/openadsdk/g/c/c;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/g/c/c$2;->a:Lcom/bytedance/sdk/openadsdk/g/a;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/g/c/c$2;->b:Z

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c/c$2;->a:Lcom/bytedance/sdk/openadsdk/g/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a/a;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/c/c$a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/g/c/c$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 84
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/c/c$2;->b:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->e()Lcom/bytedance/sdk/openadsdk/b/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Lcom/bytedance/sdk/openadsdk/b/k;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->d()Lcom/bytedance/sdk/openadsdk/b/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Lcom/bytedance/sdk/openadsdk/b/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method
