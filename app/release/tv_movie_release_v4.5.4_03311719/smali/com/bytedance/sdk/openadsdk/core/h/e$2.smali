.class Lcom/bytedance/sdk/openadsdk/core/h/e$2;
.super Ljava/lang/Object;
.source "PermissionsResultAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/h/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/h/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/h/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/e;Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e$2;->b:Lcom/bytedance/sdk/openadsdk/core/h/e;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/h/e$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e$2;->b:Lcom/bytedance/sdk/openadsdk/core/h/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a(Ljava/lang/String;)V

    return-void
.end method
