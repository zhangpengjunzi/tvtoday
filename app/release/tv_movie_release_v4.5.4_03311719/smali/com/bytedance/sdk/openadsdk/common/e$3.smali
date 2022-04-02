.class Lcom/bytedance/sdk/openadsdk/common/e$3;
.super Ljava/lang/Object;
.source "TTPrivacyAdReportDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/e;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/common/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/e;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/e$3;->a:Lcom/bytedance/sdk/openadsdk/common/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/e$3;->a:Lcom/bytedance/sdk/openadsdk/common/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/e;->b(Lcom/bytedance/sdk/openadsdk/common/e;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/e$3;->a:Lcom/bytedance/sdk/openadsdk/common/e;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/common/e;->a(Lcom/bytedance/sdk/openadsdk/common/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
