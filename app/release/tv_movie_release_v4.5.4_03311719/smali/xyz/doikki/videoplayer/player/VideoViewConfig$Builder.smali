.class public final Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;
.super Ljava/lang/Object;
.source "VideoViewConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/doikki/videoplayer/player/VideoViewConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAdaptCutout:Z

.field private mEnableAudioFocus:Z

.field private mEnableOrientation:Z

.field private mIsEnableLog:Z

.field private mPlayOnMobileNetwork:Z

.field private mPlayerFactory:Lxyz/doikki/videoplayer/player/PlayerFactory;

.field private mProgressManager:Lxyz/doikki/videoplayer/player/ProgressManager;

.field private mRenderViewFactory:Lxyz/doikki/videoplayer/render/RenderViewFactory;

.field private mScreenScaleType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mPlayOnMobileNetwork:Z

    .line 64
    iput-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mEnableAudioFocus:Z

    .line 69
    iput-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mAdaptCutout:Z

    return-void
.end method

.method static synthetic access$000(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mIsEnableLog:Z

    return p0
.end method

.method static synthetic access$100(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mEnableOrientation:Z

    return p0
.end method

.method static synthetic access$200(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mPlayOnMobileNetwork:Z

    return p0
.end method

.method static synthetic access$300(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mEnableAudioFocus:Z

    return p0
.end method

.method static synthetic access$400(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Lxyz/doikki/videoplayer/player/ProgressManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mProgressManager:Lxyz/doikki/videoplayer/player/ProgressManager;

    return-object p0
.end method

.method static synthetic access$500(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)I
    .locals 0

    .line 59
    iget p0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mScreenScaleType:I

    return p0
.end method

.method static synthetic access$600(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Lxyz/doikki/videoplayer/player/PlayerFactory;
    .locals 0

    .line 59
    iget-object p0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mPlayerFactory:Lxyz/doikki/videoplayer/player/PlayerFactory;

    return-object p0
.end method

.method static synthetic access$700(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Lxyz/doikki/videoplayer/render/RenderViewFactory;
    .locals 0

    .line 59
    iget-object p0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mRenderViewFactory:Lxyz/doikki/videoplayer/render/RenderViewFactory;

    return-object p0
.end method

.method static synthetic access$800(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mAdaptCutout:Z

    return p0
.end method


# virtual methods
.method public build()Lxyz/doikki/videoplayer/player/VideoViewConfig;
    .locals 2

    .line 144
    new-instance v0, Lxyz/doikki/videoplayer/player/VideoViewConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxyz/doikki/videoplayer/player/VideoViewConfig;-><init>(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;Lxyz/doikki/videoplayer/player/VideoViewConfig$1;)V

    return-object v0
.end method

.method public setAdaptCutout(Z)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;
    .locals 0

    .line 139
    iput-boolean p1, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mAdaptCutout:Z

    return-object p0
.end method

.method public setEnableAudioFocus(Z)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;
    .locals 0

    .line 91
    iput-boolean p1, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mEnableAudioFocus:Z

    return-object p0
.end method

.method public setEnableOrientation(Z)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;
    .locals 0

    .line 75
    iput-boolean p1, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mEnableOrientation:Z

    return-object p0
.end method

.method public setLogEnabled(Z)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;
    .locals 0

    .line 107
    iput-boolean p1, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mIsEnableLog:Z

    return-object p0
.end method

.method public setPlayOnMobileNetwork(Z)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;
    .locals 0

    .line 83
    iput-boolean p1, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mPlayOnMobileNetwork:Z

    return-object p0
.end method

.method public setPlayerFactory(Lxyz/doikki/videoplayer/player/PlayerFactory;)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;
    .locals 0

    .line 115
    iput-object p1, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mPlayerFactory:Lxyz/doikki/videoplayer/player/PlayerFactory;

    return-object p0
.end method

.method public setProgressManager(Lxyz/doikki/videoplayer/player/ProgressManager;)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;
    .locals 0

    .line 99
    iput-object p1, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mProgressManager:Lxyz/doikki/videoplayer/player/ProgressManager;

    return-object p0
.end method

.method public setRenderViewFactory(Lxyz/doikki/videoplayer/render/RenderViewFactory;)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;
    .locals 0

    .line 131
    iput-object p1, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mRenderViewFactory:Lxyz/doikki/videoplayer/render/RenderViewFactory;

    return-object p0
.end method

.method public setScreenScaleType(I)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;
    .locals 0

    .line 123
    iput p1, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->mScreenScaleType:I

    return-object p0
.end method
