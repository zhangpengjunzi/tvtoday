.class public abstract Lcom/bytedance/sdk/component/b/a/k;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/b/a/k$a;
    }
.end annotation


# instance fields
.field public a:Lcom/bytedance/sdk/component/b/a/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public a(Lcom/bytedance/sdk/component/b/a/i;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/k;->a:Lcom/bytedance/sdk/component/b/a/i;

    return-void
.end method

.method public abstract b()Lcom/bytedance/sdk/component/b/a/f;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract e()Lcom/bytedance/sdk/component/b/a/a;
.end method

.method public f()Lcom/bytedance/sdk/component/b/a/l;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/bytedance/sdk/component/b/a/k$a;
    .locals 1

    .line 40
    new-instance v0, Lcom/bytedance/sdk/component/b/a/k$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/b/a/k$a;-><init>(Lcom/bytedance/sdk/component/b/a/k;)V

    return-object v0
.end method
