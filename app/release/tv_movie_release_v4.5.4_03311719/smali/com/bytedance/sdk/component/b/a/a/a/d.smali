.class public Lcom/bytedance/sdk/component/b/a/a/a/d;
.super Lcom/bytedance/sdk/component/b/a/d;
.source "OkDispatcher.java"


# instance fields
.field a:Lcom/bytedance/sdk/component/c/b/v;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/c/b/v;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/component/b/a/d;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/a/a/d;->a:Lcom/bytedance/sdk/component/c/b/v;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/d;->a:Lcom/bytedance/sdk/component/c/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/c/b/v;->s()Lcom/bytedance/sdk/component/c/b/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/c/b/n;->a(I)V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/b/a/b;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/bytedance/sdk/component/b/a/a/a/d;->a:Lcom/bytedance/sdk/component/c/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/c/b/v;->s()Lcom/bytedance/sdk/component/c/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/c/b/n;->b()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 27
    new-instance v3, Lcom/bytedance/sdk/component/b/a/a/a/a;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/component/c/b/e;

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/component/b/a/a/a/a;-><init>(Lcom/bytedance/sdk/component/c/b/e;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/b/a/b;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/component/b/a/a/a/d;->a:Lcom/bytedance/sdk/component/c/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/c/b/v;->s()Lcom/bytedance/sdk/component/c/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/c/b/n;->c()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 36
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 37
    new-instance v3, Lcom/bytedance/sdk/component/b/a/a/a/a;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/component/c/b/e;

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/component/b/a/a/a/a;-><init>(Lcom/bytedance/sdk/component/c/b/e;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
