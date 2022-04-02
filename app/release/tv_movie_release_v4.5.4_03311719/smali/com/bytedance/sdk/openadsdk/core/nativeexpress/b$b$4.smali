.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$4;
.super Ljava/lang/Object;
.source "BrandBannerController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->i()Lcom/bytedance/sdk/component/widget/SSWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$4;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 349
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$4;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->e(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/r;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
