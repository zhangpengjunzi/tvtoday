.class public Lcom/bytedance/sdk/component/b/a/a/b/c;
.super Lcom/bytedance/sdk/component/b/a/i;
.source "NetClient.java"


# instance fields
.field public h:Lcom/bytedance/sdk/component/b/a/a/b/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/b/a/i$a;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/b/a/i;-><init>(Lcom/bytedance/sdk/component/b/a/i$a;)V

    .line 15
    new-instance p1, Lcom/bytedance/sdk/component/b/a/a/b/d;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/b/a/a/b/d;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/a/b/c;->h:Lcom/bytedance/sdk/component/b/a/a/b/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/b/a/k;)Lcom/bytedance/sdk/component/b/a/b;
    .locals 2

    .line 25
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/b/a/k;->a(Lcom/bytedance/sdk/component/b/a/i;)V

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->b()Lcom/bytedance/sdk/component/b/a/f;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->b()Lcom/bytedance/sdk/component/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/f;->a()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/k;->b()Lcom/bytedance/sdk/component/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/f;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/b/a/a/b/a;

    iget-object v1, p0, Lcom/bytedance/sdk/component/b/a/a/b/c;->h:Lcom/bytedance/sdk/component/b/a/a/b/d;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/component/b/a/a/b/a;-><init>(Lcom/bytedance/sdk/component/b/a/k;Lcom/bytedance/sdk/component/b/a/d;)V

    .line 31
    iget-object p1, p0, Lcom/bytedance/sdk/component/b/a/a/b/c;->h:Lcom/bytedance/sdk/component/b/a/a/b/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/a/b/d;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lcom/bytedance/sdk/component/b/a/d;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/b/c;->h:Lcom/bytedance/sdk/component/b/a/a/b/d;

    return-object v0
.end method
