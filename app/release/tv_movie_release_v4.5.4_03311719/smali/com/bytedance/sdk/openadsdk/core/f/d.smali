.class public Lcom/bytedance/sdk/openadsdk/core/f/d;
.super Ljava/lang/Object;
.source "AppOpenAdControl.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 14
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->a:I

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->a:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:I

    return-void
.end method
