.class public Lxyz/doikki/videoplayer/player/VideoView;
.super Landroid/widget/FrameLayout;
.source "VideoView.java"

# interfaces
.implements Lxyz/doikki/videoplayer/controller/MediaPlayerControl;
.implements Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/doikki/videoplayer/player/VideoView$SimpleOnStateChangeListener;,
        Lxyz/doikki/videoplayer/player/VideoView$OnStateChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lxyz/doikki/videoplayer/player/AbstractPlayer;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Lxyz/doikki/videoplayer/controller/MediaPlayerControl;",
        "Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;"
    }
.end annotation


# static fields
.field public static final PLAYER_FULL_SCREEN:I = 0xb

.field public static final PLAYER_NORMAL:I = 0xa

.field public static final PLAYER_TINY_SCREEN:I = 0xc

.field public static final SCREEN_SCALE_16_9:I = 0x1

.field public static final SCREEN_SCALE_4_3:I = 0x2

.field public static final SCREEN_SCALE_CENTER_CROP:I = 0x5

.field public static final SCREEN_SCALE_DEFAULT:I = 0x0

.field public static final SCREEN_SCALE_MATCH_PARENT:I = 0x3

.field public static final SCREEN_SCALE_ORIGINAL:I = 0x4

.field public static final STATE_BUFFERED:I = 0x7

.field public static final STATE_BUFFERING:I = 0x6

.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_PREPARED:I = 0x2

.field public static final STATE_PREPARING:I = 0x1

.field public static final STATE_START_ABORT:I = 0x8


# instance fields
.field protected mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field protected mAudioFocusHelper:Lxyz/doikki/videoplayer/player/AudioFocusHelper;

.field protected mCurrentPlayState:I

.field protected mCurrentPlayerState:I

.field protected mCurrentPosition:J

.field protected mCurrentScreenScaleType:I

.field protected mEnableAudioFocus:Z

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsFullScreen:Z

.field protected mIsLooping:Z

.field protected mIsMute:Z

.field protected mIsTinyScreen:Z

.field protected mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field protected mOnStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxyz/doikki/videoplayer/player/VideoView$OnStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerBackgroundColor:I

.field protected mPlayerContainer:Landroid/widget/FrameLayout;

.field protected mPlayerFactory:Lxyz/doikki/videoplayer/player/PlayerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxyz/doikki/videoplayer/player/PlayerFactory<",
            "TP;>;"
        }
    .end annotation
.end field

.field protected mProgressManager:Lxyz/doikki/videoplayer/player/ProgressManager;

.field protected mRenderView:Lxyz/doikki/videoplayer/render/IRenderView;

.field protected mRenderViewFactory:Lxyz/doikki/videoplayer/render/RenderViewFactory;

