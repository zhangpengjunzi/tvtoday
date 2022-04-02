.class public Lcom/bytedance/sdk/openadsdk/TTC2Proxy;
.super Ljava/lang/Object;
.source "TTC2Proxy.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/g/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$AppOpenAdListener;I)V
    .locals 1

    const/4 v0, 0x3

    .line 15
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setDurationSlotType(I)V

    .line 16
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/c;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$AppOpenAdListener;I)V

    return-void
.end method
