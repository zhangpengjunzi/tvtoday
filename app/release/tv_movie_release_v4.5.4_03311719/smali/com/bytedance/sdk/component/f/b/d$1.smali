.class Lcom/bytedance/sdk/component/f/b/d$1;
.super Ljava/lang/Object;
.source "PostExecutor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/b/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/f/b/d;->a(Lcom/bytedance/sdk/component/f/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/f/a/a;

.field final synthetic b:Lcom/bytedance/sdk/component/f/b/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/f/b/d;Lcom/bytedance/sdk/component/f/a/a;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/bytedance/sdk/component/f/b/d$1;->b:Lcom/bytedance/sdk/component/f/b/d;

    iput-object p2, p0, Lcom/bytedance/sdk/component/f/b/d$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/b/a/b;Lcom/bytedance/sdk/component/b/a/m;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object p1, p0, Lcom/bytedance/sdk/component/f/b/d$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    if-eqz p1, :cond_1

    .line 113
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_1

    .line 115
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/m;->g()Lcom/bytedance/sdk/component/b/a/e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 117
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/e;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 118
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/b/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/b/a/e;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/component/f/b;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/m;->d()Z

    move-result v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/m;->c()I

    move-result v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/m;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/m;->f()Lcom/bytedance/sdk/component/b/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/n;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/m;->b()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/m;->a()J

    move-result-wide v8

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/component/f/b;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 122
    iget-object p2, p0, Lcom/bytedance/sdk/component/f/b/d$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    iget-object v0, p0, Lcom/bytedance/sdk/component/f/b/d$1;->b:Lcom/bytedance/sdk/component/f/b/d;

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Lcom/bytedance/sdk/component/f/b;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/b/a/b;Ljava/io/IOException;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/bytedance/sdk/component/f/b/d$1;->a:Lcom/bytedance/sdk/component/f/a/a;

    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/component/f/b/d$1;->b:Lcom/bytedance/sdk/component/f/b/d;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/component/f/a/a;->a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method
