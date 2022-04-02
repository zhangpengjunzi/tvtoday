.class final Lcom/bytedance/sdk/openadsdk/c/a$a$1;
.super Ljava/lang/Object;
.source "ImageLoaderWrapper.java"

# interfaces
.implements Lcom/bytedance/sdk/component/e/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/c/a$a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/component/e/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/component/e/b/e;Ljava/lang/Throwable;)Lcom/bytedance/sdk/component/e/b/d;
    .locals 3

    .line 173
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageLoaderWrapper"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/component/e/b/e;->c(J)V

    .line 179
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/e/b/d;

    const/4 v1, 0x0

    const-string v2, "net failed"

    invoke-direct {v0, v1, p2, v2}, Lcom/bytedance/sdk/component/e/b/d;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/e/b/d;->a(Lcom/bytedance/sdk/component/e/g;)V

    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/component/e/e;Lcom/bytedance/sdk/component/b/a/m;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/e/e;",
            "Lcom/bytedance/sdk/component/b/a/m;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/e;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 148
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/m;->g()Lcom/bytedance/sdk/component/b/a/e;

    move-result-object p1

    .line 149
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/e;->a()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 153
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/b/a/e;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/b/a/e;->b(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 157
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public synthetic a(Lcom/bytedance/sdk/component/e/e;)Lcom/bytedance/sdk/component/e/f;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/a$a$1;->b(Lcom/bytedance/sdk/component/e/e;)Lcom/bytedance/sdk/component/e/b/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bytedance/sdk/component/e/e;)Lcom/bytedance/sdk/component/e/b/d;
    .locals 6

    .line 93
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/component/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/a;->e()Lcom/bytedance/sdk/component/b/a/i;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/bytedance/sdk/component/b/a/k$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/b/a/k$a;-><init>()V

    .line 95
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/b/a/k$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/k$a;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/k$a;->a()Lcom/bytedance/sdk/component/b/a/k$a;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/k$a;->b()Lcom/bytedance/sdk/component/b/a/k;

    move-result-object v1

    .line 100
    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/e;->c()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 101
    new-instance v2, Lcom/bytedance/sdk/component/e/b/e;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/e/b/e;-><init>()V

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/component/e/b/e;->a(J)V

    .line 108
    :cond_1
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/b/a/i;->a(Lcom/bytedance/sdk/component/b/a/k;)Lcom/bytedance/sdk/component/b/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/b/a/b;->a()Lcom/bytedance/sdk/component/b/a/m;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/component/e/b/e;->b(J)V

    .line 114
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/bytedance/sdk/openadsdk/c/a$a$1;->a(Lcom/bytedance/sdk/component/e/e;Lcom/bytedance/sdk/component/b/a/m;)Ljava/util/Map;

    move-result-object p1

    .line 116
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/b/a/m;->f()Lcom/bytedance/sdk/component/b/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/n;->d()[B

    move-result-object v0

    if-eqz v2, :cond_3

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/component/e/b/e;->c(J)V

    .line 122
    :cond_3
    new-instance v1, Lcom/bytedance/sdk/component/e/b/d;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/b/a/m;->c()I

    move-result v4

    const-string v5, ""

    invoke-direct {v1, v4, v0, v5, p1}, Lcom/bytedance/sdk/component/e/b/d;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 124
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/e/b/d;->a(Lcom/bytedance/sdk/component/e/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-static {v3}, Lcom/bytedance/sdk/component/e/c/c/b;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception p1

    .line 130
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/c/a$a$1;->a(Lcom/bytedance/sdk/component/e/b/e;Ljava/lang/Throwable;)Lcom/bytedance/sdk/component/e/b/d;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    invoke-static {v3}, Lcom/bytedance/sdk/component/e/c/c/b;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_1
    move-exception p1

    invoke-static {v3}, Lcom/bytedance/sdk/component/e/c/c/b;->a(Ljava/io/Closeable;)V

    throw p1
.end method
