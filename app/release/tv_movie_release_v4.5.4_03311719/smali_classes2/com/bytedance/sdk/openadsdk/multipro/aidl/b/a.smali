.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;
.super Lcom/bytedance/sdk/openadsdk/IAppOpenAdInteractionListener$Stub;
.source "AppOpenAdListenerImpl.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/IAppOpenAdInteractionListener$Stub;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->b:Landroid/os/Handler;

    .line 19
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->a:Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;)Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->a:Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;

    return-object p0
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->a:Lcom/bytedance/sdk/openadsdk/TTAppOpenAd$AppOpenAdInteractionListener;

    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->b:Landroid/os/Handler;

    return-void
.end method

.method private b()Landroid/os/Handler;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->b:Landroid/os/Handler;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdShow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdSkip()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdTimeOver()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$4;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->a()V

    return-void
.end method
