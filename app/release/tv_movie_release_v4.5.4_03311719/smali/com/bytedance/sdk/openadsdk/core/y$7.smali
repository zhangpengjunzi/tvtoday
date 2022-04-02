.class Lcom/bytedance/sdk/openadsdk/core/y$7;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/openadsdk/core/y$a;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/y$a;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/y;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/y;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/y$a;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/y$7;->c:Lcom/bytedance/sdk/openadsdk/core/y;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/y$7;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/y$7;->b:Lcom/bytedance/sdk/openadsdk/core/y$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/y;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/y$7;->a:Lorg/json/JSONObject;

    const-string v0, "csgbplpb{"

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/a;->a1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/y$7;->c:Lcom/bytedance/sdk/openadsdk/core/y;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/y$7;->b:Lcom/bytedance/sdk/openadsdk/core/y$a;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/y$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/y$7;->a:Lorg/json/JSONObject;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/openadsdk/core/y;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/y$7;->c:Lcom/bytedance/sdk/openadsdk/core/y;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/y$7;->b:Lcom/bytedance/sdk/openadsdk/core/y$a;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/y$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/y$7;->a:Lorg/json/JSONObject;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/openadsdk/core/y;Ljava/lang/String;Lorg/json/JSONObject;)V

    :catch_0
    :goto_0
    return-void
.end method
