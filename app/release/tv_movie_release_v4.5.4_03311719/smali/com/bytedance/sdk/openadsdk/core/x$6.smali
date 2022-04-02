.class Lcom/bytedance/sdk/openadsdk/core/x$6;
.super Lcom/bytedance/sdk/component/g/g;
.source "TTAdNativeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/x;->loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/a/g;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/x;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/g;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x$6;->c:Lcom/bytedance/sdk/openadsdk/core/x;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/x$6;->a:Lcom/bytedance/sdk/openadsdk/core/a/g;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/x$6;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$6;->c:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x$6;->a:Lcom/bytedance/sdk/openadsdk/core/a/g;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/common/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$6;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setNativeAdType(I)V

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$6;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setDurationSlotType(I)V

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$6;->c:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/x;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x$6;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/x$6;->a:Lcom/bytedance/sdk/openadsdk/core/a/g;

    const/16 v4, 0x1388

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;I)V

    return-void
.end method
