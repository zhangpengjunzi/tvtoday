.class public Lcom/today/player/ui/activity/ProjectionPlayActivity;
.super Lcom/today/player/base/BaseActivity;
.source "ProjectionPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/activity/ProjectionPlayActivity$PlayStart;
    }
.end annotation


# instance fields
.field public c:Lxyz/doikki/videoplayer/player/VideoView;

.field public d:Lcom/today/player/dkplayer/SimonVideoController;

.field public e:Lcom/today/player/dkplayer/VideoAnalysis;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/today/player/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->e:Lcom/today/player/dkplayer/VideoAnalysis;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 110
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 111
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v2, 0x15

    const/4 v3, 0x1

    const/16 v4, 0x16

    if-nez v1, :cond_4

    if-eq v0, v4, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    const/16 v1, 0x55

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->d:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0}, Lcom/today/player/dkplayer/SimonVideoController;->d()V

    goto :goto_1

    .line 115
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->d:Lcom/today/player/dkplayer/SimonVideoController;

    if-eq v0, v4, :cond_3

    const/4 v3, -0x1

    .line 119
    :cond_3
    invoke-virtual {v1, v3}, Lcom/today/player/dkplayer/SimonVideoController;->a(I)V

    goto :goto_1

    :cond_4
    if-ne v1, v3, :cond_6

    if-eq v0, v4, :cond_5

    if-ne v0, v2, :cond_6

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->d:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0}, Lcom/today/player/dkplayer/SimonVideoController;->c()V

    .line 126
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Lcom/today/player/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->e:Lcom/today/player/dkplayer/VideoAnalysis;

    if-eqz v0, :cond_0

    .line 132
    :try_start_0
    iget-object v0, v0, Lcom/today/player/dkplayer/VideoAnalysis;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->e:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-object v0, v0, Lcom/today/player/dkplayer/VideoAnalysis;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b0026

    return v0
.end method

.method public init()V
    .locals 5

    const v0, 0x7f0800d8

    .line 37
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/ProjectionPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lxyz/doikki/videoplayer/player/VideoView;

    iput-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    .line 38
    invoke-static {v0}, Lcom/today/player/util/PlayUtils;->a(Lxyz/doikki/videoplayer/player/VideoView;)V

    .line 39
    new-instance v0, Lcom/today/player/dkplayer/SimonVideoController;

    invoke-direct {v0, p0}, Lcom/today/player/dkplayer/SimonVideoController;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v1, Lcom/today/player/ui/activity/ProjectionPlayActivity$1;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/ProjectionPlayActivity$1;-><init>(Lcom/today/player/ui/activity/ProjectionPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/today/player/dkplayer/SimonVideoController;->setListener(Lcom/today/player/dkplayer/SimonVideoController$OnPlayStateChangeListener;)V

    .line 52
    iput-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->d:Lcom/today/player/dkplayer/SimonVideoController;

    const/4 v1, 0x1

    new-array v2, v1, [Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 53
    new-instance v3, Lcom/today/player/ui/weight/GestureView;

    invoke-direct {v3, p0}, Lcom/today/player/ui/weight/GestureView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/today/player/dkplayer/SimonVideoController;->addControlComponent([Lxyz/doikki/videoplayer/controller/IControlComponent;)V

    .line 54
    new-instance v0, Lcom/today/player/dkplayer/SimonVodControlView;

    invoke-direct {v0, p0}, Lcom/today/player/dkplayer/SimonVodControlView;-><init>(Landroid/content/Context;)V

    .line 55
    iget-object v2, v0, Lcom/today/player/dkplayer/SimonVodControlView;->i:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v2, v0, Lcom/today/player/dkplayer/SimonVodControlView;->f160j:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v2, v0, Lcom/today/player/dkplayer/SimonVodControlView;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v2, v0, Lcom/today/player/dkplayer/SimonVodControlView;->x:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v2, v0, Lcom/today/player/dkplayer/SimonVodControlView;->y:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v2, v0, Lcom/today/player/dkplayer/SimonVodControlView;->q:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 61
    instance-of v3, v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 62
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->d:Lcom/today/player/dkplayer/SimonVideoController;

    new-array v3, v1, [Lxyz/doikki/videoplayer/controller/IControlComponent;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/today/player/dkplayer/SimonVideoController;->addControlComponent([Lxyz/doikki/videoplayer/controller/IControlComponent;)V

    .line 65
    iget-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->d:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0, v1}, Lcom/today/player/dkplayer/SimonVideoController;->setCanChangePosition(Z)V

    .line 66
    iget-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->d:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0, v1}, Lcom/today/player/dkplayer/SimonVideoController;->setEnableInNormal(Z)V

    .line 67
    iget-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->d:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0, v1}, Lcom/today/player/dkplayer/SimonVideoController;->setGestureEnabled(Z)V

    .line 68
    iget-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    iget-object v1, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->d:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->setVideoController(Lxyz/doikki/videoplayer/controller/BaseVideoController;)V

    .line 69
    invoke-virtual {p0}, Lcom/today/player/ui/activity/ProjectionPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/today/player/ui/activity/ProjectionPlayActivity;->e()V

    .line 73
    new-instance v1, Lcom/today/player/dkplayer/VideoAnalysis;

    invoke-direct {v1}, Lcom/today/player/dkplayer/VideoAnalysis;-><init>()V

    iput-object v1, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->e:Lcom/today/player/dkplayer/VideoAnalysis;

    .line 74
    new-instance v2, Lcom/today/player/ui/activity/ProjectionPlayActivity$2;

    invoke-direct {v2, p0}, Lcom/today/player/ui/activity/ProjectionPlayActivity$2;-><init>(Lcom/today/player/ui/activity/ProjectionPlayActivity;)V

    invoke-virtual {v1, p0, v2}, Lcom/today/player/dkplayer/VideoAnalysis;->a(Landroid/content/Context;Lcom/today/player/dkplayer/VideoAnalysis$j;)Lcom/today/player/dkplayer/VideoAnalysis;

    .line 81
    iget-object v1, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->e:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-object v1, v1, Lcom/today/player/dkplayer/VideoAnalysis;->b:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->e:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-object v1, v1, Lcom/today/player/dkplayer/VideoAnalysis;->b:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->e:Lcom/today/player/dkplayer/VideoAnalysis;

    new-instance v2, Lcom/today/player/ui/activity/ProjectionPlayActivity$PlayStart;

    invoke-direct {v2, p0}, Lcom/today/player/ui/activity/ProjectionPlayActivity$PlayStart;-><init>(Lcom/today/player/ui/activity/ProjectionPlayActivity;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v3, v0, v2}, Lcom/today/player/dkplayer/VideoAnalysis;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/today/player/dkplayer/VideoAnalysis$play;)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 143
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onDestroy()V

    .line 144
    iget-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/today/player/ui/activity/ProjectionPlayActivity;->e()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 153
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onPause()V

    .line 154
    iget-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 161
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onResume()V

    .line 162
    iget-object v0, p0, Lcom/today/player/ui/activity/ProjectionPlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->resume()V

    :cond_0
    return-void
.end method
