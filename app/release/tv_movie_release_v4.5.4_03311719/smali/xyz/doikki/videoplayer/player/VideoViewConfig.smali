.class public Lxyz/doikki/videoplayer/player/VideoViewConfig;
.super Ljava/lang/Object;
.source "VideoViewConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;
    }
.end annotation


# instance fields
.field public final mAdaptCutout:Z

.field public final mEnableAudioFocus:Z

.field public final mEnableOrientation:Z

.field public final mIsEnableLog:Z

.field public final mPlayOnMobileNetwork:Z

.field public final mPlayerFactory:Lxyz/doikki/videoplayer/player/PlayerFactory;

.field public final mProgressManager:Lxyz/doikki/videoplayer/player/ProgressManager;

.field public final mRenderViewFactory:Lxyz/doikki/videoplayer/render/RenderViewFactory;

.field public final mScreenScaleType:I


# direct methods
.method private constructor <init>(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->access$000(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mIsEnableLog:Z

    .line 38
    invoke-static {p1}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->access$100(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mEnableOrientation:Z

    .line 39
    invoke-static {p1}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->access$200(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mPlayOnMobileNetwork:Z

    .line 40
    invoke-static {p1}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->access$300(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mEnableAudioFocus:Z

    .line 41
    invoke-static {p1}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->access$400(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Lxyz/doikki/videoplayer/player/ProgressManager;

    move-result-object v0

    iput-object v0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mProgressManager:Lxyz/doikki/videoplayer/player/ProgressManager;

    .line 42
    invoke-static {p1}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->access$500(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)I

    move-result v0

    iput v0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mScreenScaleType:I

    .line 43
    invoke-static {p1}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->access$600(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Lxyz/doikki/videoplayer/player/PlayerFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lxyz/doikki/videoplayer/player/AndroidMediaPlayerFactory;->create()Lxyz/doikki/videoplayer/player/AndroidMediaPlayerFactory;

    move-result-object v0

    iput-object v0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mPlayerFactory:Lxyz/doikki/videoplayer/player/PlayerFactory;

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p1}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->access$600(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Lxyz/doikki/videoplayer/player/PlayerFactory;

    move-result-object v0

    iput-object v0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mPlayerFactory:Lxyz/doikki/videoplayer/player/PlayerFactory;

    .line 49
    :goto_0
    invoke-static {p1}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->access$700(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Lxyz/doikki/videoplayer/render/RenderViewFactory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 51
    invoke-static {}, Lxyz/doikki/videoplayer/render/TextureRenderViewFactory;->create()Lxyz/doikki/videoplayer/render/TextureRenderViewFactory;

    move-result-object v0

    iput-object v0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mRenderViewFactory:Lxyz/doikki/videoplayer/render/RenderViewFactory;

    goto :goto_1

    .line 53
    :cond_1
    invoke-static {p1}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->access$700(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Lxyz/doikki/videoplayer/render/RenderViewFactory;

    move-result-object v0

    iput-object v0, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mRenderViewFactory:Lxyz/doikki/videoplayer/render/RenderViewFactory;

    .line 55
    :goto_1
    invoke-static {p1}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->access$800(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mAdaptCutout:Z

    return-void
.end method

.method synthetic constructor <init>(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;Lxyz/doikki/videoplayer/player/VideoViewConfig$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lxyz/doikki/videoplayer/player/VideoViewConfig;-><init>(Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;)V

    return-void
.end method

.method public static newBuilder()Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;
    .locals 1

    .line 15
    new-instance v0, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;

    invoke-direct {v0}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;-><init>()V

    return-object v0
.end method
