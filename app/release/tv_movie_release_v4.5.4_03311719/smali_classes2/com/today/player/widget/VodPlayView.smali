.class public Lcom/today/player/widget/VodPlayView;
.super Lxyz/doikki/videoplayer/player/VideoView;
.source "VodPlayView.java"


# instance fields
.field private mVodInfo:Lcom/today/player/bean/VodInfo;

.field private playIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/today/player/widget/VodPlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/today/player/widget/VodPlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lxyz/doikki/videoplayer/player/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/today/player/widget/VodPlayView;->playIndex:I

    return-void
.end method

.method private play()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getPlayIndex()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/today/player/widget/VodPlayView;->playIndex:I

    return v0
.end method

.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public playNext()V
    .locals 1

    .line 65
    iget v0, p0, Lcom/today/player/widget/VodPlayView;->playIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/today/player/widget/VodPlayView;->playIndex:I

    .line 66
    invoke-virtual {p0}, Lcom/today/player/widget/VodPlayView;->release()V

    .line 67
    invoke-direct {p0}, Lcom/today/player/widget/VodPlayView;->play()V

    return-void
.end method

.method public playPrevious()V
    .locals 1

    .line 71
    iget v0, p0, Lcom/today/player/widget/VodPlayView;->playIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/today/player/widget/VodPlayView;->playIndex:I

    .line 72
    invoke-virtual {p0}, Lcom/today/player/widget/VodPlayView;->release()V

    .line 73
    invoke-direct {p0}, Lcom/today/player/widget/VodPlayView;->play()V

    return-void
.end method

.method public setVodInfo(Lcom/today/player/bean/VodInfo;I)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/today/player/widget/VodPlayView;->mVodInfo:Lcom/today/player/bean/VodInfo;

    .line 37
    iput p2, p0, Lcom/today/player/widget/VodPlayView;->playIndex:I

    .line 38
    invoke-direct {p0}, Lcom/today/player/widget/VodPlayView;->play()V

    return-void
.end method
