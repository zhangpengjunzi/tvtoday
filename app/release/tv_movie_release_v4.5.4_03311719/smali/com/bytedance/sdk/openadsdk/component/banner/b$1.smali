.class Lcom/bytedance/sdk/openadsdk/component/banner/b$1;
.super Ljava/lang/Object;
.source "BannerAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/banner/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/banner/b;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$1;->b:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BannerAdManager"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    if-eqz p1, :cond_0

    .line 69
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/b$a;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/f/a;Lcom/bytedance/sdk/openadsdk/core/f/b;)V
    .locals 1

    .line 75
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 77
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ao()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 78
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$1;->b:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    invoke-static {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Lcom/bytedance/sdk/openadsdk/component/banner/b;Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;)V

    goto :goto_0

    :cond_0
    const-string p1, "BannerAdManager"

    const-string p2, "Banner ad parsing failed/ad is empty"

    .line 80
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    if-eqz p1, :cond_1

    .line 82
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/b$a;->a()V

    :cond_1
    :goto_0
    return-void
.end method
