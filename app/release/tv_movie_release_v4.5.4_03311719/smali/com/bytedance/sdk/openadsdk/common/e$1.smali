.class Lcom/bytedance/sdk/openadsdk/common/e$1;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/common/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/e$1;->e:Lcom/bytedance/sdk/openadsdk/common/e;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/e$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/common/e$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/common/e$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/common/e$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 93
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/e$1;->e:Lcom/bytedance/sdk/openadsdk/common/e;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/common/e;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    if-eqz p1, :cond_1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "4.4.0.2"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 97
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/e$1;->a:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/common/e$1;->b:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/common/e$1;->c:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/common/e$1;->d:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/common/e$1;->e:Lcom/bytedance/sdk/openadsdk/common/e;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/common/e;->a(Lcom/bytedance/sdk/openadsdk/common/e;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 98
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/e;->a()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v3, v2, :cond_0

    .line 99
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/e;->a()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "pangle sdk build info"

    .line 103
    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_1
    return-void
.end method
