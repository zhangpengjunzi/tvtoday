.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$1;
.super Ljava/lang/Object;
.source "BrandBannerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->g()Landroid/view/View;
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

    .line 280
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 283
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$b;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v0

    const-string v1, "banner_ad"

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    return-void
.end method
