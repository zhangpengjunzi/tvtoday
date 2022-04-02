.class public Lcom/today/player/ui/activity/PlayActivity;
.super Lcom/today/player/base/BaseActivity;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/activity/PlayActivity$PlayStart;,
        Lcom/today/player/ui/activity/PlayActivity$a;
    }
.end annotation


# instance fields
.field private isShow:Z

.field private mController:Lcom/today/player/dkplayer/SimonVideoController;

.field private mVideoView:Lxyz/doikki/videoplayer/player/VideoView;

.field private mVodInfo:Lcom/today/player/bean/VodInfo;

.field private pauseAd:Lcom/today/player/ad/VideoSplashAd;

.field public playAd:Lcom/today/player/ad/VideoPlayAd;

.field private playUrl:Ljava/lang/String;

.field private sourceKey:Ljava/lang/String;

.field private videoAnalysis:Lcom/today/player/dkplayer/VideoAnalysis;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/today/player/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/today/player/ui/activity/PlayActivity;->isShow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/activity/PlayActivity;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/today/player/ui/activity/PlayActivity;->getContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/today/player/ui/activity/PlayActivity;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/PlayActivity;->playUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/today/player/ui/activity/PlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/today/player/ui/activity/PlayActivity;->playUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/today/player/ui/activity/PlayActivity;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/today/player/ui/activity/PlayActivity;->isShow:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/today/player/ui/activity/PlayActivity;)Lcom/today/player/dkplayer/VideoAnalysis;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/PlayActivity;->videoAnalysis:Lcom/today/player/dkplayer/VideoAnalysis;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/today/player/ui/activity/PlayActivity;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/PlayActivity;->sourceKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/today/player/ui/activity/PlayActivity;)Lcom/today/player/bean/VodInfo;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/today/player/ui/activity/PlayActivity;)Lcom/today/player/ad/VideoSplashAd;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/PlayActivity;->pauseAd:Lcom/today/player/ad/VideoSplashAd;

    return-object p0
.end method

