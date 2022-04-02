.class Lcom/bytedance/sdk/openadsdk/component/c/b$3;
.super Ljava/lang/Object;
.source "TTInteractionAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/c/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/c/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/c/b;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 136
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->i(Lcom/bytedance/sdk/openadsdk/component/c/b;)V

    .line 137
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->c(Lcom/bytedance/sdk/openadsdk/component/c/b;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/c/b;->d(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v0

    const-string v1, "interaction"

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/e;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->f(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->f(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;->onAdDismiss()V

    :cond_0
    const-string p1, "TTInteractionAdImpl"

    const-string v0, "dislike event is emitted"

    .line 141
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 125
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p3, p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->a(Lcom/bytedance/sdk/openadsdk/component/c/b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 126
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/c/b;->b(Lcom/bytedance/sdk/openadsdk/component/c/b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 129
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->g(Lcom/bytedance/sdk/openadsdk/component/c/b;)V

    .line 131
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->h(Lcom/bytedance/sdk/openadsdk/component/c/b;)V

    return-void
.end method
