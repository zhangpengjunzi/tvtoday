.class public Lcom/bt/jrsdk/activity/TTAdFullActivity;
.super Lcom/bt/jrsdk/activity/BaseActivity;
.source "TTAdFullActivity.java"


# instance fields
.field private ad:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

.field private frameVideo:Landroid/widget/FrameLayout;

.field private gdtAdType:I

.field private imageClose:Landroid/widget/ImageView;

.field private imageCover:Landroid/widget/ImageView;

.field private imageIcon:Landroid/widget/FrameLayout;

.field private isShow:Z

.field private root:Landroid/widget/LinearLayout;

.field private tv_jump:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->isShow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/bt/jrsdk/activity/TTAdFullActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageClose:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bt/jrsdk/activity/TTAdFullActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->gdtAdType:I

    return p0
.end method

.method static synthetic access$200(Lcom/bt/jrsdk/activity/TTAdFullActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->tv_jump:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/bt/jrsdk/activity/TTAdFullActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->adFinish()V

    return-void
.end method

.method static synthetic access$400(Lcom/bt/jrsdk/activity/TTAdFullActivity;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->isShow:Z

    return p0
.end method

.method static synthetic access$402(Lcom/bt/jrsdk/activity/TTAdFullActivity;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->isShow:Z

    return p1
.end method

.method private adFinish()V
    .locals 3

    .line 219
    invoke-static {}, Lcom/bt/jrsdk/util/Utils;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->tv_jump:Landroid/widget/TextView;

    const-string v2, "\u6309\u8fd4\u56de\u952e\u5173\u95ed"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->tv_jump:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->tv_jump:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageClose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 6

    .line 64
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f08011d

    .line 67
    invoke-virtual {p0, v2}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->root:Landroid/widget/LinearLayout;

    const v2, 0x7f080048

    .line 68
    invoke-virtual {p0, v2}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->frameVideo:Landroid/widget/FrameLayout;

    const v2, 0x7f080046

    .line 69
    invoke-virtual {p0, v2}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageIcon:Landroid/widget/FrameLayout;

    const v2, 0x7f080047

    .line 70
    invoke-virtual {p0, v2}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageCover:Landroid/widget/ImageView;

    const v2, 0x7f0802d5

    .line 71
    invoke-virtual {p0, v2}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->tv_jump:Landroid/widget/TextView;

    const v2, 0x7f0800b2

    .line 72
    invoke-virtual {p0, v2}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageClose:Landroid/widget/ImageView;

    .line 73
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->frameVideo:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageIcon:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageCover:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageClose:Landroid/widget/ImageView;

    new-instance v3, Lcom/bt/jrsdk/activity/TTAdFullActivity$1;

    invoke-direct {v3, p0}, Lcom/bt/jrsdk/activity/TTAdFullActivity$1;-><init>(Lcom/bt/jrsdk/activity/TTAdFullActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-static {}, Lcom/bt/admanager/AdWeightManager;->getInstance()Lcom/bt/admanager/AdWeightManager;

    move-result-object v2

    iget-object v2, v2, Lcom/bt/admanager/AdWeightManager;->gdtAds:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    iput-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->ad:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 92
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageMode()I

    move-result v2

    const/16 v4, 0x8

    const/4 v5, 0x5

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->ad:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageMode()I

    move-result v2

    const/16 v5, 0x32

    if-ne v2, v5, :cond_3

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->frameVideo:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 95
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->ad:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_1

    .line 98
    iget-object v5, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->frameVideo:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 99
    iget-object v5, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->frameVideo:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 100
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->frameVideo:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    iget v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->gdtAdType:I

    if-nez v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->tv_jump:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageClose:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->tv_jump:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageClose:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :goto_0
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->frameVideo:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 111
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageCover:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->ad:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    new-instance v5, Lcom/bt/jrsdk/activity/TTAdFullActivity$2;

    invoke-direct {v5, p0}, Lcom/bt/jrsdk/activity/TTAdFullActivity$2;-><init>(Lcom/bt/jrsdk/activity/TTAdFullActivity;)V

    invoke-interface {v2, v5}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    .line 159
    :cond_3
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->ad:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageMode()I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->ad:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageMode()I

    move-result v2

    const/16 v5, 0x21

    if-ne v2, v5, :cond_5

    .line 160
    :cond_4
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->ad:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->ad:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 161
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->ad:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTImage;

    if-eqz v2, :cond_5

    .line 162
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TTImage;->isValid()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 163
    iget-object v5, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageCover:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v5, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->tv_jump:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v4, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageClose:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v4, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v4

    .line 168
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v4, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageCover:Landroid/widget/ImageView;

    .line 169
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 175
    :cond_5
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->ad:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdLogoView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 176
    iget-object v4, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageIcon:Landroid/widget/FrameLayout;

    if-nez v4, :cond_6

    if-eqz v2, :cond_7

    .line 177
    :cond_6
    iget-object v4, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 178
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    iget-object v4, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    :cond_7
    iget-object v2, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->ad:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    iget-object v3, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->root:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/bt/jrsdk/activity/TTAdFullActivity$3;

    invoke-direct {v4, p0}, Lcom/bt/jrsdk/activity/TTAdFullActivity$3;-><init>(Lcom/bt/jrsdk/activity/TTAdFullActivity;)V

    invoke-interface {v2, v3, v1, v0, v4}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->imageClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->tv_jump:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6309\u8fd4\u56de\u952e\u5173\u95ed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    :cond_0
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onClose()V

    .line 234
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getSplashListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/SplashAdListener;->onFinish()V

    .line 236
    :cond_1
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 237
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onClose()V

    .line 238
    invoke-static {}, Lcom/bt/jrsdk/manager/AdListenerManager;->getInstance()Lcom/bt/jrsdk/manager/AdListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bt/jrsdk/manager/AdListenerManager;->getVideoListener(Ljava/lang/String;)Lcom/bt/jrsdk/listener/VideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bt/jrsdk/listener/VideoAdListener;->onFinish()V

    .line 240
    :cond_2
    invoke-super {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onBackPressed()V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-static {}, Lcom/bt/admanager/AdWeightManager;->getInstance()Lcom/bt/admanager/AdWeightManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bt/admanager/AdWeightManager;->getGdtAdType()I

    move-result v0

    iput v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->gdtAdType:I

    if-nez v0, :cond_0

    const v0, 0x1030007

    .line 48
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->setTheme(I)V

    goto :goto_0

    .line 50
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_2

    :cond_1
    const v0, 0x7f0f01cd

    .line 51
    invoke-virtual {p0, v0}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->setTheme(I)V

    .line 54
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/bt/jrsdk/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    iget p1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->gdtAdType:I

    if-nez p1, :cond_3

    const p1, 0x7f0b00ee

    .line 56
    invoke-virtual {p0, p1}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->setContentView(I)V

    goto :goto_1

    :cond_3
    const p1, 0x7f0b010a

    .line 58
    invoke-virtual {p0, p1}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->setContentView(I)V

    .line 60
    :goto_1
    invoke-direct {p0}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 247
    invoke-super {p0}, Lcom/bt/jrsdk/activity/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity;->ad:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    return-void
.end method

.method protected onResult()V
    .locals 0

    return-void
.end method
