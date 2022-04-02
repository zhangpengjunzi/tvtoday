.class Lcom/bytedance/sdk/openadsdk/common/e$2;
.super Ljava/lang/Object;
.source "TTPrivacyAdReportDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/e;->b()V
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

    .line 110
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/e$2;->a:Lcom/bytedance/sdk/openadsdk/common/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/e$2;->a:Lcom/bytedance/sdk/openadsdk/common/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/e;->b(Lcom/bytedance/sdk/openadsdk/common/e;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "loading ..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/e$2;->a:Lcom/bytedance/sdk/openadsdk/common/e;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/common/e;->cancel()V

    return-void
.end method
