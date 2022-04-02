.class final Lcom/bytedance/sdk/openadsdk/core/l$4;
.super Ljava/lang/Object;
.source "InitHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/component/widget/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/l;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/widget/b/a;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 7

    .line 198
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/f/n;-><init>()V

    .line 199
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/b/a;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->q(I)V

    .line 200
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->m(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/b/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->k(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method
