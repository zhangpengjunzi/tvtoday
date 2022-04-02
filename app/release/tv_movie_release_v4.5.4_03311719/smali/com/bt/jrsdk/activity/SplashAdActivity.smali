.class public Lcom/bt/jrsdk/activity/SplashAdActivity;
.super Lcom/bt/jrsdk/activity/BaseActivity;
.source "SplashAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bt/jrsdk/activity/SplashAdActivity$SplashHandler;
    }
.end annotation


# static fields
.field private static final COUNT_DOWN:I = 0x1021


# instance fields
.field private adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

.field private handler:Lcom/bt/jrsdk/activity/SplashAdActivity$SplashHandler;

.field private imgAd:Landroid/widget/ImageView;

.field private imgClose:Landroid/widget/ImageView;

.field private tvCountDown:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bt/jrsdk/activity/SplashAdActivity;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->closeBtnClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/bt/jrsdk/activity/SplashAdActivity;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->imageAdClick()V

    return-void
.end method

.method static synthetic access$200(Lcom/bt/jrsdk/activity/SplashAdActivity;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->tvCountDown:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/bt/jrsdk/activity/SplashAdActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->imgClose:Landroid/widget/ImageView;

    return-object p0
.end method

.method private closeBtnClick()V
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->responseClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onClose()V

    .line 106
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onFinish()V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->finish()V

    const-string v0, "close"

    .line 109
    invoke-static {v0}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private countDown()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->handler:Lcom/bt/jrsdk/activity/SplashAdActivity$SplashHandler;

    invoke-virtual {v0}, Lcom/bt/jrsdk/activity/SplashAdActivity$SplashHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1021

    .line 63
    iput v1, v0, Landroid/os/Message;->what:I

    .line 64
    iget-object v1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

    invoke-virtual {v1}, Lcom/bt/jrsdk/bean/SplashAdInfo;->getCountDown()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->handler:Lcom/bt/jrsdk/activity/SplashAdActivity$SplashHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/bt/jrsdk/activity/SplashAdActivity$SplashHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private imageAdClick()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->responseClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onClick()V

    .line 118
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->showTime:J

    .line 119
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->go2WebActivity()V

    const-string v0, "splash click"

    .line 123
    invoke-static {v0}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f0802d5

    .line 70
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->tvCountDown:Landroid/widget/TextView;

    const v0, 0x7f0800b1

    .line 71
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->imgAd:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->tvCountDown:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

    invoke-virtual {v2}, Lcom/bt/jrsdk/bean/SplashAdInfo;->getCountDown()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u79d2\u8df3\u8fc7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->imgAd:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pic:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f0800b2

    .line 74
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->imgClose:Landroid/widget/ImageView;

    .line 75
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onShow()V

    .line 79
    :cond_0
    invoke-static {}, Lcom/bt/jrsdk/util/Utils;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->imgClose:Landroid/widget/ImageView;

    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->imgClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/bt/jrsdk/activity/SplashAdActivity$1;

    invoke-direct {v1, p0}, Lcom/bt/jrsdk/activity/SplashAdActivity$1;-><init>(Lcom/bt/jrsdk/activity/SplashAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->imgAd:Landroid/widget/ImageView;

    new-instance v1, Lcom/bt/jrsdk/activity/SplashAdActivity$2;

    invoke-direct {v1, p0}, Lcom/bt/jrsdk/activity/SplashAdActivity$2;-><init>(Lcom/bt/jrsdk/activity/SplashAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->imgClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->tvCountDown:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6309\u8fd4\u56de\u952e\u5173\u95ed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    :cond_0
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onClose()V

    .line 194
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onFinish()V

    .line 196
    :cond_1
    invoke-super {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onBackPressed()V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Lcom/bt/jrsdk/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b002c

    .line 31
    invoke-virtual {p0, p1}, Lcom/bt/jrsdk/activity/SplashAdActivity;->setContentView(I)V

    .line 32
    new-instance p1, Lcom/bt/jrsdk/activity/SplashAdActivity$SplashHandler;

    invoke-direct {p1, p0}, Lcom/bt/jrsdk/activity/SplashAdActivity$SplashHandler;-><init>(Lcom/bt/jrsdk/activity/SplashAdActivity;)V

    iput-object p1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->handler:Lcom/bt/jrsdk/activity/SplashAdActivity$SplashHandler;

    .line 33
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/bt/jrsdk/manager/AdObserver;->getInstance()Lcom/bt/jrsdk/manager/AdObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdObserver;->getSplashAdInfo(Ljava/lang/String;)Lcom/bt/jrsdk/bean/SplashAdInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    invoke-static {}, Lcom/bt/jrsdk/manager/AdObserver;->getInstance()Lcom/bt/jrsdk/manager/AdObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdObserver;->getSplashAdInfo(Ljava/lang/String;)Lcom/bt/jrsdk/bean/SplashAdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

    .line 37
    invoke-static {}, Lcom/bt/jrsdk/util/Utils;->getInstance()Lcom/bt/jrsdk/util/Utils;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

    invoke-virtual {v0}, Lcom/bt/jrsdk/bean/SplashAdInfo;->getPic()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/util/Utils;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pic:Landroid/graphics/Bitmap;

    .line 38
    iget-object p1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

    iget p1, p1, Lcom/bt/jrsdk/bean/SplashAdInfo;->ads_id:I

    iput p1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->ads_id:I

    .line 39
    iget-object p1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

    invoke-virtual {p1}, Lcom/bt/jrsdk/bean/SplashAdInfo;->getReqId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->reqId:Ljava/lang/String;

    .line 40
    iget-object p1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->adInfo:Lcom/bt/jrsdk/bean/SplashAdInfo;

    invoke-virtual {p1}, Lcom/bt/jrsdk/bean/SplashAdInfo;->getWebUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->webUrl:Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 43
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    const/16 v0, 0x7534

    const-string v1, "ad_info_null"

    invoke-interface {p1, v1, v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onError(Ljava/lang/String;I)V

    .line 44
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onFinish()V

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->finish()V

    goto :goto_0

    .line 50
    :cond_2
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 51
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    const/16 v0, 0x7533

    const-string v1, "pid_null"

    invoke-interface {p1, v1, v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onError(Ljava/lang/String;I)V

    .line 52
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/jrsdk/listener/SplashAdListener;->onFinish()V

    :cond_3
    const-string p1, "intent extra ad is null"

    .line 54
    invoke-static {p1}, Lcom/bt/jrsdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->finish()V

    .line 57
    :goto_0
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->initView()V

    .line 58
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->countDown()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 185
    invoke-super {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onDestroy()V

    .line 186
    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->handler:Lcom/bt/jrsdk/activity/SplashAdActivity$SplashHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/activity/SplashAdActivity$SplashHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResult()V
    .locals 2

    .line 130
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/SplashAdActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onFinish()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 180
    invoke-super {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onStop()V

    return-void
.end method
