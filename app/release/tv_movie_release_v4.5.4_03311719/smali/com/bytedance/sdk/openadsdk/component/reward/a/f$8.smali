.class Lcom/bytedance/sdk/openadsdk/component/reward/a/f$8;
.super Ljava/lang/Object;
.source "RewardFullWebViewManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/i/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a(Lcom/bytedance/sdk/openadsdk/f/e;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/a/f;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$8;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f$8;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a/f;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
