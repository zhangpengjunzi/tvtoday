.class Lcom/bytedance/sdk/openadsdk/component/reward/view/a$2;
.super Ljava/lang/Object;
.source "RewardFullBackUpEndCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/reward/view/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/a;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/view/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a$2;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 150
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/view/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/a;->a(Lcom/bytedance/sdk/openadsdk/component/reward/view/a;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a$2;->a:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/a$2;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
