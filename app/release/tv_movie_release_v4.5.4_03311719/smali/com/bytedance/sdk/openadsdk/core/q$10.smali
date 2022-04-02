.class Lcom/bytedance/sdk/openadsdk/core/q$10;
.super Ljava/lang/Object;
.source "NetApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/q;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/q;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/q;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q$10;->b:Lcom/bytedance/sdk/openadsdk/core/q;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/q$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$10;->b:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$10;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;Ljava/lang/String;)V

    return-void
.end method
