.class Lcom/bytedance/sdk/component/c/b/a/e/g$3;
.super Lcom/bytedance/sdk/component/c/b/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/c/b/a/e/g;->a(ZIILcom/bytedance/sdk/component/c/b/a/e/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/bytedance/sdk/component/c/b/a/e/l;

.field final synthetic f:Lcom/bytedance/sdk/component/c/b/a/e/g;


# direct methods
.method varargs constructor <init>(Lcom/bytedance/sdk/component/c/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/bytedance/sdk/component/c/b/a/e/l;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$3;->f:Lcom/bytedance/sdk/component/c/b/a/e/g;

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$3;->a:Z

    iput p5, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$3;->c:I

    iput p6, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$3;->d:I

    iput-object p7, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$3;->e:Lcom/bytedance/sdk/component/c/b/a/e/l;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/c/b/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$3;->f:Lcom/bytedance/sdk/component/c/b/a/e/g;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$3;->a:Z

    iget v2, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$3;->c:I

    iget v3, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$3;->d:I

    iget-object v4, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$3;->e:Lcom/bytedance/sdk/component/c/b/a/e/l;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/component/c/b/a/e/g;->b(ZIILcom/bytedance/sdk/component/c/b/a/e/l;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
