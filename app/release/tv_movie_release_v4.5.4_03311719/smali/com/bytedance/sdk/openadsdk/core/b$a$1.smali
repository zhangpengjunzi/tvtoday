.class Lcom/bytedance/sdk/openadsdk/core/b$a$1;
.super Ljava/lang/Object;
.source "AdInfoFactory.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/b$a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/b$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/b$a;I)V
    .locals 0

    .line 811
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b$a$1;->b:Lcom/bytedance/sdk/openadsdk/core/b$a;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/b$a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/g/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 814
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/b;->b()Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object v0

    const-string v1, "creative_error"

    .line 815
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/b$a$1;->a:I

    .line 816
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/b;->b(I)Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/b$a$1;->a:I

    .line 817
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object v0

    return-object v0
.end method
