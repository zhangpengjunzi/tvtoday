.class Lcom/bytedance/sdk/openadsdk/i/e$23;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/i/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/i/e;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/e;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/e$23;->a:Lcom/bytedance/sdk/openadsdk/i/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/e$23;->a:Lcom/bytedance/sdk/openadsdk/i/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/e;->b(Lcom/bytedance/sdk/openadsdk/i/e;)Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 170
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/a;->b(Lorg/json/JSONObject;)V

    return-object v1
.end method
