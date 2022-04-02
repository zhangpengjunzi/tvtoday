.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;
.super Ljava/lang/Object;
.source "ExpressAdLoadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;J)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 208
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;Lcom/bytedance/sdk/openadsdk/core/f/n;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 214
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->e(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/t;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;J)V

    goto :goto_1

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->f(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/t;->b(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->a:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/b/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;J)V

    .line 218
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;->onNativeExpressAdLoad(Ljava/util/List;)V

    goto :goto_2

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    move-result-object v0

    const/16 v1, 0x67

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;->onError(ILjava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;I)V

    .line 224
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->g(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->g(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$a;->a(Ljava/util/List;)V

    goto :goto_3

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;->onError(ILjava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;I)V

    .line 232
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->g(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->g(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$a;->a()V

    .line 237
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->h(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)V

    return-void
.end method
