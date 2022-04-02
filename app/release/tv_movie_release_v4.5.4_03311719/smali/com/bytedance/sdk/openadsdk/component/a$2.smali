.class Lcom/bytedance/sdk/openadsdk/component/a$2;
.super Ljava/lang/Object;
.source "TTAppOpenAdCacheManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/f/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/f/r;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/component/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/a;ILcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/core/f/r;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$2;->d:Lcom/bytedance/sdk/openadsdk/component/a;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/a$2;->a:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/a$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/f/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 167
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/e/a;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/a$2;->a:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/e/a;-><init>(ILcom/bytedance/sdk/openadsdk/core/f/n;)V

    .line 168
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a$2;->d:Lcom/bytedance/sdk/openadsdk/component/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/a;->a(Lcom/bytedance/sdk/openadsdk/component/e/a;)V

    .line 170
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/e/a;->b()Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/f/r;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;ILcom/bytedance/sdk/openadsdk/core/f/r;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
