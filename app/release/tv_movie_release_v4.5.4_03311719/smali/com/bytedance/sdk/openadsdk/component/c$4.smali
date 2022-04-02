.class Lcom/bytedance/sdk/openadsdk/component/c$4;
.super Ljava/lang/Object;
.source "TTAppOpenAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)V
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

    .line 231
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c$4;->b:Lcom/bytedance/sdk/openadsdk/component/c;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/c$4;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/c$4;->b:Lcom/bytedance/sdk/openadsdk/component/c;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/component/c;I)I

    .line 242
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/c$4;->b:Lcom/bytedance/sdk/openadsdk/component/c;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/e/b;

    const/16 v2, 0x2713

    .line 243
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/16 v5, 0x64

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/e/b;-><init>(IIILjava/lang/String;)V

    .line 242
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/component/c;Lcom/bytedance/sdk/openadsdk/component/e/b;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/h/a/b;)V
    .locals 4

    .line 234
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c$4;->b:Lcom/bytedance/sdk/openadsdk/component/c;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/component/c;I)I

    .line 236
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c$4;->b:Lcom/bytedance/sdk/openadsdk/component/c;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/e/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/c$4;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/component/e/b;-><init>(IILcom/bytedance/sdk/openadsdk/core/f/n;)V

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/component/c;Lcom/bytedance/sdk/openadsdk/component/e/b;)V

    return-void
.end method
