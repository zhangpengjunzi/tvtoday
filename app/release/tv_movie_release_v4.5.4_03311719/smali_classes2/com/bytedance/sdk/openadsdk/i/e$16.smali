.class Lcom/bytedance/sdk/openadsdk/i/e$16;
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

    .line 393
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/e$16;->a:Lcom/bytedance/sdk/openadsdk/i/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 396
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/e$16;->a:Lcom/bytedance/sdk/openadsdk/i/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/i/e;->a(Lcom/bytedance/sdk/openadsdk/i/e;)Lcom/bytedance/sdk/openadsdk/i/g;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 400
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/g;->o()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
