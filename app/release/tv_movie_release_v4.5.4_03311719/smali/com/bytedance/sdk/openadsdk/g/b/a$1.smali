.class Lcom/bytedance/sdk/openadsdk/g/b/a$1;
.super Lcom/bytedance/sdk/component/g/g;
.source "ReportThreadLogServiceImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/g/b/a;->a(Lcom/bytedance/sdk/component/g/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/g/a/a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/g/b/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/b/a;Ljava/lang/String;Lcom/bytedance/sdk/component/g/a/a;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/b/a$1;->b:Lcom/bytedance/sdk/openadsdk/g/b/a;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/g/b/a$1;->a:Lcom/bytedance/sdk/component/g/a/a;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/b;->a()Lcom/bytedance/sdk/openadsdk/g/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/b/a$1;->a:Lcom/bytedance/sdk/component/g/a/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/g/a/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "stats_sdk_thread_num"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/g/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
