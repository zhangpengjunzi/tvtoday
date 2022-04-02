.class Lcom/bytedance/sdk/openadsdk/g/c/d$2;
.super Lcom/bytedance/sdk/component/g/g;
.source "LogUploaderImpl4MultiProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/g/c/d;->a(Lcom/bytedance/sdk/openadsdk/g/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/g/a;

.field final synthetic b:Z

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/g/c/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/c/d;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a;Z)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/c/d$2;->c:Lcom/bytedance/sdk/openadsdk/g/c/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/g/c/d$2;->a:Lcom/bytedance/sdk/openadsdk/g/a;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/g/c/d$2;->b:Z

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c/d$2;->c:Lcom/bytedance/sdk/openadsdk/g/c/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/c/d$2;->a:Lcom/bytedance/sdk/openadsdk/g/a;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/c/d;->a(Lcom/bytedance/sdk/openadsdk/g/c/d;Lcom/bytedance/sdk/openadsdk/g/a;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/g/c/d$2;->b:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
