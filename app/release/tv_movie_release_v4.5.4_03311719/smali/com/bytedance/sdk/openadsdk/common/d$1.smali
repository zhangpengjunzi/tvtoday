.class Lcom/bytedance/sdk/openadsdk/common/d$1;
.super Ljava/lang/Object;
.source "TTBottomNewStyleManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/common/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/d;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/d$1;->a:Lcom/bytedance/sdk/openadsdk/common/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/d$1;->a:Lcom/bytedance/sdk/openadsdk/common/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/d;->a(Lcom/bytedance/sdk/openadsdk/common/d;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/d$1;->a:Lcom/bytedance/sdk/openadsdk/common/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/d;->a(Lcom/bytedance/sdk/openadsdk/common/d;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/d$1;->a:Lcom/bytedance/sdk/openadsdk/common/d;

    const-string v0, "backward"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/d;->a(Lcom/bytedance/sdk/openadsdk/common/d;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/d$1;->a:Lcom/bytedance/sdk/openadsdk/common/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/d;->a(Lcom/bytedance/sdk/openadsdk/common/d;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->e()V

    :cond_0
    return-void
.end method
