.class Lcom/bytedance/sdk/openadsdk/component/reward/l$1;
.super Ljava/lang/Object;
.source "TTRewardVideoAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/l;->showRewardVideoAd(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/l;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/l;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "TTRewardVideoAdImpl"

    const-string v1, "show reward video error: "

    .line 211
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/l$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/l;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/l;->a(Lcom/bytedance/sdk/openadsdk/component/reward/l;)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object p1

    const-string v0, "fullscreen_interstitial_ad"

    const-string v1, "activity start  fail "

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