.field protected mTinyScreenSize:[I

.field protected mUrl:Ljava/lang/String;

.field protected mVideoController:Lxyz/doikki/videoplayer/controller/BaseVideoController;

.field protected mVideoSize:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, v0}, Lxyz/doikki/videoplayer/player/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, p2, v0}, Lxyz/doikki/videoplayer/player/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x2

    new-array v0, p3, [I

    .line 66
    fill-array-data v0, :array_0

    iput-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mVideoSize:[I

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPlayState:I

    const/16 v1, 0xa

    .line 93
    iput v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPlayerState:I

    new-array p3, p3, [I

    .line 98
    fill-array-data p3, :array_1

    iput-object p3, p0, Lxyz/doikki/videoplayer/player/VideoView;->mTinyScreenSize:[I

    .line 140
    invoke-static {}, Lxyz/doikki/videoplayer/player/VideoViewManager;->getConfig()Lxyz/doikki/videoplayer/player/VideoViewConfig;

    move-result-object p3

    .line 141
    iget-boolean v1, p3, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mEnableAudioFocus:Z

    iput-boolean v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mEnableAudioFocus:Z

    .line 142
    iget-object v1, p3, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mProgressManager:Lxyz/doikki/videoplayer/player/ProgressManager;

    iput-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mProgressManager:Lxyz/doikki/videoplayer/player/ProgressManager;

    .line 143
    iget-object v1, p3, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mPlayerFactory:Lxyz/doikki/videoplayer/player/PlayerFactory;

    iput-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerFactory:Lxyz/doikki/videoplayer/player/PlayerFactory;

    .line 144
    iget v1, p3, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mScreenScaleType:I

    iput v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentScreenScaleType:I

    .line 145
    iget-object p3, p3, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mRenderViewFactory:Lxyz/doikki/videoplayer/render/RenderViewFactory;

    iput-object p3, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderViewFactory:Lxyz/doikki/videoplayer/render/RenderViewFactory;

    .line 148
    sget-object p3, Lxyz/doikki/videoplayer/R$styleable;->VideoView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 149
    sget p2, Lxyz/doikki/videoplayer/R$styleable;->VideoView_enableAudioFocus:I

    iget-boolean p3, p0, Lxyz/doikki/videoplayer/player/VideoView;->mEnableAudioFocus:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lxyz/doikki/videoplayer/player/VideoView;->mEnableAudioFocus:Z

    .line 150
    sget p2, Lxyz/doikki/videoplayer/R$styleable;->VideoView_looping:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsLooping:Z

    .line 151
    sget p2, Lxyz/doikki/videoplayer/R$styleable;->VideoView_screenScaleType:I

    iget p3, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentScreenScaleType:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentScreenScaleType:I

    .line 152
    sget p2, Lxyz/doikki/videoplayer/R$styleable;->VideoView_playerBackgroundColor:I

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerBackgroundColor:I

    .line 153
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->initView()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private hideSysBar(Landroid/view/ViewGroup;)V
    .locals 3

    .line 731
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    .line 732
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x2

    .line 735
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    or-int/lit16 v0, v0, 0x1000

    .line 738
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 739
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private isInStartAbortState()Z
    .locals 2

    .line 429
    iget v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPlayState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showSysBar(Landroid/view/ViewGroup;)V
    .locals 3

    .line 778
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    .line 779
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    and-int/lit8 v0, v0, -0x3

    .line 782
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    and-int/lit16 v0, v0, -0x1001

    .line 785
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 786
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method


# virtual methods
.method protected addDisplay()V
    .locals 4

    .line 269
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderView:Lxyz/doikki/videoplayer/render/IRenderView;

    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0}, Lxyz/doikki/videoplayer/render/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 271
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderView:Lxyz/doikki/videoplayer/render/IRenderView;

    invoke-interface {v0}, Lxyz/doikki/videoplayer/render/IRenderView;->release()V

    .line 273
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderViewFactory:Lxyz/doikki/videoplayer/render/RenderViewFactory;

    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/render/RenderViewFactory;->createRenderView(Landroid/content/Context;)Lxyz/doikki/videoplayer/render/IRenderView;

    move-result-object v0

    iput-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderView:Lxyz/doikki/videoplayer/render/IRenderView;

    .line 274
    iget-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    invoke-interface {v0, v1}, Lxyz/doikki/videoplayer/render/IRenderView;->attachToPlayer(Lxyz/doikki/videoplayer/player/AbstractPlayer;)V

    .line 275
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 279
    iget-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderView:Lxyz/doikki/videoplayer/render/IRenderView;

    invoke-interface {v2}, Lxyz/doikki/videoplayer/render/IRenderView;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addOnStateChangeListener(Lxyz/doikki/videoplayer/player/VideoView$OnStateChangeListener;)V
    .locals 1

    .line 1021
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mOnStateChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1022
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mOnStateChangeListeners:Ljava/util/List;

    .line 1024
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mOnStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearOnStateChangeListeners()V
    .locals 1

    .line 1053
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mOnStateChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1054
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public doScreenShot()Landroid/graphics/Bitmap;
    .locals 1

    .line 930
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderView:Lxyz/doikki/videoplayer/render/IRenderView;

    if-eqz v0, :cond_0

    .line 931
    invoke-interface {v0}, Lxyz/doikki/videoplayer/render/IRenderView;->doScreenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .line 812
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mVideoController:Lxyz/doikki/videoplayer/controller/BaseVideoController;

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxyz/doikki/videoplayer/util/PlayerUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 815
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxyz/doikki/videoplayer/util/PlayerUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 818
    :cond_0
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxyz/doikki/videoplayer/util/PlayerUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 492
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->getBufferedPercentage()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getContentView()Landroid/view/ViewGroup;
    .locals 2

    .line 802
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v1, 0x1020002

    .line 804
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getCurrentPlayState()I
    .locals 1

    .line 585
    iget v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPlayState:I

    return v0
.end method

.method public getCurrentPlayerState()I
    .locals 1

    .line 578
    iget v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPlayerState:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 462
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPosition:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getDecorView()Landroid/view/ViewGroup;
    .locals 1

    .line 793
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 795
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 451
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSpeed()F
    .locals 1

    .line 608
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->getSpeed()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getTcpSpeed()J
    .locals 2

    .line 593
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->getTcpSpeed()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getVideoSize()[I
    .locals 1

    .line 941
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mVideoSize:[I

    return-object v0
.end method

.method protected initPlayer()V
    .locals 2

    .line 243
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerFactory:Lxyz/doikki/videoplayer/player/PlayerFactory;

    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/player/PlayerFactory;->createPlayer(Landroid/content/Context;)Lxyz/doikki/videoplayer/player/AbstractPlayer;

    move-result-object v0

    iput-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    .line 244
    invoke-virtual {v0, p0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->setPlayerEventListener(Lxyz/doikki/videoplayer/player/AbstractPlayer$PlayerEventListener;)V

    .line 245
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->setInitOptions()V

    .line 246
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->initPlayer()V

    .line 247
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->setOptions()V

    return-void
.end method

.method protected initView()V
    .locals 2

    .line 162
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    .line 163
    iget v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 164
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 167
    iget-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lxyz/doikki/videoplayer/player/VideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public isFullScreen()Z
    .locals 1

    .line 828
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsFullScreen:Z

    return v0
.end method

.method protected isInIdleState()Z
    .locals 1

    .line 422
    iget v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPlayState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isInPlaybackState()Z
    .locals 3

    .line 410
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPlayState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isLocalDataSource()Z
    .locals 5

    .line 228
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 230
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 231
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.resource"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 233
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 234
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "rawresource"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v2
.end method

.method public isMute()Z
    .locals 1

    .line 512
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsMute:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 484
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTinyScreen()Z
    .locals 1

    .line 875
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsTinyScreen:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1062
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mVideoController:Lxyz/doikki/videoplayer/controller/BaseVideoController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCompletion()V
    .locals 4

    .line 565
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    const-wide/16 v0, 0x0

    .line 566
    iput-wide v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPosition:J

    .line 567
    iget-object v2, p0, Lxyz/doikki/videoplayer/player/VideoView;->mProgressManager:Lxyz/doikki/videoplayer/player/ProgressManager;

    if-eqz v2, :cond_0

    .line 569
    iget-object v3, p0, Lxyz/doikki/videoplayer/player/VideoView;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lxyz/doikki/videoplayer/player/ProgressManager;->saveProgress(Ljava/lang/String;J)V

    :cond_0
    const/4 v0, 0x5

    .line 571
    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayState(I)V

    return-void
.end method

.method public onError()V
    .locals 2

    .line 556
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    const/4 v0, -0x1

    .line 557
    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayState(I)V

    return-void
.end method

.method public onInfo(II)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_2

    const/16 p2, 0x2bd

    if-eq p1, p2, :cond_1

    const/16 p2, 0x2be

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    .line 539
    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayState(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    .line 536
    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayState(I)V

    goto :goto_0

    .line 546
    :cond_2
    iget-object p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderView:Lxyz/doikki/videoplayer/render/IRenderView;

    if-eqz p1, :cond_4

    invoke-interface {p1, p2}, Lxyz/doikki/videoplayer/render/IRenderView;->setVideoRotation(I)V

    goto :goto_0

    .line 542
    :cond_3
    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayState(I)V

    .line 543
    iget-object p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onPrepared()V
    .locals 5

    const/4 v0, 0x2

    .line 520
    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayState(I)V

    .line 521
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isMute()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mAudioFocusHelper:Lxyz/doikki/videoplayer/player/AudioFocusHelper;

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->requestFocus()V

    .line 524
    :cond_0
    iget-wide v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPosition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 525
    invoke-virtual {p0, v0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->seekTo(J)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxyz/doikki/videoplayer/util/L;->d(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->saveProgress()V

    .line 1070
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onVideoSizeChanged(II)V
    .locals 2

    .line 880
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mVideoSize:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    .line 881
    aput p2, v0, v1

    .line 883
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderView:Lxyz/doikki/videoplayer/render/IRenderView;

    if-eqz v0, :cond_0

    .line 884
    iget v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentScreenScaleType:I

    invoke-interface {v0, v1}, Lxyz/doikki/videoplayer/render/IRenderView;->setScaleType(I)V

    .line 885
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderView:Lxyz/doikki/videoplayer/render/IRenderView;

    invoke-interface {v0, p1, p2}, Lxyz/doikki/videoplayer/render/IRenderView;->setVideoSize(II)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 746
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 747
    iget-boolean p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsFullScreen:Z

    if-eqz p1, :cond_0

    .line 749
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->getDecorView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-direct {p0, p1}, Lxyz/doikki/videoplayer/player/VideoView;->hideSysBar(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 330
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    .line 331
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->pause()V

    const/4 v0, 0x4

    .line 333
    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayState(I)V

    .line 334
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mAudioFocusHelper:Lxyz/doikki/videoplayer/player/AudioFocusHelper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isMute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mAudioFocusHelper:Lxyz/doikki/videoplayer/player/AudioFocusHelper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->abandonFocus()V

    .line 337
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method

.method protected prepareDataSource()Z
    .locals 4

    .line 303
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 304
    iget-object v2, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    invoke-virtual {v2, v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    return v1

    .line 306
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    iget-object v2, p0, Lxyz/doikki/videoplayer/player/VideoView;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lxyz/doikki/videoplayer/player/VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 4

    .line 360
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isInIdleState()Z

    move-result v0

    if-nez v0, :cond_4

    .line 362
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->release()V

    .line 364
    iput-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    .line 367
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderView:Lxyz/doikki/videoplayer/render/IRenderView;

    if-eqz v0, :cond_1

    .line 368
    iget-object v2, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0}, Lxyz/doikki/videoplayer/render/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 369
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderView:Lxyz/doikki/videoplayer/render/IRenderView;

    invoke-interface {v0}, Lxyz/doikki/videoplayer/render/IRenderView;->release()V

    .line 370
    iput-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderView:Lxyz/doikki/videoplayer/render/IRenderView;

    .line 373
    :cond_1
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_2

    .line 375
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 381
    :cond_2
    :goto_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mAudioFocusHelper:Lxyz/doikki/videoplayer/player/AudioFocusHelper;

    if-eqz v0, :cond_3

    .line 382
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->abandonFocus()V

    .line 383
    iput-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mAudioFocusHelper:Lxyz/doikki/videoplayer/player/AudioFocusHelper;

    .line 386
    :cond_3
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    .line 388
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->saveProgress()V

    const-wide/16 v2, 0x0

    .line 390
    iput-wide v2, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPosition:J

    .line 392
    invoke-virtual {p0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayState(I)V

    :cond_4
    return-void
.end method

.method public removeOnStateChangeListener(Lxyz/doikki/videoplayer/player/VideoView$OnStateChangeListener;)V
    .locals 1

    .line 1031
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mOnStateChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1032
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public replay(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 440
    iput-wide v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPosition:J

    .line 442
    :cond_0
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->addDisplay()V

    const/4 p1, 0x1

    .line 443
    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/player/VideoView;->startPrepare(Z)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 345
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    .line 346
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->start()V

    const/4 v0, 0x3

    .line 348
    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayState(I)V

    .line 349
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mAudioFocusHelper:Lxyz/doikki/videoplayer/player/AudioFocusHelper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isMute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mAudioFocusHelper:Lxyz/doikki/videoplayer/player/AudioFocusHelper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->requestFocus()V

    .line 352
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method

.method protected saveProgress()V
    .locals 5

    .line 400
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mProgressManager:Lxyz/doikki/videoplayer/player/ProgressManager;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPosition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxyz/doikki/videoplayer/util/L;->d(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mProgressManager:Lxyz/doikki/videoplayer/player/ProgressManager;

    iget-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mUrl:Ljava/lang/String;

    iget-wide v2, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPosition:J

    invoke-virtual {v0, v1, v2, v3}, Lxyz/doikki/videoplayer/player/ProgressManager;->saveProgress(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 474
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    invoke-virtual {v0, p1, p2}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;)V
    .locals 1

    const/4 v0, 0x0

    .line 637
    iput-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mUrl:Ljava/lang/String;

    .line 638
    iput-object p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method

.method public setEnableAudioFocus(Z)V
    .locals 0

    .line 682
    iput-boolean p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mEnableAudioFocus:Z

    return-void
.end method

.method protected setInitOptions()V
    .locals 0

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 671
    iput-boolean p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsLooping:Z

    .line 672
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0, p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public setMirrorRotation(Z)V
    .locals 1

    .line 920
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderView:Lxyz/doikki/videoplayer/render/IRenderView;

    if-eqz v0, :cond_1

    .line 921
    invoke-interface {v0}, Lxyz/doikki/videoplayer/render/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    :cond_1
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 500
    iput-boolean p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsMute:Z

    .line 501
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 503
    :goto_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    invoke-virtual {v0, p1, p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->setVolume(FF)V

    :cond_1
    return-void
.end method

.method public setOnStateChangeListener(Lxyz/doikki/videoplayer/player/VideoView$OnStateChangeListener;)V
    .locals 1

    .line 1041
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mOnStateChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mOnStateChangeListeners:Ljava/util/List;

    goto :goto_0

    .line 1044
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1046
    :goto_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mOnStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setOptions()V
    .locals 2

    .line 260
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    iget-boolean v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsLooping:Z

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->setLooping(Z)V

    .line 261
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsMute:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 262
    :goto_0
    iget-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    invoke-virtual {v1, v0, v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->setVolume(FF)V

    return-void
.end method

.method protected setPlayState(I)V
    .locals 2

    .line 969
    iput p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPlayState:I

    .line 970
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mVideoController:Lxyz/doikki/videoplayer/controller/BaseVideoController;

    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {v0, p1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->setPlayState(I)V

    .line 973
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mOnStateChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 974
    invoke-static {v0}, Lxyz/doikki/videoplayer/util/PlayerUtils;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxyz/doikki/videoplayer/player/VideoView$OnStateChangeListener;

    if-eqz v1, :cond_1

    .line 976
    invoke-interface {v1, p1}, Lxyz/doikki/videoplayer/player/VideoView$OnStateChangeListener;->onPlayStateChanged(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setPlayerBackgroundColor(I)V
    .locals 1

    .line 174
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setPlayerFactory(Lxyz/doikki/videoplayer/player/PlayerFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxyz/doikki/videoplayer/player/PlayerFactory<",
            "TP;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 692
    iput-object p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerFactory:Lxyz/doikki/videoplayer/player/PlayerFactory;

    return-void

    .line 690
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PlayerFactory can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setPlayerState(I)V
    .locals 2

    .line 986
    iput p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPlayerState:I

    .line 987
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mVideoController:Lxyz/doikki/videoplayer/controller/BaseVideoController;

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {v0, p1}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->setPlayerState(I)V

    .line 990
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mOnStateChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 991
    invoke-static {v0}, Lxyz/doikki/videoplayer/util/PlayerUtils;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxyz/doikki/videoplayer/player/VideoView$OnStateChangeListener;

    if-eqz v1, :cond_1

    .line 993
    invoke-interface {v1, p1}, Lxyz/doikki/videoplayer/player/VideoView$OnStateChangeListener;->onPlayerStateChanged(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setProgressManager(Lxyz/doikki/videoplayer/player/ProgressManager;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mProgressManager:Lxyz/doikki/videoplayer/player/ProgressManager;

    return-void
.end method

.method public setRenderViewFactory(Lxyz/doikki/videoplayer/render/RenderViewFactory;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 702
    iput-object p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderViewFactory:Lxyz/doikki/videoplayer/render/RenderViewFactory;

    return-void

    .line 700
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RenderViewFactory can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRotation(F)V
    .locals 1

    .line 951
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderView:Lxyz/doikki/videoplayer/render/IRenderView;

    if-eqz v0, :cond_0

    float-to-int p1, p1

    .line 952
    invoke-interface {v0, p1}, Lxyz/doikki/videoplayer/render/IRenderView;->setVideoRotation(I)V

    :cond_0
    return-void
.end method

.method public setScreenScaleType(I)V
    .locals 1

    .line 909
    iput p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentScreenScaleType:I

    .line 910
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mRenderView:Lxyz/doikki/videoplayer/render/IRenderView;

    if-eqz v0, :cond_0

    .line 911
    invoke-interface {v0, p1}, Lxyz/doikki/videoplayer/render/IRenderView;->setScaleType(I)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 601
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    invoke-virtual {v0, p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public setTinyScreenSize([I)V
    .locals 0

    .line 962
    iput-object p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mTinyScreenSize:[I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 618
    invoke-virtual {p0, p1, v0}, Lxyz/doikki/videoplayer/player/VideoView;->setUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 628
    iput-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 629
    iput-object p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mUrl:Ljava/lang/String;

    .line 630
    iput-object p2, p0, Lxyz/doikki/videoplayer/player/VideoView;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public setVideoController(Lxyz/doikki/videoplayer/controller/BaseVideoController;)V
    .locals 2

    .line 893
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mVideoController:Lxyz/doikki/videoplayer/controller/BaseVideoController;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 894
    iput-object p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mVideoController:Lxyz/doikki/videoplayer/controller/BaseVideoController;

    if-eqz p1, :cond_0

    .line 896
    invoke-virtual {p1, p0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->setMediaPlayer(Lxyz/doikki/videoplayer/controller/MediaPlayerControl;)V

    .line 897
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 900
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mVideoController:Lxyz/doikki/videoplayer/controller/BaseVideoController;

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 655
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {v0, p1, p2}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method protected showNetWarning()Z
    .locals 2

    .line 220
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isLocalDataSource()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 221
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mVideoController:Lxyz/doikki/videoplayer/controller/BaseVideoController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/BaseVideoController;->showNetWarning()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public skipPositionWhenPlay(I)V
    .locals 2

    int-to-long v0, p1

    .line 645
    iput-wide v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPosition:J

    return-void
.end method

.method public start()V
    .locals 1

    .line 182
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isInIdleState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    invoke-direct {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isInStartAbortState()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->startInPlaybackState()V

    goto :goto_1

    .line 184
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->startPlay()Z

    :cond_2
    :goto_1
    return-void
.end method

.method public startFullScreen()V
    .locals 2

    .line 710
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsFullScreen:Z

    if-eqz v0, :cond_0

    return-void

    .line 713
    :cond_0
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 717
    iput-boolean v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsFullScreen:Z

    .line 720
    invoke-direct {p0, v0}, Lxyz/doikki/videoplayer/player/VideoView;->hideSysBar(Landroid/view/ViewGroup;)V

    .line 723
    iget-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->removeView(Landroid/view/View;)V

    .line 725
    iget-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v0, 0xb

    .line 727
    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayerState(I)V

    return-void
.end method

.method protected startInPlaybackState()V
    .locals 2

    .line 317
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->start()V

    const/4 v0, 0x3

    .line 318
    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayState(I)V

    .line 319
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mAudioFocusHelper:Lxyz/doikki/videoplayer/player/AudioFocusHelper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isMute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mAudioFocusHelper:Lxyz/doikki/videoplayer/player/AudioFocusHelper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->requestFocus()V

    .line 322
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    return-void
.end method

.method protected startPlay()Z
    .locals 4

    .line 196
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->showNetWarning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 198
    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayState(I)V

    return v1

    .line 202
    :cond_0
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mEnableAudioFocus:Z

    if-eqz v0, :cond_1

    .line 203
    new-instance v0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;

    invoke-direct {v0, p0}, Lxyz/doikki/videoplayer/player/AudioFocusHelper;-><init>(Lxyz/doikki/videoplayer/player/VideoView;)V

    iput-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mAudioFocusHelper:Lxyz/doikki/videoplayer/player/AudioFocusHelper;

    .line 206
    :cond_1
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mProgressManager:Lxyz/doikki/videoplayer/player/ProgressManager;

    if-eqz v0, :cond_2

    .line 207
    iget-object v2, p0, Lxyz/doikki/videoplayer/player/VideoView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lxyz/doikki/videoplayer/player/ProgressManager;->getSavedProgress(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lxyz/doikki/videoplayer/player/VideoView;->mCurrentPosition:J

    .line 209
    :cond_2
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->initPlayer()V

    .line 210
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->addDisplay()V

    .line 211
    invoke-virtual {p0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->startPrepare(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method protected startPrepare(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->reset()V

    .line 289
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->setOptions()V

    .line 291
    :cond_0
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->prepareDataSource()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 292
    iget-object p1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mMediaPlayer:Lxyz/doikki/videoplayer/player/AbstractPlayer;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/AbstractPlayer;->prepareAsync()V

    const/4 p1, 0x1

    .line 293
    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayState(I)V

    .line 294
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isFullScreen()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->isTinyScreen()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xc

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    :goto_0
    invoke-virtual {p0, p1}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayerState(I)V

    :cond_3
    return-void
.end method

.method public startTinyScreen()V
    .locals 5

    .line 835
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsTinyScreen:Z

    if-eqz v0, :cond_0

    return-void

    .line 836
    :cond_0
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 838
    :cond_1
    iget-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lxyz/doikki/videoplayer/player/VideoView;->removeView(Landroid/view/View;)V

    .line 839
    iget-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mTinyScreenSize:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-gtz v1, :cond_2

    .line 841
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lxyz/doikki/videoplayer/util/PlayerUtils;->getScreenWidth(Landroid/content/Context;Z)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 844
    :cond_2
    iget-object v2, p0, Lxyz/doikki/videoplayer/player/VideoView;->mTinyScreenSize:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gtz v2, :cond_3

    mul-int/lit8 v2, v1, 0x9

    .line 846
    div-int/lit8 v2, v2, 0x10

    .line 849
    :cond_3
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800055

    .line 850
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 851
    iget-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 852
    iput-boolean v3, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsTinyScreen:Z

    const/16 v0, 0xc

    .line 853
    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayerState(I)V

    return-void
.end method

.method public stopFullScreen()V
    .locals 2

    .line 758
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsFullScreen:Z

    if-nez v0, :cond_0

    return-void

    .line 761
    :cond_0
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 765
    iput-boolean v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsFullScreen:Z

    .line 768
    invoke-direct {p0, v0}, Lxyz/doikki/videoplayer/player/VideoView;->showSysBar(Landroid/view/ViewGroup;)V

    .line 771
    iget-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 772
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/player/VideoView;->addView(Landroid/view/View;)V

    const/16 v0, 0xa

    .line 774
    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayerState(I)V

    return-void
.end method

.method public stopTinyScreen()V
    .locals 2

    .line 860
    iget-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsTinyScreen:Z

    if-nez v0, :cond_0

    return-void

    .line 862
    :cond_0
    invoke-virtual {p0}, Lxyz/doikki/videoplayer/player/VideoView;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 864
    :cond_1
    iget-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 865
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 868
    iget-object v1, p0, Lxyz/doikki/videoplayer/player/VideoView;->mPlayerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lxyz/doikki/videoplayer/player/VideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 870
    iput-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoView;->mIsTinyScreen:Z

    const/16 v0, 0xa

    .line 871
    invoke-virtual {p0, v0}, Lxyz/doikki/videoplayer/player/VideoView;->setPlayerState(I)V

    return-void
.end method
