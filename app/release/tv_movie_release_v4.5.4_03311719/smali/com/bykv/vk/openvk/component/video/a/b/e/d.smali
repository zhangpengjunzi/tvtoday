.class public Lcom/bykv/vk/openvk/component/video/a/b/e/d;
.super Ljava/lang/Object;
.source "NetworkSoureVolleyImpl.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/a/b/e/b;


# instance fields
.field private a:Lcom/bytedance/sdk/component/b/a/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/e/d;->a:Lcom/bytedance/sdk/component/b/a/i;

    .line 25
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/b;->e()Lcom/bytedance/sdk/component/b/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/e/d;->a:Lcom/bytedance/sdk/component/b/a/i;

    return-void
.end method


# virtual methods
.method public a(Lcom/bykv/vk/openvk/component/video/a/b/e/e;)Lcom/bykv/vk/openvk/component/video/a/b/e/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/bytedance/sdk/component/b/a/k$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/b/a/k$a;-><init>()V

    .line 33
    :try_start_0
    iget-object v1, p1, Lcom/bykv/vk/openvk/component/video/a/b/e/e;->e:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 34
    iget-object v1, p1, Lcom/bykv/vk/openvk/component/video/a/b/e/e;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    .line 43
    :cond_1
    invoke-virtual {v0, v3, v2}, Lcom/bytedance/sdk/component/b/a/k$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/k$a;

    goto :goto_0

    .line 47
    :cond_2
    iget-object v1, p1, Lcom/bykv/vk/openvk/component/video/a/b/e/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/b/a/k$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/k$a;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/k$a;->a()Lcom/bytedance/sdk/component/b/a/k$a;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/k$a;->b()Lcom/bytedance/sdk/component/b/a/k;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/e/d;->a:Lcom/bytedance/sdk/component/b/a/i;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/b/a/i;->a(Lcom/bytedance/sdk/component/b/a/k;)Lcom/bytedance/sdk/component/b/a/b;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/bytedance/sdk/component/b/a/b;->a()Lcom/bytedance/sdk/component/b/a/m;

    move-result-object v0

    const-string v1, "NetworkSoureVolleyImpl"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "response code = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 54
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/m;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v1, Lcom/bykv/vk/openvk/component/video/a/b/e/f;

    invoke-direct {v1, v0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/e/f;-><init>(Lcom/bytedance/sdk/component/b/a/m;Lcom/bykv/vk/openvk/component/video/a/b/e/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
