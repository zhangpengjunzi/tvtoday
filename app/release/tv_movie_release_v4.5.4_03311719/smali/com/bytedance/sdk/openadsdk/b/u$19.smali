.class Lcom/bytedance/sdk/openadsdk/b/u$19;
.super Ljava/lang/Object;
.source "WebviewTimeTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/b/u;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/b/u;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/b/u;Ljava/lang/String;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/u$19;->b:Lcom/bytedance/sdk/openadsdk/b/u;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/u$19;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 528
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 529
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/u$19;->b:Lcom/bytedance/sdk/openadsdk/b/u;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "ts"

    invoke-static {v3, v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/b/u;->a(Lcom/bytedance/sdk/openadsdk/b/u;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/u$19;->b:Lcom/bytedance/sdk/openadsdk/b/u;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->b(Lcom/bytedance/sdk/openadsdk/b/u;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/u$19;->a:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/b/u;->a(Lcom/bytedance/sdk/openadsdk/b/u;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
