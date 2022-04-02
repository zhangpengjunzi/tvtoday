.class public Lcom/bytedance/sdk/openadsdk/component/c/a;
.super Ljava/lang/Object;
.source "InteractionAdManager.java"


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/p;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/c/a;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/component/c/a;
    .locals 1

    .line 27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/c/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/component/c/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V
    .locals 9

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 36
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/c/a;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/component/c/a$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/c/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/c/a;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V

    const/4 p1, 0x0

    const/4 p3, 0x2

    invoke-interface {v7, p2, p1, p3, v8}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/f/o;ILcom/bytedance/sdk/openadsdk/core/p$a;)V

    return-void
.end method
