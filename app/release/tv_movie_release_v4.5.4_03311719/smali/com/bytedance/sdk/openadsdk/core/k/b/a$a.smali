.class public Lcom/bytedance/sdk/openadsdk/core/k/b/a$a;
.super Ljava/lang/Object;
.source "VastAbsoluteProgressTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/k/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Lcom/bytedance/sdk/openadsdk/core/k/b/c$b;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k/b/c$b;->a:Lcom/bytedance/sdk/openadsdk/core/k/b/c$b;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/b/a$a;->c:Lcom/bytedance/sdk/openadsdk/core/k/b/c$b;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/b/a$a;->d:Z

    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k/b/a$a;->a:Ljava/lang/String;

    .line 71
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/k/b/a$a;->b:J

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/k/b/a;
    .locals 7

    .line 85
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/k/b/a;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/k/b/a$a;->b:J

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/k/b/a$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/k/b/a$a;->c:Lcom/bytedance/sdk/openadsdk/core/k/b/c$b;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/k/b/a$a;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/k/b/a;-><init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/k/b/c$b;Ljava/lang/Boolean;)V

    return-object v6
.end method
