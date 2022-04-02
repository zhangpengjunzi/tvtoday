.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$1;
.super Ljava/lang/Object;
.source "ExpressAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$1;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$1;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$1;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/f/a;Lcom/bytedance/sdk/openadsdk/core/f/b;)V
    .locals 2

    .line 137
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$1;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;Ljava/util/List;)Ljava/util/List;

    .line 139
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$1;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;Ljava/util/List;)Ljava/util/List;

    .line 140
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$1;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$1;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 141
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$1;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;J)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$1;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;ILjava/lang/String;)V

    .line 145
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(I)V

    .line 146
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;)V

    :goto_0
    return-void
.end method
