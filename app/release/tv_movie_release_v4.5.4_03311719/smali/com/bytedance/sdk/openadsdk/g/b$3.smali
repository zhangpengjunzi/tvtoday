.class Lcom/bytedance/sdk/openadsdk/g/b$3;
.super Ljava/lang/Object;
.source "StatsLogManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/g/b;->e(Lcom/bytedance/sdk/openadsdk/g/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/g/a/b;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/g/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/b;Lcom/bytedance/sdk/openadsdk/g/a/b;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/b$3;->b:Lcom/bytedance/sdk/openadsdk/g/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/b$3;->a:Lcom/bytedance/sdk/openadsdk/g/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/g/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$3;->a:Lcom/bytedance/sdk/openadsdk/g/a/b;

    return-object v0
.end method
