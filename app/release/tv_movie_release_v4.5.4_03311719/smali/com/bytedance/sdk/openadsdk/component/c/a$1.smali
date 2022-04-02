.class Lcom/bytedance/sdk/openadsdk/component/c/a$1;
.super Ljava/lang/Object;
.source "InteractionAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/c/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic d:J

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/component/c/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/c/a;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/a$1;->e:Lcom/bytedance/sdk/openadsdk/component/c/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/c/a$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/c/a$1;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/component/c/a$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/f/a;Lcom/bytedance/sdk/openadsdk/core/f/b;)V
    .locals 1

    .line 44
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 46
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ao()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 47
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/c/b;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/c/a$1;->b:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    .line 48
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/c/a$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/c/a$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/c/a$1;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/component/c/b;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/k;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    const/4 p2, -0x4

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    const/4 p2, -0x3

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
