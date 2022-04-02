.class final Lcom/bytedance/sdk/openadsdk/component/a$6;
.super Ljava/lang/Object;
.source "TTAppOpenAdCacheManager.java"

# interfaces
.implements Lcom/bytedance/sdk/component/e/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/component/a$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/e/n<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/a$d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/a$d;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$6;->a:Lcom/bytedance/sdk/openadsdk/component/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 433
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$6;->a:Lcom/bytedance/sdk/openadsdk/component/a$d;

    if-eqz p1, :cond_0

    .line 434
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/a$d;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/e/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/e/j<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 419
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/j;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a$6;->a:Lcom/bytedance/sdk/openadsdk/component/a$d;

    if-eqz v0, :cond_0

    .line 421
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/j;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/a$d;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    .line 426
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$6;->a:Lcom/bytedance/sdk/openadsdk/component/a$d;

    if-eqz p1, :cond_2

    .line 427
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/a$d;->a()V

    :cond_2
    return-void
.end method
