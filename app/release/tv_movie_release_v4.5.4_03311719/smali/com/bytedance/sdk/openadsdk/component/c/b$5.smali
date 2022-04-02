.class Lcom/bytedance/sdk/openadsdk/component/c/b$5;
.super Ljava/lang/Object;
.source "TTInteractionAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/component/e/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/c/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/c/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/c/b;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 209
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->j(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->j(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->b()V

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

    .line 194
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/j;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/c/b;->b(Lcom/bytedance/sdk/openadsdk/component/c/b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/j;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->j(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->j(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->a()V

    :cond_0
    return-void

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->j(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 203
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->j(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->b()V

    :cond_2
    return-void
.end method
