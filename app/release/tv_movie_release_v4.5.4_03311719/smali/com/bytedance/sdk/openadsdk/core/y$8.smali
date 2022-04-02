.class Lcom/bytedance/sdk/openadsdk/core/y$8;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/y;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/y;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/y;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/y$8;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/y$8;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/openadsdk/core/y;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/y$8;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/y;->c(Lcom/bytedance/sdk/openadsdk/core/y;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/y$8;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/y;->h()V

    return-void
.end method
