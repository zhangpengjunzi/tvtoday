.class Lcom/bytedance/sdk/openadsdk/core/i/b$1;
.super Ljava/lang/Object;
.source "MSSdkImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/i/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/i/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/i/b;Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/i/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/i/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/i/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/b;->a(Lcom/bytedance/sdk/openadsdk/core/i/b;)Lcom/bytedance/mobsec/metasec/ov/PglMSManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/i/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/b;->a(Lcom/bytedance/sdk/openadsdk/core/i/b;)Lcom/bytedance/mobsec/metasec/ov/PglMSManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/b$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/mobsec/metasec/ov/PglMSManager;->setDeviceID(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
