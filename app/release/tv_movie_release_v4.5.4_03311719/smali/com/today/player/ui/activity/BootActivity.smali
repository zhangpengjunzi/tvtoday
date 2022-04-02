.class public Lcom/today/player/ui/activity/BootActivity;
.super Lcom/today/player/base/BaseActivity;
.source "BootActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/today/player/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b002b

    return v0
.end method

.method protected init()V
    .locals 1

    .line 24
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public initX5(Lcom/today/player/event/X5Event;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onDestroy()V

    .line 41
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method
