.class final Lcom/bytedance/sdk/openadsdk/k/e$1;
.super Lcom/bytedance/sdk/component/g/g;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/k/e;->v(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 772
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/k/e$1;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/g/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/e$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/e;->m(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/e;->a(I)I

    return-void
.end method
