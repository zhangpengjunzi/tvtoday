.class public Lcom/bytedance/sdk/component/b/a/a/a/a;
.super Ljava/lang/Object;
.source "OkCall.java"

# interfaces
.implements Lcom/bytedance/sdk/component/b/a/b;


# instance fields
.field a:Lcom/bytedance/sdk/component/c/b/e;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/c/b/e;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/a/a/a;->a:Lcom/bytedance/sdk/component/c/b/e;

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/b/a/m;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/bytedance/sdk/component/b/a/a/a/f;

    iget-object v1, p0, Lcom/bytedance/sdk/component/b/a/a/a/a;->a:Lcom/bytedance/sdk/component/c/b/e;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/c/b/e;->a()Lcom/bytedance/sdk/component/c/b/aa;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/b/a/a/a/f;-><init>(Lcom/bytedance/sdk/component/c/b/aa;)V

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/component/b/a/c;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/a;->a:Lcom/bytedance/sdk/component/c/b/e;

    new-instance v1, Lcom/bytedance/sdk/component/b/a/a/a/a$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/b/a/a/a/a$1;-><init>(Lcom/bytedance/sdk/component/b/a/a/a/a;Lcom/bytedance/sdk/component/b/a/c;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/c/b/e;->a(Lcom/bytedance/sdk/component/c/b/f;)V

    return-void
.end method

.method public b()Lcom/bytedance/sdk/component/b/a/b;
    .locals 2

    .line 49
    new-instance v0, Lcom/bytedance/sdk/component/b/a/a/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/component/b/a/a/a/a;->a:Lcom/bytedance/sdk/component/c/b/e;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/c/b/e;->b()Lcom/bytedance/sdk/component/c/b/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/b/a/a/a/a;-><init>(Lcom/bytedance/sdk/component/c/b/e;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/b/a/a/a/a;->b()Lcom/bytedance/sdk/component/b/a/b;

    move-result-object v0

    return-object v0
.end method
