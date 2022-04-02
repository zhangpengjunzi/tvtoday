.class Lcom/bytedance/sdk/openadsdk/component/b$1;
.super Lcom/bytedance/sdk/component/g/g;
.source "TTAppOpenAdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/b;Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/b;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/b;->a(Lcom/bytedance/sdk/openadsdk/component/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/b;->b(Lcom/bytedance/sdk/openadsdk/component/b;)Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "MultiProcess"

    const-string v2, "start registerAppOpenListener ! "

    .line 78
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    .line 79
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/b;->b(Lcom/bytedance/sdk/openadsdk/component/b;)Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;)V

    .line 84
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/b;->c(Lcom/bytedance/sdk/openadsdk/component/b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerAppOpenAdListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IAppOpenAdInteractionListener;)V

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/b;->a(Lcom/bytedance/sdk/openadsdk/component/b;Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;)Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;

    const-string v0, "end registerAppOpenAdListener ! "

    .line 87
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
