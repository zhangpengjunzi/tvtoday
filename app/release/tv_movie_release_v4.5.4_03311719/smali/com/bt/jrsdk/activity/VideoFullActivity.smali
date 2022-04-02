.class public Lcom/bt/jrsdk/activity/VideoFullActivity;
.super Lcom/bt/jrsdk/activity/BaseActivity;
.source "VideoFullActivity.java"


# instance fields
.field private adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

.field private allTime:J

.field private close:Landroid/widget/ImageView;

.field private cover:Landroid/widget/ImageView;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private stopPosition:I

.field private tv_jump:Landroid/widget/TextView;

.field private video:Lxyz/doikki/videoplayer/player/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->stopPosition:I

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->allTime:J

    .line 122
    new-instance v0, Lcom/bt/jrsdk/activity/VideoFullActivity$2;

    invoke-direct {v0, p0}, Lcom/bt/jrsdk/activity/VideoFullActivity$2;-><init>(Lcom/bt/jrsdk/activity/VideoFullActivity;)V

    iput-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/bt/jrsdk/activity/VideoFullActivity;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->allTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/bt/jrsdk/activity/VideoFullActivity;J)J
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->allTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/bt/jrsdk/activity/VideoFullActivity;)Lxyz/doikki/videoplayer/player/VideoView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/bt/jrsdk/activity/VideoFullActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->cover:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/bt/jrsdk/activity/VideoFullActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->tv_jump:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/bt/jrsdk/activity/VideoFullActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->timerRuning()V

    return-void
.end method

.method static synthetic access$500(Lcom/bt/jrsdk/activity/VideoFullActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->close:Landroid/widget/ImageView;

    return-object p0
.end method

.method private initListener()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->cover:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initVideo()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->setScreenScaleType(I)V

    .line 67
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

    invoke-virtual {v1}, Lcom/bt/jrsdk/bean/SplashAdInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->setUrl(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-static {v0}, Lcom/today/player/util/PlayUtils;->a(Lxyz/doikki/videoplayer/player/VideoView;)V

    .line 69
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    .line 70
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->start()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    new-instance v1, Lcom/bt/jrsdk/activity/VideoFullActivity$1;

    invoke-direct {v1, p0}, Lcom/bt/jrsdk/activity/VideoFullActivity$1;-><init>(Lcom/bt/jrsdk/activity/VideoFullActivity;)V

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->setOnStateChangeListener(Lxyz/doikki/videoplayer/player/VideoView$OnStateChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0802f4

    .line 177
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lxyz/doikki/videoplayer/player/VideoView;

    iput-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    const v0, 0x7f0800b3

    .line 178
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->cover:Landroid/widget/ImageView;

    const v0, 0x7f0802d5

    .line 179
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->tv_jump:Landroid/widget/TextView;

    .line 180
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->cover:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pic:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f0800b2

    .line 181
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->close:Landroid/widget/ImageView;

    .line 182
    invoke-static {}, Lcom/bt/jrsdk/util/Utils;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->close:Landroid/widget/ImageView;

    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->close:Landroid/widget/ImageView;

    new-instance v1, Lcom/bt/jrsdk/activity/VideoFullActivity$4;

    invoke-direct {v1, p0}, Lcom/bt/jrsdk/activity/VideoFullActivity$4;-><init>(Lcom/bt/jrsdk/activity/VideoFullActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->initListener()V

    :cond_0
    return-void
.end method

.method private timerRuning()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    new-instance v1, Lcom/bt/jrsdk/activity/VideoFullActivity$3;

    invoke-direct {v1, p0}, Lcom/bt/jrsdk/activity/VideoFullActivity$3;-><init>(Lcom/bt/jrsdk/activity/VideoFullActivity;)V

    invoke-static {v0, v1}, Lcom/bt/jrsdk/util/VideoTimeUtil;->countDown(Lxyz/doikki/videoplayer/player/VideoView;Lcom/bt/jrsdk/util/VideoTimeUtil$CountDownListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->close:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->tv_jump:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6309\u8fd4\u56de\u952e\u5173\u95ed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    :cond_0
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 205
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onClose()V

    .line 206
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onFinish()V

    .line 208
    :cond_1
    invoke-super {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onBackPressed()V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/bt/jrsdk/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0b002d

    .line 46
    invoke-virtual {p0, p1}, Lcom/bt/jrsdk/activity/VideoFullActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/bt/jrsdk/manager/AdObserver;->getInstance()Lcom/bt/jrsdk/manager/AdObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdObserver;->getSplashAdInfo(Ljava/lang/String;)Lcom/bt/jrsdk/bean/SplashAdInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-static {}, Lcom/bt/jrsdk/manager/AdObserver;->getInstance()Lcom/bt/jrsdk/manager/AdObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdObserver;->getSplashAdInfo(Ljava/lang/String;)Lcom/bt/jrsdk/bean/SplashAdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

    .line 50
    invoke-virtual {p1}, Lcom/bt/jrsdk/bean/SplashAdInfo;->getReqId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->reqId:Ljava/lang/String;

    .line 51
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

    invoke-virtual {p1}, Lcom/bt/jrsdk/bean/SplashAdInfo;->getWebUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->webUrl:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

    iget p1, p1, Lcom/bt/jrsdk/bean/SplashAdInfo;->ads_id:I

    iput p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->ads_id:I

    .line 53
    invoke-static {}, Lcom/bt/jrsdk/util/Utils;->getInstance()Lcom/bt/jrsdk/util/Utils;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

    invoke-virtual {v0}, Lcom/bt/jrsdk/bean/SplashAdInfo;->getPic()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/util/Utils;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pic:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 56
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    const/16 v0, 0x7534

    const-string v1, "ad_info_null"

    invoke-interface {p1, v1, v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onError(Ljava/lang/String;I)V

    .line 57
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onFinish()V

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->finish()V

    .line 61
    :goto_0
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->initView()V

    .line 62
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->initVideo()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 242
    invoke-static {}, Lcom/bt/jrsdk/util/VideoTimeUtil;->recycler()V

    .line 243
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->cover:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    invoke-super {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 214
    invoke-super {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onPause()V

    .line 215
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/bt/jrsdk/util/VideoTimeUtil;->recycler()V

    .line 217
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->pause()V

    :cond_0
    return-void
.end method

.method protected onResult()V
    .locals 2

    .line 171
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onFinish()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 223
    invoke-super {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onResume()V

    .line 224
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->cover:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->start()V

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity;->video:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v1}, Lxyz/doikki/videoplayer/player/VideoView;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 233
    invoke-super {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onStop()V

    return-void
.end method
