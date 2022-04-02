.class Lcom/bytedance/sdk/openadsdk/core/x$2;
.super Lcom/bytedance/sdk/component/g/g;
.source "TTAdNativeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/x;->loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

.field final synthetic d:J

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/core/x;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;J)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x$2;->e:Lcom/bytedance/sdk/openadsdk/core/x;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/x$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/x$2;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/x$2;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    iput-wide p6, p0, Lcom/bytedance/sdk/openadsdk/core/x$2;->d:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$2;->e:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/common/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x$2;->e:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/x$2;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x$2;->e:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Lcom/bytedance/sdk/openadsdk/core/x;)Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/x$2;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v5

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/x$2$1;

    invoke-direct {v6, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/x$2;J)V

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/f/o;ILcom/bytedance/sdk/openadsdk/core/p$a;)V

    return-void

    :catch_0
    const-string v0, "Ad Slot not Valid, please check"

    .line 109
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x$2;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    const/4 v2, -0x1

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;->onError(ILjava/lang/String;)V

    return-void
.end method
