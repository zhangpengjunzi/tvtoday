.class Lcom/bytedance/sdk/openadsdk/core/g/a$2;
.super Ljava/lang/Object;
.source "TTNativeAdImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/a;->getAdLogoView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/g/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/a;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 321
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/g/a;->showPrivacyActivity()V

    return-void
.end method