.method static synthetic access$300(Lcom/today/player/ui/activity/PlayActivity;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/today/player/ui/activity/PlayActivity;->showSuccess()V

    return-void
.end method

.method static synthetic access$400(Lcom/today/player/ui/activity/PlayActivity;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/today/player/ui/activity/PlayActivity;->showSuccess()V

    return-void
.end method

.method static synthetic access$500(Lcom/today/player/ui/activity/PlayActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/today/player/ui/activity/PlayActivity;->playSet()V

    return-void
.end method

.method static synthetic access$600(Lcom/today/player/ui/activity/PlayActivity;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/PlayActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/today/player/ui/activity/PlayActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/today/player/ui/activity/PlayActivity;->next()V

    return-void
.end method

.method static synthetic access$800(Lcom/today/player/ui/activity/PlayActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/today/player/ui/activity/PlayActivity;->pre()V

    return-void
.end method

.method static synthetic access$900(Lcom/today/player/ui/activity/PlayActivity;)Lxyz/doikki/videoplayer/player/VideoView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVideoView:Lxyz/doikki/videoplayer/player/VideoView;

    return-object p0
.end method

.method private getContent()Ljava/lang/String;
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    if-eqz v0, :cond_1

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/today/player/bean/VodInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget-object v0, v0, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget-object v0, v0, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    iget-object v2, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget v2, v2, Lcom/today/player/bean/VodInfo;->playFlag:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget v2, v2, Lcom/today/player/bean/VodInfo;->playIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u96c6"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :catch_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private initData()V
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/today/player/ui/activity/PlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VodInfo"

    .line 270
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/VodInfo;

    iput-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    const-string v1, "sourceKey"

    .line 271
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->sourceKey:Ljava/lang/String;

    .line 272
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->sourceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upa/DownloadManager;->setPlay(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/today/player/bean/VodInfo;->seriesMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/today/player/ui/activity/PlayActivity;->showLoading()V

    .line 275
    invoke-direct {p0}, Lcom/today/player/ui/activity/PlayActivity;->loadVideoAd()V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 5

    const v0, 0x7f0800d8

    .line 199
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lxyz/doikki/videoplayer/player/VideoView;

    iput-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVideoView:Lxyz/doikki/videoplayer/player/VideoView;

    .line 200
    invoke-static {v0}, Lcom/today/player/util/PlayUtils;->a(Lxyz/doikki/videoplayer/player/VideoView;)V

    .line 201
    new-instance v0, Lcom/today/player/dkplayer/SimonVideoController;

    invoke-direct {v0, p0}, Lcom/today/player/dkplayer/SimonVideoController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    .line 202
    new-instance v1, Lcom/today/player/ui/activity/PlayActivity$3;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/PlayActivity$3;-><init>(Lcom/today/player/ui/activity/PlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/today/player/dkplayer/SimonVideoController;->setListener(Lcom/today/player/dkplayer/SimonVideoController$OnPlayStateChangeListener;)V

    .line 217
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    const/4 v1, 0x1

    new-array v2, v1, [Lxyz/doikki/videoplayer/controller/IControlComponent;

    new-instance v3, Lcom/today/player/ui/weight/GestureView;

    invoke-direct {v3, p0}, Lcom/today/player/ui/weight/GestureView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/today/player/dkplayer/SimonVideoController;->addControlComponent([Lxyz/doikki/videoplayer/controller/IControlComponent;)V

    .line 218
    new-instance v0, Lcom/today/player/dkplayer/SimonVodControlView;

    invoke-direct {v0, p0}, Lcom/today/player/dkplayer/SimonVodControlView;-><init>(Landroid/content/Context;)V

    .line 219
    new-instance v2, Lcom/today/player/ui/activity/PlayActivity$4;

    invoke-direct {v2, p0}, Lcom/today/player/ui/activity/PlayActivity$4;-><init>(Lcom/today/player/ui/activity/PlayActivity;)V

    invoke-virtual {v0, v2}, Lcom/today/player/dkplayer/SimonVodControlView;->setVodControlListener(Lcom/today/player/dkplayer/SimonVodControlView$a;)V

    .line 230
    iget-object v2, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    new-array v3, v1, [Lxyz/doikki/videoplayer/controller/IControlComponent;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/today/player/dkplayer/SimonVideoController;->addControlComponent([Lxyz/doikki/videoplayer/controller/IControlComponent;)V

    .line 231
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0, v1}, Lcom/today/player/dkplayer/SimonVideoController;->setCanChangePosition(Z)V

    .line 232
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0, v1}, Lcom/today/player/dkplayer/SimonVideoController;->setEnableInNormal(Z)V

    .line 233
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0, v1}, Lcom/today/player/dkplayer/SimonVideoController;->setGestureEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVideoView:Lxyz/doikki/videoplayer/player/VideoView;

    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->setVideoController(Lxyz/doikki/videoplayer/controller/BaseVideoController;)V

    .line 236
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVideoView:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0, v4}, Lxyz/doikki/videoplayer/player/VideoView;->setScreenScaleType(I)V

    .line 237
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVideoView:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/PlayActivity;->setLoadSir(Landroid/view/View;)V

    return-void
.end method

.method private loadVideoAd()V
    .locals 3

    .line 91
    new-instance v0, Lcom/today/player/ad/VideoPlayAd;

    const-string v1, "interaction"

    invoke-direct {v0, p0, v1}, Lcom/today/player/ad/VideoPlayAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->playAd:Lcom/today/player/ad/VideoPlayAd;

    .line 92
    new-instance v0, Lcom/today/player/ad/VideoSplashAd;

    const-string v1, "fullvideo"

    const-string v2, "3"

    invoke-direct {v0, p0, v1, v2}, Lcom/today/player/ad/VideoSplashAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->pauseAd:Lcom/today/player/ad/VideoSplashAd;

    .line 93
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->playAd:Lcom/today/player/ad/VideoPlayAd;

    invoke-direct {p0}, Lcom/today/player/ui/activity/PlayActivity;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/today/player/ad/VideoPlayAd;->loadAd(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->pauseAd:Lcom/today/player/ad/VideoSplashAd;

    invoke-direct {p0}, Lcom/today/player/ui/activity/PlayActivity;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/today/player/ad/VideoSplashAd;->loadAd(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->playAd:Lcom/today/player/ad/VideoPlayAd;

    new-instance v1, Lcom/today/player/ui/activity/PlayActivity$1;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/PlayActivity$1;-><init>(Lcom/today/player/ui/activity/PlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ad/VideoPlayAd;->setListener(Lcom/bt/jrsdk/listener/VideoAdListener;)V

    .line 135
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->pauseAd:Lcom/today/player/ad/VideoSplashAd;

    new-instance v1, Lcom/today/player/ui/activity/PlayActivity$2;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/PlayActivity$2;-><init>(Lcom/today/player/ui/activity/PlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ad/VideoSplashAd;->setListener(Lcom/bt/jrsdk/listener/SplashAdListener;)V

    return-void
.end method

.method private next()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/today/player/bean/VodInfo;->seriesMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget v0, v0, Lcom/today/player/bean/VodInfo;->playIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget-object v1, v1, Lcom/today/player/bean/VodInfo;->seriesMap:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget-object v2, v2, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    iget-object v3, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget v3, v3, Lcom/today/player/bean/VodInfo;->playFlag:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/today/player/bean/VodInfo$VodFrom;

    iget-object v2, v2, Lcom/today/player/bean/VodInfo$VodFrom;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "\u5df2\u7ecf\u662f\u6700\u540e1\u96c6"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget v1, v0, Lcom/today/player/bean/VodInfo;->playIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/today/player/bean/VodInfo;->playIndex:I

    .line 246
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->pauseAd:Lcom/today/player/ad/VideoSplashAd;

    if-eqz v0, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/today/player/ui/activity/PlayActivity;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/today/player/ad/VideoSplashAd;->loadAd(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private playSet()V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVideoView:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/today/player/ui/activity/PlayActivity;->isShow:Z

    .line 283
    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {v1}, Lcom/today/player/dkplayer/SimonVideoController;->cancelPause()V

    .line 286
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/today/player/event/RefreshEvent;

    iget-object v3, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget v3, v3, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/today/player/event/RefreshEvent;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget-object v0, v0, Lcom/today/player/bean/VodInfo;->seriesMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget-object v1, v1, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    iget-object v2, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget v2, v2, Lcom/today/player/bean/VodInfo;->playFlag:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/VodInfo$VodFrom;

    iget-object v1, v1, Lcom/today/player/bean/VodInfo$VodFrom;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget v1, v1, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/VodInfo$VodSeries;

    iget-object v0, v0, Lcom/today/player/bean/VodInfo$VodSeries;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->playUrl:Ljava/lang/String;

    .line 288
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget-object v1, v1, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    iget-object v2, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget v2, v2, Lcom/today/player/bean/VodInfo;->playFlag:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/VodInfo$VodFrom;

    iget-object v1, v1, Lcom/today/player/bean/VodInfo$VodFrom;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upa/DownloadManager;->setPlayFlag(Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget-object v1, v1, Lcom/today/player/bean/VodInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget-object v1, v1, Lcom/today/player/bean/VodInfo;->seriesMap:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget-object v2, v2, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    iget-object v3, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget v3, v3, Lcom/today/player/bean/VodInfo;->playFlag:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/today/player/bean/VodInfo$VodFrom;

    iget-object v2, v2, Lcom/today/player/bean/VodInfo$VodFrom;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget v2, v2, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/VodInfo$VodSeries;

    iget-object v1, v1, Lcom/today/player/bean/VodInfo$VodSeries;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/today/player/dkplayer/SimonVideoController;->a(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/today/player/ui/activity/PlayActivity;->f()V

    .line 295
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->videoAnalysis:Lcom/today/player/dkplayer/VideoAnalysis;

    if-nez v0, :cond_1

    .line 296
    new-instance v0, Lcom/today/player/dkplayer/VideoAnalysis;

    invoke-direct {v0}, Lcom/today/player/dkplayer/VideoAnalysis;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->videoAnalysis:Lcom/today/player/dkplayer/VideoAnalysis;

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->videoAnalysis:Lcom/today/player/dkplayer/VideoAnalysis;

    new-instance v1, Lcom/today/player/ui/activity/PlayActivity$a;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/PlayActivity$a;-><init>(Lcom/today/player/ui/activity/PlayActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/today/player/dkplayer/VideoAnalysis;->a(Landroid/content/Context;Lcom/today/player/dkplayer/VideoAnalysis$j;)Lcom/today/player/dkplayer/VideoAnalysis;

    .line 299
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->videoAnalysis:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-object v0, v0, Lcom/today/player/dkplayer/VideoAnalysis;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 301
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 303
    :cond_2
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upa/DownloadManager;->getSrcName()Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->playUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget-object v1, v1, Lcom/today/player/bean/VodInfo;->sourceKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 305
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->playUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upa/DownloadManager;->setCurrentPlayerUrl(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/today/player/ui/activity/PlayActivity;->setUrl()V

    return-void

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->videoAnalysis:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->sourceKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget-object v2, v2, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    iget-object v3, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget v3, v3, Lcom/today/player/bean/VodInfo;->playFlag:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/today/player/bean/VodInfo$VodFrom;

    iget-object v2, v2, Lcom/today/player/bean/VodInfo$VodFrom;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/today/player/ui/activity/PlayActivity;->playUrl:Ljava/lang/String;

    new-instance v4, Lcom/today/player/ui/activity/PlayActivity$PlayStart;

    invoke-direct {v4, p0}, Lcom/today/player/ui/activity/PlayActivity$PlayStart;-><init>(Lcom/today/player/ui/activity/PlayActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/today/player/dkplayer/VideoAnalysis;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/today/player/dkplayer/VideoAnalysis$play;)V

    return-void
.end method

.method private pre()V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/today/player/bean/VodInfo;->seriesMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget v0, v0, Lcom/today/player/bean/VodInfo;->playIndex:I

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "\u5df2\u7ecf\u662f\u7b2c1\u96c6"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVodInfo:Lcom/today/player/bean/VodInfo;

    iget v1, v0, Lcom/today/player/bean/VodInfo;->playIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/today/player/bean/VodInfo;->playIndex:I

    .line 259
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->pauseAd:Lcom/today/player/ad/VideoSplashAd;

    if-eqz v0, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/today/player/ui/activity/PlayActivity;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/today/player/ad/VideoSplashAd;->loadAd(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 407
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 408
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 409
    iget-object v2, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v2}, Lcom/today/player/dkplayer/SimonVideoController;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    invoke-super {p0, p1}, Lcom/today/player/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/16 v2, 0x15

    const/4 v3, 0x1

    const/16 v4, 0x16

    if-nez v1, :cond_8

    if-eq v0, v4, :cond_6

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x17

    if-eq v0, v1, :cond_4

    const/16 v1, 0x55

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x42

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x13

    if-ne v0, v1, :cond_3

    .line 425
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0}, Lcom/today/player/dkplayer/SimonVideoController;->b()V

    goto :goto_2

    :cond_3
    const/16 v1, 0x14

    if-ne v0, v1, :cond_a

    .line 427
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0}, Lcom/today/player/dkplayer/SimonVideoController;->b()V

    goto :goto_2

    .line 420
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVideoView:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->playAd:Lcom/today/player/ad/VideoPlayAd;

    if-eqz v0, :cond_5

    .line 421
    invoke-virtual {v0}, Lcom/today/player/ad/VideoPlayAd;->showAd()V

    .line 423
    :cond_5
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0}, Lcom/today/player/dkplayer/SimonVideoController;->d()V

    goto :goto_2

    :cond_6
    :goto_1
    if-eq v0, v4, :cond_7

    const/4 v3, -0x1

    .line 418
    :cond_7
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0, v3}, Lcom/today/player/dkplayer/SimonVideoController;->a(I)V

    goto :goto_2

    :cond_8
    if-ne v1, v3, :cond_a

    if-eq v0, v4, :cond_9

    if-ne v0, v2, :cond_a

    .line 430
    :cond_9
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0}, Lcom/today/player/dkplayer/SimonVideoController;->c()V

    .line 432
    :cond_a
    :goto_2
    invoke-super {p0, p1}, Lcom/today/player/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->videoAnalysis:Lcom/today/player/dkplayer/VideoAnalysis;

    if-eqz v0, :cond_1

    .line 315
    :try_start_0
    iget-object v0, v0, Lcom/today/player/dkplayer/VideoAnalysis;->b:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->videoAnalysis:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-object v0, v0, Lcom/today/player/dkplayer/VideoAnalysis;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 318
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->videoAnalysis:Lcom/today/player/dkplayer/VideoAnalysis;

    iput-object v1, v0, Lcom/today/player/dkplayer/VideoAnalysis;->b:Landroid/app/Dialog;

    .line 320
    :cond_0
    iput-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->videoAnalysis:Lcom/today/player/dkplayer/VideoAnalysis;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b0024

    return v0
.end method

.method protected init()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/today/player/ui/activity/PlayActivity;->initView()V

    .line 80
    invoke-direct {p0}, Lcom/today/player/ui/activity/PlayActivity;->initData()V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVideoView:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0}, Lcom/today/player/dkplayer/SimonVideoController;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    invoke-virtual {v0}, Lcom/today/player/dkplayer/SimonVideoController;->b()V

    goto :goto_0

    .line 517
    :cond_0
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 390
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onDestroy()V

    .line 391
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVideoView:Lxyz/doikki/videoplayer/player/VideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    .line 393
    iput-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->mVideoView:Lxyz/doikki/videoplayer/player/VideoView;

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->playAd:Lcom/today/player/ad/VideoPlayAd;

    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {v0}, Lcom/today/player/ad/VideoPlayAd;->recycler()V

    .line 397
    iput-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->playAd:Lcom/today/player/ad/VideoPlayAd;

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->pauseAd:Lcom/today/player/ad/VideoSplashAd;

    if-eqz v0, :cond_2

    .line 400
    invoke-virtual {v0}, Lcom/today/player/ad/VideoSplashAd;->recycler()V

    .line 401
    iput-object v1, p0, Lcom/today/player/ui/activity/PlayActivity;->pauseAd:Lcom/today/player/ad/VideoSplashAd;

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 364
    invoke-super {p0, p1, p2}, Lcom/today/player/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 382
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onPause()V

    .line 383
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVideoView:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->pause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 369
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onResume()V

    .line 370
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mVideoView:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/today/player/ui/activity/PlayActivity;->isShow:Z

    if-nez v1, :cond_0

    .line 371
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->resume()V

    .line 372
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity;->mController:Lcom/today/player/dkplayer/SimonVideoController;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lcom/today/player/dkplayer/SimonVideoController;->cancelPause()V

    :cond_0
    const/4 v0, 0x0

    .line 376
    iput-boolean v0, p0, Lcom/today/player/ui/activity/PlayActivity;->isShow:Z

    return-void
.end method

.method public setUrl()V
    .locals 2

    .line 437
    invoke-static {}, Lcom/upa/http/HttpRequest;->getInstance()Lcom/upa/http/HttpRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/upa/http/HttpRequest;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/today/player/ui/activity/PlayActivity$5;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/PlayActivity$5;-><init>(Lcom/today/player/ui/activity/PlayActivity;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
