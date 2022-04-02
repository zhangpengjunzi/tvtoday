.class public Lcom/today/player/ui/activity/SplashActivity;
.super Lcom/today/player/base/BaseActivity;
.source "SplashActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private imageView:Landroid/widget/ImageView;

.field private isSettingBack:Z

.field private pemissionRejectCount:I

.field private splashAd:Lcom/today/player/ad/VideoSplashAd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/today/player/base/BaseActivity;-><init>()V

    const-string v0, "SplashActivity"

    .line 55
    iput-object v0, p0, Lcom/today/player/ui/activity/SplashActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/today/player/ui/activity/SplashActivity;->isSettingBack:Z

    .line 179
    iput v0, p0, Lcom/today/player/ui/activity/SplashActivity;->pemissionRejectCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/activity/SplashActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/today/player/ui/activity/SplashActivity;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/today/player/ui/activity/SplashActivity;Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/today/player/ui/activity/SplashActivity;->setLoadSir(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/today/player/ui/activity/SplashActivity;)Lcom/today/player/ad/VideoSplashAd;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/today/player/ui/activity/SplashActivity;->splashAd:Lcom/today/player/ad/VideoSplashAd;

    return-object p0
.end method

.method static synthetic access$300(Lcom/today/player/ui/activity/SplashActivity;)V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/today/player/ui/activity/SplashActivity;->showSuccess()V

    return-void
.end method

.method static synthetic access$400(Lcom/today/player/ui/activity/SplashActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/today/player/ui/activity/SplashActivity;->jumpActivity()V

    return-void
.end method

.method private fade()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 75
    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v0, [F

    .line 76
    fill-array-data v2, :array_1

    const-string v3, "scaleY"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v0, [F

    .line 77
    fill-array-data v3, :array_2

    const-string v4, "alpha"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 78
    iget-object v4, p0, Lcom/today/player/ui/activity/SplashActivity;->imageView:Landroid/widget/ImageView;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 80
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 81
    new-instance v1, Lcom/today/player/ui/activity/SplashActivity$1;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/SplashActivity$1;-><init>(Lcom/today/player/ui/activity/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private jumpActivity()V
    .locals 2

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/today/player/ui/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/today/player/ui/activity/SplashActivity;->finish()V

    return-void
.end method

.method private loadAd()V
    .locals 3

    .line 124
    invoke-static {}, Lcom/today/player/util/GetDevicesId;->getInstance()Lcom/today/player/util/GetDevicesId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/util/GetDevicesId;->writeId()V

    .line 125
    invoke-static {}, Lcom/today/player/base/App;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/today/player/util/GetDevicesId;->getInstance()Lcom/today/player/util/GetDevicesId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/today/player/util/GetDevicesId;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bt/jrsdk/manager/AdStartManager;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/today/player/ui/activity/SplashActivity;->showLoading()V

    .line 127
    new-instance v0, Lcom/today/player/ad/VideoSplashAd;

    const-string v1, "splash"

    const-string v2, "1"

    invoke-direct {v0, p0, v1, v2}, Lcom/today/player/ad/VideoSplashAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/today/player/ui/activity/SplashActivity;->splashAd:Lcom/today/player/ad/VideoSplashAd;

    .line 128
    invoke-virtual {v0, v1}, Lcom/today/player/ad/VideoSplashAd;->loadAd(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/today/player/ui/activity/SplashActivity;->splashAd:Lcom/today/player/ad/VideoSplashAd;

    new-instance v1, Lcom/today/player/ui/activity/SplashActivity$2;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/SplashActivity$2;-><init>(Lcom/today/player/ui/activity/SplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ad/VideoSplashAd;->setListener(Lcom/bt/jrsdk/listener/SplashAdListener;)V

    return-void
.end method

.method private requestPermission()V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 173
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b0020

    return v0
.end method

.method protected init()V
    .locals 1

    const v0, 0x7f080149

    .line 67
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/today/player/ui/activity/SplashActivity;->imageView:Landroid/widget/ImageView;

    .line 68
    invoke-direct {p0}, Lcom/today/player/ui/activity/SplashActivity;->fade()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 222
    invoke-super {p0, p1, p2, p3}, Lcom/today/player/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/today/player/ui/activity/SplashActivity;->start()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onDestroy()V

    .line 99
    iget-object v0, p0, Lcom/today/player/ui/activity/SplashActivity;->splashAd:Lcom/today/player/ad/VideoSplashAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/today/player/ad/VideoSplashAd;->recycler()V

    .line 101
    iput-object v1, p0, Lcom/today/player/ui/activity/SplashActivity;->splashAd:Lcom/today/player/ad/VideoSplashAd;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/today/player/ui/activity/SplashActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iput-object v1, p0, Lcom/today/player/ui/activity/SplashActivity;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    if-lez p1, :cond_1

    aget p1, p3, v0

    if-nez p1, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/today/player/ui/activity/SplashActivity;->loadAd()V

    goto :goto_0

    .line 190
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_5

    .line 191
    aget-object p1, p2, v0

    invoke-virtual {p0, p1}, Lcom/today/player/ui/activity/SplashActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 192
    iget p1, p0, Lcom/today/player/ui/activity/SplashActivity;->pemissionRejectCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/today/player/ui/activity/SplashActivity;->pemissionRejectCount:I

    const/4 p3, 0x2

    if-le p1, p3, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/today/player/ui/activity/SplashActivity;->finish()V

    return-void

    :cond_2
    const-string p1, "\u6b64\u6743\u9650\u4e3a\u4e0b\u8f7d\u65b0\u7248\u5fc5\u987b\u4f9d\u8d56\u6743\u9650\uff0c\u8bf7\u5141\u8bb8\u8be5\u6743\u9650"

    .line 197
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 198
    invoke-direct {p0}, Lcom/today/player/ui/activity/SplashActivity;->requestPermission()V

    goto :goto_0

    .line 200
    :cond_3
    aget p1, p3, v0

    if-eqz p1, :cond_4

    const-string p1, "\u6743\u9650\u88ab\u7981\u6b62,\u8bf7\u5728\u8bbe\u7f6e\u9875\u6253\u5f00\u5b58\u50a8\u6743\u9650\u6216\u8005\u91cd\u65b0\u5b89\u88c5\u5e94\u7528"

    .line 201
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 202
    iget-boolean p1, p0, Lcom/today/player/ui/activity/SplashActivity;->isSettingBack:Z

    if-nez p1, :cond_5

    .line 203
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/today/player/ui/activity/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    const-string v1, "package"

    invoke-static {v1, p3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 205
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 p3, 0x65

    .line 206
    invoke-virtual {p0, p1, p3}, Lcom/today/player/ui/activity/SplashActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 207
    iput-boolean p2, p0, Lcom/today/player/ui/activity/SplashActivity;->isSettingBack:Z

    .line 208
    invoke-virtual {p0}, Lcom/today/player/ui/activity/SplashActivity;->finish()V

    goto :goto_0

    .line 211
    :cond_4
    invoke-direct {p0}, Lcom/today/player/ui/activity/SplashActivity;->loadAd()V

    :cond_5
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 110
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/today/player/ui/activity/SplashActivity;->requestPermission()V

    goto :goto_0

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/today/player/ui/activity/SplashActivity;->loadAd()V

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/today/player/ui/activity/SplashActivity;->loadAd()V

    :goto_0
    return-void
.end method
