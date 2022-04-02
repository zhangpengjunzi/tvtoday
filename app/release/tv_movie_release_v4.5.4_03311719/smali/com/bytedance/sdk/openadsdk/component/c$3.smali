.class Lcom/bytedance/sdk/openadsdk/component/c$3;
.super Ljava/lang/Object;
.source "TTAppOpenAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/c;Lcom/bytedance/sdk/openadsdk/core/f/n;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c$3;->b:Lcom/bytedance/sdk/openadsdk/component/c;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/c$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/c$3;->b:Lcom/bytedance/sdk/openadsdk/component/c;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/component/c;I)I

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/c$3;->b:Lcom/bytedance/sdk/openadsdk/component/c;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/e/b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/c$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-direct {v1, v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/component/e/b;-><init>(IILcom/bytedance/sdk/openadsdk/core/f/n;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/component/c;Lcom/bytedance/sdk/openadsdk/component/e/b;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    .line 218
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c$3;->b:Lcom/bytedance/sdk/openadsdk/component/c;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/component/c;I)I

    .line 219
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c$3;->b:Lcom/bytedance/sdk/openadsdk/component/c;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/e/b;

    const/16 v0, 0x2713

    .line 220
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/16 v3, 0x64

    invoke-direct {p2, v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/e/b;-><init>(IIILjava/lang/String;)V

    .line 219
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/component/c;Lcom/bytedance/sdk/openadsdk/component/e/b;)V

    return-void
.end method
