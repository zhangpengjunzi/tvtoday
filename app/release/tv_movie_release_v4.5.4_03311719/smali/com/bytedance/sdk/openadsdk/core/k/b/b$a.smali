.class public Lcom/bytedance/sdk/openadsdk/core/k/b/b$a;
.super Ljava/lang/Object;
.source "VastFractionalProgressTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/k/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:F

.field private c:Lcom/bytedance/sdk/openadsdk/core/k/b/c$b;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k/b/c$b;->a:Lcom/bytedance/sdk/openadsdk/core/k/b/c$b;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/b/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/k/b/c$b;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/b/b$a;->d:Z

    .line 79
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k/b/b$a;->a:Ljava/lang/String;

    .line 80
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/k/b/b$a;->b:F

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/k/b/b;
    .locals 7

    .line 94
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/k/b/b;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/k/b/b$a;->b:F

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/k/b/b$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/k/b/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/k/b/c$b;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/b/b$a;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/k/b/b;-><init>(FLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/k/b/c$b;Ljava/lang/Boolean;Lcom/bytedance/sdk/openadsdk/core/k/b/b$1;)V

    return-object v6
.end method
