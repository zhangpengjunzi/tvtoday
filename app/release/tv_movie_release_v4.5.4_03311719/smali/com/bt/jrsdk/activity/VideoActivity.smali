.class public Lcom/bt/jrsdk/activity/VideoActivity;
.super Lcom/bt/jrsdk/activity/BaseActivity;
.source "VideoActivity.java"


# instance fields
.field private adInfo:Lcom/bt/jrsdk/bean/VideoAdInfo;

.field private back_video:Landroid/widget/TextView;

.field private cover:Landroid/widget/ImageView;

.field private imgClose:Landroid/widget/ImageView;

.field private isFinish:Z

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private video:Lxyz/doikki/videoplayer/player/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->isFinish:Z

    .line 117
    new-instance v0, Lcom/bt/jrsdk/activity/VideoActivity$2;

    invoke-direct {v0, p0}, Lcom/bt/jrsdk/activity/VideoActivity$2;-><init>(Lcom/bt/jrsdk/activity/VideoActivity;)V

    iput-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/bt/jrsdk/activity/VideoActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->cover:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bt/jrsdk/activity/VideoActivity;)Lxyz/doikki/videoplayer/player/VideoView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/bt/jrsdk/activity/VideoActivity;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->isFinish:Z

    return p0
.end method

.method static synthetic access$202(Lcom/bt/jrsdk/activity/VideoActivity;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->isFinish:Z

    return p1
.end method

.method private initListener()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->cover:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initVideo()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->setScreenScaleType(I)V

    .line 59
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->adInfo:Lcom/bt/jrsdk/bean/VideoAdInfo;

    invoke-virtual {v1}, Lcom/bt/jrsdk/bean/VideoAdInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->setUrl(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-static {v0}, Lcom/today/player/util/PlayUtils;->a(Lxyz/doikki/videoplayer/player/VideoView;)V

    .line 61
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    .line 62
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->start()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    new-instance v1, Lcom/bt/jrsdk/activity/VideoActivity$1;

    invoke-direct {v1, p0}, Lcom/bt/jrsdk/activity/VideoActivity$1;-><init>(Lcom/bt/jrsdk/activity/VideoActivity;)V

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->setOnStateChangeListener(Lxyz/doikki/videoplayer/player/VideoView$OnStateChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0802f4

    .line 144
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lxyz/doikki/videoplayer/player/VideoView;

    iput-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    const v0, 0x7f0800b3

    .line 145
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->cover:Landroid/widget/ImageView;

    .line 146
    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->pic:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    invoke-static {}, Lcom/bt/jrsdk/util/Utils;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f0800b2

    .line 148
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->imgClose:Landroid/widget/ImageView;

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->imgClose:Landroid/widget/ImageView;

    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->imgClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/bt/jrsdk/activity/VideoActivity$3;

    invoke-direct {v1, p0}, Lcom/bt/jrsdk/activity/VideoActivity$3;-><init>(Lcom/bt/jrsdk/activity/VideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/VideoActivity;->initListener()V

    goto :goto_0

    :cond_0
    const v0, 0x7f080050

    .line 168
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->back_video:Landroid/widget/TextView;

    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 175
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onClose()V

    .line 177
    iget-boolean v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->isFinish:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    .line 181
    :cond_0
    invoke-super {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Lcom/bt/jrsdk/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/VideoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0b002e

    .line 39
    invoke-virtual {p0, p1}, Lcom/bt/jrsdk/activity/VideoActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/bt/jrsdk/manager/AdObserver;->getInstance()Lcom/bt/jrsdk/manager/AdObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdObserver;->getVideoAdInfo(Ljava/lang/String;)Lcom/bt/jrsdk/bean/VideoAdInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    invoke-static {}, Lcom/bt/jrsdk/manager/AdObserver;->getInstance()Lcom/bt/jrsdk/manager/AdObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdObserver;->getVideoAdInfo(Ljava/lang/String;)Lcom/bt/jrsdk/bean/VideoAdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->adInfo:Lcom/bt/jrsdk/bean/VideoAdInfo;

    .line 43
    invoke-virtual {p1}, Lcom/bt/jrsdk/bean/VideoAdInfo;->getReqId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->reqId:Ljava/lang/String;

    .line 44
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->adInfo:Lcom/bt/jrsdk/bean/VideoAdInfo;

    invoke-virtual {p1}, Lcom/bt/jrsdk/bean/VideoAdInfo;->getWebUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->webUrl:Ljava/lang/String;

    .line 45
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->adInfo:Lcom/bt/jrsdk/bean/VideoAdInfo;

    iget p1, p1, Lcom/bt/jrsdk/bean/VideoAdInfo;->ads_id:I

    iput p1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->ads_id:I

    .line 46
    invoke-static {}, Lcom/bt/jrsdk/util/Utils;->getInstance()Lcom/bt/jrsdk/util/Utils;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->adInfo:Lcom/bt/jrsdk/bean/VideoAdInfo;

    invoke-virtual {v0}, Lcom/bt/jrsdk/bean/VideoAdInfo;->getPic()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/util/Utils;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->pic:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 49
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    const/16 v0, 0x7534

    const-string v1, "ad_info_null"

    invoke-interface {p1, v1, v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onError(Ljava/lang/String;I)V

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/VideoActivity;->finish()V

    .line 53
    :goto_0
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/VideoActivity;->initView()V

    .line 54
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/VideoActivity;->initVideo()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    .line 208
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/VideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 209
    invoke-super {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 186
    invoke-super {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onPause()V

    .line 187
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->pause()V

    :cond_0
    return-void
.end method

.method protected onResult()V
    .locals 2

    .line 138
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 194
    invoke-super {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onResume()V

    .line 195
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->isFinish:Z

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->start()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 202
    invoke-super {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onStop()V

    return-void
.end method
