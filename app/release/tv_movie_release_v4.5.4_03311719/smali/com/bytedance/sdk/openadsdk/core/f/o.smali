.class public Lcom/bytedance/sdk/openadsdk/core/f/o;
.super Ljava/lang/Object;
.source "NetExtParams.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:Lorg/json/JSONArray;

.field public f:I

.field public g:J

.field public h:Lorg/json/JSONObject;

.field public i:Lcom/bytedance/sdk/openadsdk/core/f/r;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/t;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/o;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/o;->b:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/o;->c:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/o;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/o;->e:Lorg/json/JSONArray;

    const/4 v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/o;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/o;->g:J

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/o;->h:Lorg/json/JSONObject;

    return-void
.end method
