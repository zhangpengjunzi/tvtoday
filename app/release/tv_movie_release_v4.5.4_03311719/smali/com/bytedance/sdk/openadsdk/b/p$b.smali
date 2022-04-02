.class Lcom/bytedance/sdk/openadsdk/b/p$b;
.super Ljava/lang/Object;
.source "OpenAppSuccEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    .line 192
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/b/p$b;->a:I

    const/16 v0, 0x1388

    .line 193
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/b/p$b;->b:I

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/b/p$b;
    .locals 1

    .line 208
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/p$b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/p$b;-><init>()V

    return-object v0
.end method
