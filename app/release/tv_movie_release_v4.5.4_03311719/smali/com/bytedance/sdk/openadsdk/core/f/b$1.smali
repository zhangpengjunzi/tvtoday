.class final Lcom/bytedance/sdk/openadsdk/core/f/b$1;
.super Ljava/lang/Object;
.source "AdLogInfoModel.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/b;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/g/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/b;->c()I

    move-result v1

    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/b;->b()I

    move-result v1

    const-string v2, "err_code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "server_res_str"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/b;->e()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/b;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 86
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 87
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mate_unavailable_code_list"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "rd_client_custom_error = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "AdLogInfoModel"

    .line 89
    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/b;->b()Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object v1

    const-string v2, "rd_client_custom_error"

    .line 91
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/b;

    .line 92
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->d()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(I)Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object v1

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object v0

    return-object v0
.end method
