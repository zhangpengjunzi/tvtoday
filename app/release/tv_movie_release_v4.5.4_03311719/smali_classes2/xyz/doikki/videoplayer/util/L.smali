.class public final Lxyz/doikki/videoplayer/util/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DKPlayer"

.field private static isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    invoke-static {}, Lxyz/doikki/videoplayer/player/VideoViewManager;->getConfig()Lxyz/doikki/videoplayer/player/VideoViewConfig;

    move-result-object v0

    iget-boolean v0, v0, Lxyz/doikki/videoplayer/player/VideoViewConfig;->mIsEnableLog:Z

    sput-boolean v0, Lxyz/doikki/videoplayer/util/L;->isDebug:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 23
    sget-boolean v0, Lxyz/doikki/videoplayer/util/L;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "DKPlayer"

    .line 24
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 29
    sget-boolean v0, Lxyz/doikki/videoplayer/util/L;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "DKPlayer"

    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 35
    sget-boolean v0, Lxyz/doikki/videoplayer/util/L;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "DKPlayer"

    .line 36
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 47
    sput-boolean p0, Lxyz/doikki/videoplayer/util/L;->isDebug:Z

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 41
    sget-boolean v0, Lxyz/doikki/videoplayer/util/L;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "DKPlayer"

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
