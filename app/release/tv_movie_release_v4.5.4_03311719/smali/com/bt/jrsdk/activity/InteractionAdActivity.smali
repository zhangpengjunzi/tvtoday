.class public Lcom/bt/jrsdk/activity/InteractionAdActivity;
.super Lcom/bt/jrsdk/activity/BaseActivity;
.source "InteractionAdActivity.java"


# instance fields
.field private adInfo:Lcom/bt/jrsdk/bean/VideoAdInfo;

.field private back_interaction:Landroid/widget/TextView;

.field private imgAd:Landroid/widget/ImageView;

.field private imgClose:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bt/jrsdk/activity/InteractionAdActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->closeBtnClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/bt/jrsdk/activity/InteractionAdActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->imageAdClick()V

    return-void
.end method

.method private closeBtnClick()V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->responseClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onClose()V

    .line 103
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->finish()V

    const-string v0, "close"

    .line 106
    invoke-static {v0}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private imageAdClick()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->responseClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onClick()V

    .line 115
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->showTime:J

    .line 116
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->go2WebActivity()V

    const-string v0, "ad click"

    .line 117
    invoke-static {v0}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f0800ac

    .line 57
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->imgAd:Landroid/widget/ImageView;

    const v0, 0x7f08004f

    .line 58
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->back_interaction:Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->imgAd:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pic:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    invoke-static {}, Lcom/bt/jrsdk/util/Utils;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const v0, 0x7f0800b2

    .line 61
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->imgClose:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->imgClose:Landroid/widget/ImageView;

    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->imgClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/bt/jrsdk/activity/InteractionAdActivity$1;

    invoke-direct {v1, p0}, Lcom/bt/jrsdk/activity/InteractionAdActivity$1;-><init>(Lcom/bt/jrsdk/activity/InteractionAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->imgAd:Landroid/widget/ImageView;

    new-instance v1, Lcom/bt/jrsdk/activity/InteractionAdActivity$2;

    invoke-direct {v1, p0}, Lcom/bt/jrsdk/activity/InteractionAdActivity$2;-><init>(Lcom/bt/jrsdk/activity/InteractionAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    iget-object v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->imgAd:Landroid/widget/ImageView;

    new-instance v1, Lcom/bt/jrsdk/activity/InteractionAdActivity$3;

    invoke-direct {v1, p0}, Lcom/bt/jrsdk/activity/InteractionAdActivity$3;-><init>(Lcom/bt/jrsdk/activity/InteractionAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->back_interaction:Landroid/widget/TextView;

    .line 88
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :goto_0
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onShow()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 131
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onClose()V

    .line 133
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    .line 135
    :cond_0
    invoke-super {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Lcom/bt/jrsdk/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0021

    .line 29
    invoke-virtual {p0, p1}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 31
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/bt/jrsdk/manager/AdObserver;->getInstance()Lcom/bt/jrsdk/manager/AdObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdObserver;->getVideoAdInfo(Ljava/lang/String;)Lcom/bt/jrsdk/bean/VideoAdInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    invoke-static {}, Lcom/bt/jrsdk/manager/AdObserver;->getInstance()Lcom/bt/jrsdk/manager/AdObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdObserver;->getVideoAdInfo(Ljava/lang/String;)Lcom/bt/jrsdk/bean/VideoAdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->adInfo:Lcom/bt/jrsdk/bean/VideoAdInfo;

    .line 34
    invoke-static {}, Lcom/bt/jrsdk/util/Utils;->getInstance()Lcom/bt/jrsdk/util/Utils;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->adInfo:Lcom/bt/jrsdk/bean/VideoAdInfo;

    invoke-virtual {v0}, Lcom/bt/jrsdk/bean/VideoAdInfo;->getPic()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/util/Utils;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pic:Landroid/graphics/Bitmap;

    .line 35
    iget-object p1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->adInfo:Lcom/bt/jrsdk/bean/VideoAdInfo;

    invoke-virtual {p1}, Lcom/bt/jrsdk/bean/VideoAdInfo;->getReqId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->reqId:Ljava/lang/String;

    .line 36
    iget-object p1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->adInfo:Lcom/bt/jrsdk/bean/VideoAdInfo;

    invoke-virtual {p1}, Lcom/bt/jrsdk/bean/VideoAdInfo;->getWebUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->webUrl:Ljava/lang/String;

    .line 37
    iget-object p1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->adInfo:Lcom/bt/jrsdk/bean/VideoAdInfo;

    iget p1, p1, Lcom/bt/jrsdk/bean/VideoAdInfo;->ads_id:I

    iput p1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->ads_id:I

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 40
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    const/16 v0, 0x7534

    const-string v1, "ad_info_null"

    invoke-interface {p1, v1, v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onError(Ljava/lang/String;I)V

    .line 41
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->finish()V

    goto :goto_0

    .line 46
    :cond_2
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 47
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    const/16 v0, 0x7533

    const-string v1, "pid_null"

    invoke-interface {p1, v1, v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onError(Ljava/lang/String;I)V

    .line 48
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    :cond_3
    const-string p1, "intent extra ad is null"

    .line 50
    invoke-static {p1}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->finish()V

    .line 53
    :goto_0
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/InteractionAdActivity;->initView()V

    return-void
.end method

.method protected onResult()V
    .locals 2

    .line 124
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/InteractionAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    :cond_0
    return-void
.end method
