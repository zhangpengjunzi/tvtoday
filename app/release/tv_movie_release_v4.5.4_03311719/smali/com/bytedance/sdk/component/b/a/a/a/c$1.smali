.class Lcom/bytedance/sdk/component/b/a/a/a/c$1;
.super Ljava/lang/Object;
.source "OkClient.java"

# interfaces
.implements Lcom/bytedance/sdk/component/c/b/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/b/a/a/a/c;-><init>(Lcom/bytedance/sdk/component/b/a/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/b/a/g;

.field final synthetic b:Lcom/bytedance/sdk/component/b/a/a/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/b/a/a/a/c;Lcom/bytedance/sdk/component/b/a/g;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/a/a/c$1;->b:Lcom/bytedance/sdk/component/b/a/a/a/c;

    iput-object p2, p0, Lcom/bytedance/sdk/component/b/a/a/a/c$1;->a:Lcom/bytedance/sdk/component/b/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/c/b/t$a;)Lcom/bytedance/sdk/component/c/b/aa;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/c$1;->a:Lcom/bytedance/sdk/component/b/a/g;

    new-instance v1, Lcom/bytedance/sdk/component/b/a/a/a/b;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/component/b/a/a/a/b;-><init>(Lcom/bytedance/sdk/component/c/b/t$a;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/b/a/g;->a(Lcom/bytedance/sdk/component/b/a/g$a;)Lcom/bytedance/sdk/component/b/a/m;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/b/a/a/a/f;

    .line 30
    iget-object p1, p1, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Lcom/bytedance/sdk/component/c/b/aa;

    return-object p1
.end method
