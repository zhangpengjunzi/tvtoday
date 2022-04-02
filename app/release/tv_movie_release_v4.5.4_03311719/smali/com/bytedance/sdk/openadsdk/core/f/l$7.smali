.class Lcom/bytedance/sdk/openadsdk/core/f/l$7;
.super Ljava/lang/Object;
.source "LandingPageModel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/f/l;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f/l;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/l;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$7;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$7;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/l;->h(Lcom/bytedance/sdk/openadsdk/core/f/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$7;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/l;->p:Lcom/bytedance/sdk/openadsdk/core/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/b/b;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$7;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f/l;->h(Lcom/bytedance/sdk/openadsdk/core/f/l;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 281
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$7;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f/l;->i(Lcom/bytedance/sdk/openadsdk/core/f/l;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->performClick()Z

    .line 282
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$7;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/l;->a(Lcom/bytedance/sdk/openadsdk/core/f/l;Z)Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
