.class Lcom/bytedance/sdk/openadsdk/core/f/l$10;
.super Ljava/lang/Object;
.source "LandingPageModel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/f/l;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f/l;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/l;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$10;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 422
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$10;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/l;->g:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/l$10;->a:Lcom/bytedance/sdk/openadsdk/core/f/l;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f/l;->b(Lcom/bytedance/sdk/openadsdk/core/f/l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V

    return-void
.end method
