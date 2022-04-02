.class final Lcom/bytedance/sdk/openadsdk/e/a/b$1;
.super Ljava/lang/Object;
.source "DoInterstitialWebViewCloseMethod.java"

# interfaces
.implements Lcom/bytedance/sdk/component/a/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/e/a/b;->a(Lcom/bytedance/sdk/component/a/r;Lcom/bytedance/sdk/openadsdk/core/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/y;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/y;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/a/d;
    .locals 2

    .line 27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/a/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/e/a/b;-><init>(Lcom/bytedance/sdk/openadsdk/core/y;)V

    return-object v0
.end method
