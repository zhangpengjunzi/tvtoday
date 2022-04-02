.class Lcom/bytedance/sdk/openadsdk/component/reward/k$2;
.super Lcom/bytedance/sdk/component/g/g;
.source "TTFullScreenVideoAdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/k;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/k;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/k;Ljava/lang/String;I)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/k;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k$2;->a:I

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/k;->c(Lcom/bytedance/sdk/openadsdk/component/reward/k;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 281
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k$2;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/k;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/k;->d(Lcom/bytedance/sdk/openadsdk/component/reward/k;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "MultiProcess"

    const-string v3, "start registerFullScreenVideoListener ! "

    .line 284
    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v3, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/k;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/k;->d(Lcom/bytedance/sdk/openadsdk/component/reward/k;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;-><init>(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    .line 286
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 287
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 290
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/k$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/k;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/k;->e(Lcom/bytedance/sdk/openadsdk/component/reward/k;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerFullVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;)V

    const-string v0, "end registerFullScreenVideoListener ! "

    .line 291
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 294
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
