.class Lcom/bytedance/sdk/openadsdk/component/a$4;
.super Ljava/lang/Object;
.source "TTAppOpenAdCacheManager.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/e/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/f/r;Lcom/bytedance/sdk/openadsdk/component/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/core/f/r;

.field final synthetic f:Lcom/bytedance/sdk/openadsdk/component/a$c;

.field final synthetic g:Lcom/bytedance/sdk/openadsdk/component/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/a;Ljava/io/File;IJLcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/core/f/r;Lcom/bytedance/sdk/openadsdk/component/a$c;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->g:Lcom/bytedance/sdk/openadsdk/component/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->a:Ljava/io/File;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->b:I

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->c:J

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->e:Lcom/bytedance/sdk/openadsdk/core/f/r;

    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->f:Lcom/bytedance/sdk/openadsdk/component/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bykv/vk/openvk/component/video/api/c/c;I)V
    .locals 2

    const-string p1, "TTAppOpenAdCacheManager"

    const-string p2, "Video file caching success"

    .line 259
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->g:Lcom/bytedance/sdk/openadsdk/component/a;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->a:Ljava/io/File;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/a;->a(Ljava/io/File;)V

    .line 263
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->g:Lcom/bytedance/sdk/openadsdk/component/a;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->b:I

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/a;->a(I)V

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->c:J

    sub-long/2addr p1, v0

    .line 267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/component/d/a;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;JZ)V

    .line 268
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->e:Lcom/bytedance/sdk/openadsdk/core/f/r;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/r;->c(J)V

    .line 270
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->e:Lcom/bytedance/sdk/openadsdk/core/f/r;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/r;->a(I)V

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->f:Lcom/bytedance/sdk/openadsdk/component/a$c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/a$c;->a()V

    .line 276
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Lcom/bytedance/sdk/openadsdk/component/a$d;)V

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/c/c;ILjava/lang/String;)V
    .locals 4

    const-string p1, "TTAppOpenAdCacheManager"

    const-string v0, "Video file caching failed"

    .line 281
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->c:J

    sub-long/2addr v0, v2

    .line 285
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->d:Lcom/bytedance/sdk/openadsdk/core/f/n;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/d/a;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;JZ)V

    .line 286
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->e:Lcom/bytedance/sdk/openadsdk/core/f/r;

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/r;->c(J)V

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->f:Lcom/bytedance/sdk/openadsdk/component/a$c;

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/a$c;->a(ILjava/lang/String;)V

    .line 294
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$4;->a:Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/f;->c(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public b(Lcom/bykv/vk/openvk/component/video/api/c/c;I)V
    .locals 0

    return-void
.end method
