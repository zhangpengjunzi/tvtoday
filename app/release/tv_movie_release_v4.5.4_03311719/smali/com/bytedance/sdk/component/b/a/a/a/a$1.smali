.class Lcom/bytedance/sdk/component/b/a/a/a/a$1;
.super Ljava/lang/Object;
.source "OkCall.java"

# interfaces
.implements Lcom/bytedance/sdk/component/c/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/b/a/a/a/a;->a(Lcom/bytedance/sdk/component/b/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/b/a/c;

.field final synthetic b:Lcom/bytedance/sdk/component/b/a/a/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/b/a/a/a/a;Lcom/bytedance/sdk/component/b/a/c;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/a/a/a$1;->b:Lcom/bytedance/sdk/component/b/a/a/a/a;

    iput-object p2, p0, Lcom/bytedance/sdk/component/b/a/a/a/a$1;->a:Lcom/bytedance/sdk/component/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/c/b/e;Lcom/bytedance/sdk/component/c/b/aa;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/a$1;->a:Lcom/bytedance/sdk/component/b/a/c;

    new-instance v1, Lcom/bytedance/sdk/component/b/a/a/a/a;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/component/b/a/a/a/a;-><init>(Lcom/bytedance/sdk/component/c/b/e;)V

    new-instance p1, Lcom/bytedance/sdk/component/b/a/a/a/f;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/component/b/a/a/a/f;-><init>(Lcom/bytedance/sdk/component/c/b/aa;)V

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/b/a/c;->a(Lcom/bytedance/sdk/component/b/a/b;Lcom/bytedance/sdk/component/b/a/m;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/c/b/e;Ljava/io/IOException;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/a$1;->a:Lcom/bytedance/sdk/component/b/a/c;

    new-instance v1, Lcom/bytedance/sdk/component/b/a/a/a/a;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/component/b/a/a/a/a;-><init>(Lcom/bytedance/sdk/component/c/b/e;)V

    invoke-interface {v0, v1, p2}, Lcom/bytedance/sdk/component/b/a/c;->a(Lcom/bytedance/sdk/component/b/a/b;Ljava/io/IOException;)V

    return-void
.end method
