.class public Lcom/today/player/base/App;
.super Landroidx/multidex/MultiDexApplication;
.source "App.java"


# static fields
.field public static instance:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method private buildConfig()Lcom/bytedance/sdk/openadsdk/TTAdConfig;
    .locals 2

    .line 96
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    const-string v1, "8014748"

    .line 97
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->useTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/bt/jrsdk/util/PangleSpUtils;->getInstance()Lcom/bt/jrsdk/util/PangleSpUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bt/jrsdk/util/PangleSpUtils;->getGdpr()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->setGDPR(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v0

    .line 100
    invoke-static {}, Lcom/bt/jrsdk/util/PangleSpUtils;->getInstance()Lcom/bt/jrsdk/util/PangleSpUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bt/jrsdk/util/PangleSpUtils;->getCcpa()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->setCCPA(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->coppa(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Landroid/app/Application;
    .locals 1

    .line 50
    sget-object v0, Lcom/today/player/base/App;->instance:Landroid/app/Application;

    return-object v0
.end method

.method private initPangle()V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/today/player/base/App;->buildConfig()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object v0

    new-instance v1, Lcom/today/player/base/App$1;

    invoke-direct {v1, p0}, Lcom/today/player/base/App$1;-><init>(Lcom/today/player/base/App;)V

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V

    return-void
.end method

.method private initParams()V
    .locals 4

    .line 108
    invoke-static {p0}, Lcom/orhanobut/hawk/Hawk;->init(Landroid/content/Context;)Lcom/orhanobut/hawk/HawkBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/orhanobut/hawk/HawkBuilder;->build()V

    const-string v0, "password"

    .line 109
    invoke-static {v0}, Lcom/orhanobut/hawk/Hawk;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00000000"

    .line 110
    invoke-static {v0, v1}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "adolescent"

    .line 112
    invoke-static {v0}, Lcom/orhanobut/hawk/Hawk;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 113
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "default_source_id"

    .line 115
    invoke-static {v0}, Lcom/orhanobut/hawk/Hawk;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "ijk_codec"

    .line 118
    invoke-static {v0}, Lcom/orhanobut/hawk/Hawk;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ""

    .line 119
    invoke-static {v0, v1}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_3
    const-string v0, "play_type"

    .line 121
    invoke-static {v0}, Lcom/orhanobut/hawk/Hawk;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 124
    :cond_4
    invoke-static {}, Lxyz/doikki/videoplayer/player/VideoViewConfig;->newBuilder()Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->setScreenScaleType(I)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;

    move-result-object v0

    new-instance v1, Lcom/today/player/util/ProgressManagerImpl;

    invoke-direct {v1}, Lcom/today/player/util/ProgressManagerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->setProgressManager(Lxyz/doikki/videoplayer/player/ProgressManager;)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->build()Lxyz/doikki/videoplayer/player/VideoViewConfig;

    move-result-object v0

    invoke-static {v0}, Lxyz/doikki/videoplayer/player/VideoViewManager;->setConfig(Lxyz/doikki/videoplayer/player/VideoViewConfig;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 56
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    .line 57
    sput-object p0, Lcom/today/player/base/App;->instance:Landroid/app/Application;

    .line 61
    invoke-static {p0}, Lcom/today/player/server/ControlManager;->init(Landroid/content/Context;)V

    .line 63
    invoke-static {}, Lcom/today/player/data/AppDataManager;->init()V

    .line 64
    invoke-direct {p0}, Lcom/today/player/base/App;->initPangle()V

    .line 65
    invoke-static {}, Lcom/kingja/loadsir/core/LoadSir;->beginBuilder()Lcom/kingja/loadsir/core/LoadSir$Builder;

    move-result-object v0

    new-instance v1, Lcom/today/player/callback/EmptyCallback;

    invoke-direct {v1}, Lcom/today/player/callback/EmptyCallback;-><init>()V

    .line 66
    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/LoadSir$Builder;->addCallback(Lcom/kingja/loadsir/callback/Callback;)Lcom/kingja/loadsir/core/LoadSir$Builder;

    move-result-object v0

    new-instance v1, Lcom/today/player/callback/LoadingCallback;

    invoke-direct {v1}, Lcom/today/player/callback/LoadingCallback;-><init>()V

    .line 67
    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/LoadSir$Builder;->addCallback(Lcom/kingja/loadsir/callback/Callback;)Lcom/kingja/loadsir/core/LoadSir$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/kingja/loadsir/core/LoadSir$Builder;->commit()V

    .line 69
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Lme/jessyan/autosize/unit/UnitsManager;->setSupportDP(Z)Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Lme/jessyan/autosize/unit/UnitsManager;->setSupportSP(Z)Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v0

    sget-object v1, Lme/jessyan/autosize/unit/Subunits;->PT:Lme/jessyan/autosize/unit/Subunits;

    .line 72
    invoke-virtual {v0, v1}, Lme/jessyan/autosize/unit/UnitsManager;->setSupportSubunits(Lme/jessyan/autosize/unit/Subunits;)Lme/jessyan/autosize/unit/UnitsManager;

    .line 73
    invoke-direct {p0}, Lcom/today/player/base/App;->initParams()V

    .line 74
    invoke-static {p0}, Lcom/today/player/util/AdBlocker;->init(Landroid/content/Context;)V

    .line 76
    invoke-static {}, Lcom/today/player/util/ChannelUtil;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "603875ff6ee47d382b672169"

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {p0, v1, v0, v2, v3}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->setPageCollectionMode(Lcom/umeng/analytics/MobclickAgent$PageMode;)V

    return-void
.end method
