.class public abstract Lxyz/doikki/videoplayer/controller/BaseVideoController;
.super Landroid/widget/FrameLayout;
.source "BaseVideoController.java"

# interfaces
.implements Lxyz/doikki/videoplayer/controller/IVideoController;
.implements Lxyz/doikki/videoplayer/controller/OrientationHelper$OnOrientationChangeListener;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mAdaptCutout:Z

.field protected mControlComponents:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lxyz/doikki/videoplayer/controller/IControlComponent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

.field private mCutoutHeight:I

.field protected mDefaultTimeout:I

.field private mEnableOrientation:Z

.field protected final mFadeOut:Ljava/lang/Runnable;

.field private mHasCutout:Ljava/lang/Boolean;

.field private mHideAnim:Landroid/view/animation/Animation;

.field protected mIsLocked:Z

.field private mIsStartProgress:Z

.field private mOrientation:I

.field protected mOrientationHelper:Lxyz/doikki/videoplayer/controller/OrientationHelper;

.field private mShowAnim:Landroid/view/animation/Animation;

.field protected mShowProgress:Ljava/lang/Runnable;

.field protected mShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xfa0

    .line 57
    iput p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mDefaultTimeout:I

    .line 75
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    .line 273
    new-instance p1, Lxyz/doikki/videoplayer/controller/BaseVideoController$1;

    invoke-direct {p1, p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController$1;-><init>(Lxyz/doikki/videoplayer/controller/BaseVideoController;)V

    iput-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mFadeOut:Ljava/lang/Runnable;

    .line 314
    new-instance p1, Lxyz/doikki/videoplayer/controller/BaseVideoController$2;

    invoke-direct {p1, p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController$2;-><init>(Lxyz/doikki/videoplayer/controller/BaseVideoController;)V

    iput-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mShowProgress:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 458
    iput p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientation:I

    .line 91
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->initView()V

    return-void
.end method

.method static synthetic access$000(Lxyz/doikki/videoplayer/controller/BaseVideoController;)I
    .locals 0

    .line 40
    invoke-direct {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->setProgress()I

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lxyz/doikki/videoplayer/controller/BaseVideoController;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mIsStartProgress:Z

    return p1
.end method

.method private checkCutout()V
    .locals 2

    .line 350
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mAdaptCutout:Z

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mHasCutout:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 352
    invoke-static {v0}, Lxyz/doikki/videoplayer/util/CutoutUtil;->allowDisplayToCutout(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mHasCutout:Ljava/lang/Boolean;

    .line 353
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lxyz/doikki/videoplayer/util/PlayerUtils;->getStatusBarHeightPortrait(Landroid/content/Context;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mCutoutHeight:I

    .line 358
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasCutout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mHasCutout:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cutout height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mCutoutHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxyz/doikki/videoplayer/util/L;->d(Ljava/lang/String;)V

    return-void
.end method

.method private handleLockStateChanged(Z)V
    .locals 2

    .line 656
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 657
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 658
    invoke-interface {v1, p1}, Lxyz/doikki/videoplayer/controller/IControlComponent;->onLockStateChanged(Z)V

    goto :goto_0

    .line 660
    :cond_0
    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->onLockStateChanged(Z)V

    return-void
.end method

.method private handlePlayStateChanged(I)V
    .locals 2

    .line 565
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 566
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 567
    invoke-interface {v1, p1}, Lxyz/doikki/videoplayer/controller/IControlComponent;->onPlayStateChanged(I)V

    goto :goto_0

    .line 569
    :cond_0
    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->onPlayStateChanged(I)V

    return-void
.end method

.method private handlePlayerStateChanged(I)V
    .locals 2

    .line 599
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 600
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 601
    invoke-interface {v1, p1}, Lxyz/doikki/videoplayer/controller/IControlComponent;->onPlayerStateChanged(I)V

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->onPlayerStateChanged(I)V

    return-void
.end method

.method private handleSetProgress(II)V
    .locals 2

    .line 637
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 638
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 639
    invoke-interface {v1, p1, p2}, Lxyz/doikki/videoplayer/controller/IControlComponent;->setProgress(II)V

    goto :goto_0

    .line 641
    :cond_0
    invoke-virtual {p0, p1, p2}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->setProgress(II)V

    return-void
.end method

.method private handleVisibilityChanged(ZLandroid/view/animation/Animation;)V
    .locals 2

    .line 543
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mIsLocked:Z

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 546
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 547
    invoke-interface {v1, p1, p2}, Lxyz/doikki/videoplayer/controller/IControlComponent;->onVisibilityChanged(ZLandroid/view/animation/Animation;)V

    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {p0, p1, p2}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->onVisibilityChanged(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method private setProgress()I
    .locals 4

    .line 327
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    .line 328
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->getDuration()J

    move-result-wide v2

    long-to-int v0, v2

    .line 329
    invoke-direct {p0, v0, v1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->handleSetProgress(II)V

    return v1
.end method


# virtual methods
.method public addControlComponent(Lxyz/doikki/videoplayer/controller/IControlComponent;Z)V
    .locals 2

    .line 156
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {p1, v0}, Lxyz/doikki/videoplayer/controller/IControlComponent;->attach(Lxyz/doikki/videoplayer/controller/ControlWrapper;)V

    .line 160
    :cond_0
    invoke-interface {p1}, Lxyz/doikki/videoplayer/controller/IControlComponent;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 162
    invoke-virtual {p0, p1, p2}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->addView(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public varargs addControlComponent([Lxyz/doikki/videoplayer/controller/IControlComponent;)V
    .locals 4

    .line 134
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 135
    invoke-virtual {p0, v3, v1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->addControlComponent(Lxyz/doikki/videoplayer/controller/IControlComponent;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCutoutHeight()I
    .locals 1

    .line 374
    iget v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mCutoutHeight:I

    return v0
.end method

.method protected abstract getLayoutId()I
.end method

.method public hasCutout()Z
    .locals 1

    .line 366
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mHasCutout:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hide()V
    .locals 2

    .line 228
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->stopFadeOut()V

    .line 230
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mHideAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->handleVisibilityChanged(ZLandroid/view/animation/Animation;)V

    .line 231
    iput-boolean v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mShowing:Z

    :cond_0
    return-void
.end method

.method protected initView()V
    .locals 5

    .line 95
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->getLayoutId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->getLayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 98
    :cond_0
    new-instance v0, Lxyz/doikki/videoplayer/controller/OrientationHelper;

    invoke-virtual {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lxyz/doikki/videoplayer/controller/OrientationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientationHelper:Lxyz/doikki/videoplayer/controller/OrientationHelper;

    .line 99
    invoke-static {}, Lxyz/doikki/videoplayer/player/VideoViewManager;->getConfig()Lxyz/doikki/videoplayer/player/VideoViewConfig;

    move-result-object v0

    iget-boolean v0, v0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mEnableOrientation:Z

    iput-boolean v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mEnableOrientation:Z

    .line 100
    invoke-static {}, Lxyz/doikki/videoplayer/player/VideoViewManager;->getConfig()Lxyz/doikki/videoplayer/player/VideoViewConfig;

    move-result-object v0

    iget-boolean v0, v0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mAdaptCutout:Z

    iput-boolean v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mAdaptCutout:Z

    .line 102
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mShowAnim:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x12c

    .line 103
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 104
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mHideAnim:Landroid/view/animation/Animation;

    .line 105
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 107
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxyz/doikki/videoplayer/util/PlayerUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public isLocked()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mIsLocked:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mShowing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 342
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 343
    invoke-direct {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->checkCutout()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onLockStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    .line 463
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 466
    :cond_0
    iget v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientation:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 471
    iput v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientation:I

    return-void

    :cond_1
    const/16 v1, 0x15e

    if-gt p1, v1, :cond_8

    const/16 v1, 0xa

    if-ge p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x50

    const/4 v2, 0x1

    if-le p1, v1, :cond_5

    const/16 v1, 0x64

    if-ge p1, v1, :cond_5

    .line 485
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    const/16 v1, 0x5a

    if-ne p1, v2, :cond_3

    if-ne v0, v1, :cond_3

    return-void

    .line 488
    :cond_3
    iget p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientation:I

    if-ne p1, v1, :cond_4

    return-void

    .line 490
    :cond_4
    iput v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientation:I

    .line 491
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->onOrientationReverseLandscape(Landroid/app/Activity;)V

    goto :goto_1

    :cond_5
    const/16 v1, 0x104

    if-le p1, v1, :cond_b

    const/16 v1, 0x118

    if-ge p1, v1, :cond_b

    .line 493
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    const/16 v1, 0x10e

    if-ne p1, v2, :cond_6

    if-ne v0, v1, :cond_6

    return-void

    .line 496
    :cond_6
    iget p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientation:I

    if-ne p1, v1, :cond_7

    return-void

    .line 498
    :cond_7
    iput v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientation:I

    .line 499
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->onOrientationLandscape(Landroid/app/Activity;)V

    goto :goto_1

    .line 476
    :cond_8
    :goto_0
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    if-nez p1, :cond_9

    if-nez v0, :cond_9

    return-void

    .line 479
    :cond_9
    iget p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientation:I

    if-nez p1, :cond_a

    return-void

    :cond_a
    const/4 p1, 0x0

    .line 481
    iput p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientation:I

    .line 482
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->onOrientationPortrait(Landroid/app/Activity;)V

    :cond_b
    :goto_1
    return-void
.end method

.method protected onOrientationLandscape(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 520
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 521
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->isFullScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    .line 522
    invoke-direct {p0, p1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->handlePlayerStateChanged(I)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->startFullScreen()V

    :goto_0
    return-void
.end method

.method protected onOrientationPortrait(Landroid/app/Activity;)V
    .locals 1

    .line 508
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mIsLocked:Z

    if-eqz v0, :cond_0

    return-void

    .line 510
    :cond_0
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mEnableOrientation:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 512
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 513
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->stopFullScreen()V

    return-void
.end method

.method protected onOrientationReverseLandscape(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0x8

    .line 532
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 533
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->isFullScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    .line 534
    invoke-direct {p0, p1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->handlePlayerStateChanged(I)V

    goto :goto_0

    .line 536
    :cond_0
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->startFullScreen()V

    :goto_0
    return-void
.end method

.method protected onPlayStateChanged(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 588
    :cond_0
    iput-boolean v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mIsLocked:Z

    .line 589
    iput-boolean v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mShowing:Z

    goto :goto_0

    .line 579
    :cond_1
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientationHelper:Lxyz/doikki/videoplayer/controller/OrientationHelper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/OrientationHelper;->disable()V

    .line 580
    iput v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientation:I

    .line 581
    iput-boolean v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mIsLocked:Z

    .line 582
    iput-boolean v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mShowing:Z

    .line 585
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->removeAllDissociateComponents()V

    goto :goto_0

    .line 592
    :cond_2
    iput-boolean v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mShowing:Z

    :goto_0
    return-void
.end method

.method protected onPlayerStateChanged(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 630
    :pswitch_0
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientationHelper:Lxyz/doikki/videoplayer/controller/OrientationHelper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/OrientationHelper;->disable()V

    goto :goto_1

    .line 624
    :pswitch_1
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientationHelper:Lxyz/doikki/videoplayer/controller/OrientationHelper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/OrientationHelper;->enable()V

    .line 625
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->hasCutout()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 626
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lxyz/doikki/videoplayer/util/CutoutUtil;->adaptCutoutAboveAndroidP(Landroid/content/Context;Z)V

    goto :goto_1

    .line 613
    :pswitch_2
    iget-boolean p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mEnableOrientation:Z

    if-eqz p1, :cond_0

    .line 614
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientationHelper:Lxyz/doikki/videoplayer/controller/OrientationHelper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/OrientationHelper;->enable()V

    goto :goto_0

    .line 616
    :cond_0
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientationHelper:Lxyz/doikki/videoplayer/controller/OrientationHelper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/OrientationHelper;->disable()V

    .line 618
    :goto_0
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->hasCutout()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 619
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lxyz/doikki/videoplayer/util/CutoutUtil;->adaptCutoutAboveAndroidP(Landroid/content/Context;Z)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onVisibilityChanged(ZLandroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 435
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 436
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mEnableOrientation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    .line 437
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 439
    new-instance p1, Lxyz/doikki/videoplayer/controller/BaseVideoController$3;

    invoke-direct {p1, p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController$3;-><init>(Lxyz/doikki/videoplayer/controller/BaseVideoController;)V

    const-wide/16 v0, 0x320

    invoke-virtual {p0, p1, v0, v1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 446
    :cond_1
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientationHelper:Lxyz/doikki/videoplayer/controller/OrientationHelper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/OrientationHelper;->disable()V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeAllControlComponent()V
    .locals 2

    .line 178
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxyz/doikki/videoplayer/controller/IControlComponent;

    invoke-interface {v1}, Lxyz/doikki/videoplayer/controller/IControlComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public removeAllDissociateComponents()V
    .locals 2

    .line 189
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 190
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeControlComponent(Lxyz/doikki/videoplayer/controller/IControlComponent;)V
    .locals 1

    .line 170
    invoke-interface {p1}, Lxyz/doikki/videoplayer/controller/IControlComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->removeView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAdaptCutout(Z)V
    .locals 0

    .line 337
    iput-boolean p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mAdaptCutout:Z

    return-void
.end method

.method public setDismissTimeout(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 219
    iput p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mDefaultTimeout:I

    :cond_0
    return-void
.end method

.method public setEnableOrientation(Z)V
    .locals 0

    .line 455
    iput-boolean p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mEnableOrientation:Z

    return-void
.end method

.method public setLocked(Z)V
    .locals 0

    .line 282
    iput-boolean p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mIsLocked:Z

    .line 283
    invoke-direct {p0, p1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->handleLockStateChanged(Z)V

    return-void
.end method

.method public setMediaPlayer(Lxyz/doikki/videoplayer/controller/MediaPlayerControl;)V
    .locals 2

    .line 120
    new-instance v0, Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-direct {v0, p1, p0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;-><init>(Lxyz/doikki/videoplayer/controller/MediaPlayerControl;Lxyz/doikki/videoplayer/controller/IVideoController;)V

    iput-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    .line 122
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 124
    iget-object v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-interface {v0, v1}, Lxyz/doikki/videoplayer/controller/IControlComponent;->attach(Lxyz/doikki/videoplayer/controller/ControlWrapper;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mOrientationHelper:Lxyz/doikki/videoplayer/controller/OrientationHelper;

    invoke-virtual {p1, p0}, Lxyz/doikki/videoplayer/controller/OrientationHelper;->setOnOrientationChangeListener(Lxyz/doikki/videoplayer/controller/OrientationHelper$OnOrientationChangeListener;)V

    return-void
.end method

.method public setPlayState(I)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->handlePlayStateChanged(I)V

    return-void
.end method

.method public setPlayerState(I)V
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->handlePlayerStateChanged(I)V

    return-void
.end method

.method protected setProgress(II)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    .line 240
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mShowing:Z

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mShowAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->handleVisibilityChanged(ZLandroid/view/animation/Animation;)V

    .line 242
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->startFadeOut()V

    .line 243
    iput-boolean v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mShowing:Z

    :cond_0
    return-void
.end method

.method public showNetWarning()Z
    .locals 2

    .line 384
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxyz/doikki/videoplayer/util/PlayerUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 385
    invoke-static {}, Lxyz/doikki/videoplayer/player/VideoViewManager;->instance()Lxyz/doikki/videoplayer/player/VideoViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoViewManager;->playOnMobileNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startFadeOut()V
    .locals 3

    .line 258
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->stopFadeOut()V

    .line 259
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mFadeOut:Ljava/lang/Runnable;

    iget v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mDefaultTimeout:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected startFullScreen()Z
    .locals 2

    .line 408
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 410
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->startFullScreen()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public startProgress()V
    .locals 1

    .line 296
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mIsStartProgress:Z

    if-eqz v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mShowProgress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mIsStartProgress:Z

    return-void
.end method

.method public stopFadeOut()V
    .locals 1

    .line 267
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mFadeOut:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected stopFullScreen()Z
    .locals 2

    .line 420
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 422
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->stopFullScreen()V

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopProgress()V
    .locals 1

    .line 306
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mIsStartProgress:Z

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mShowProgress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 308
    iput-boolean v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mIsStartProgress:Z

    return-void
.end method

.method protected toggleFullScreen()V
    .locals 2

    .line 399
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    iget-object v1, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->toggleFullScreen(Landroid/app/Activity;)V

    return-void
.end method

.method protected togglePlay()V
    .locals 1

    .line 392
    iget-object v0, p0, Lxyz/doikki/videoplayer/controller/BaseVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->togglePlay()V

    return-void
.end method
