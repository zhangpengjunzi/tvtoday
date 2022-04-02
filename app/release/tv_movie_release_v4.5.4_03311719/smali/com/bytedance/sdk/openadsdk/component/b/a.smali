.class public Lcom/bytedance/sdk/openadsdk/component/b/a;
.super Ljava/lang/Object;
.source "FeedAdManager.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/component/b/a;


# instance fields
.field private final b:Lcom/bytedance/sdk/openadsdk/core/p;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/component/b/a;
    .locals 2

    .line 36
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/b/a;->a:Lcom/bytedance/sdk/openadsdk/component/b/a;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/bytedance/sdk/openadsdk/component/b/a;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/b/a;->a:Lcom/bytedance/sdk/openadsdk/component/b/a;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/b/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/component/b/a;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/b/a;->a:Lcom/bytedance/sdk/openadsdk/component/b/a;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/b/a;->a:Lcom/bytedance/sdk/openadsdk/component/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
    .locals 10

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 52
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/f/o;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/core/f/o;-><init>()V

    new-instance v9, Lcom/bytedance/sdk/openadsdk/component/b/a$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/b/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/b/a;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V

    const/4 p1, 0x5

    invoke-interface {v7, p2, v8, p1, v9}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/f/o;ILcom/bytedance/sdk/openadsdk/core/p$a;)V

    return-void
.end method
