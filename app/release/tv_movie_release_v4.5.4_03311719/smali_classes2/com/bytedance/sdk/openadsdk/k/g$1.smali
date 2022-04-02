.class final Lcom/bytedance/sdk/openadsdk/k/g$1;
.super Ljava/lang/Object;
.source "ImageBytesHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/h/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/k/g;->a(Lcom/bytedance/sdk/openadsdk/h/a;IILcom/bytedance/sdk/openadsdk/k/g$a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/k/g$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/k/g$a;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/g$1;->a:Lcom/bytedance/sdk/openadsdk/k/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g$1;->a:Lcom/bytedance/sdk/openadsdk/k/g$a;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/k/g$a;->b()V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/g$1;->a:Lcom/bytedance/sdk/openadsdk/k/g$a;

    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/k/g$a;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b;)V
    .locals 0

    .line 35
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/h/a/b;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/g$1;->a:Lcom/bytedance/sdk/openadsdk/k/g$a;

    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/k/g$a;->a(Lcom/bytedance/sdk/openadsdk/h/a/b;)V

    return-void

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/g$1;->a:Lcom/bytedance/sdk/openadsdk/k/g$a;

    if-eqz p1, :cond_1

    .line 41
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/k/g$a;->a()V

    :cond_1
    return-void
.end method
