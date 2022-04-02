.class final Lxyz/doikki/videoplayer/player/AudioFocusHelper;
.super Ljava/lang/Object;
.source "AudioFocusHelper.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentFocus:I

.field private mHandler:Landroid/os/Handler;

.field private mPausedForLoss:Z

.field private mStartRequested:Z

.field private mWeakVideoView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lxyz/doikki/videoplayer/player/VideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lxyz/doikki/videoplayer/player/VideoView;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mStartRequested:Z

    .line 24
    iput-boolean v0, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mPausedForLoss:Z

    .line 25
    iput v0, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mCurrentFocus:I

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mWeakVideoView:Ljava/lang/ref/WeakReference;

    .line 29
    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lxyz/doikki/videoplayer/player/AudioFocusHelper;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->handleAudioFocusChange(I)V

    return-void
.end method

.method private handleAudioFocusChange(I)V
    .locals 3

    .line 51
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mWeakVideoView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxyz/doikki/videoplayer/player/VideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x3

    if-eq p1, v1, :cond_5

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    if-eq p1, v2, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    iget-boolean p1, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mStartRequested:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mPausedForLoss:Z

    if-eqz p1, :cond_3

    .line 59
    :cond_2
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->start()V

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mStartRequested:Z

    .line 61
    iput-boolean p1, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mPausedForLoss:Z

    .line 63
    :cond_3
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->isMute()Z

    move-result p1

    if-nez p1, :cond_6

    const/high16 p1, 0x3f800000    # 1.0f

    .line 64
    invoke-virtual {v0, p1, p1}, Lxyz/doikki/videoplayer/player/VideoView;->setVolume(FF)V

    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 69
    iput-boolean v2, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mPausedForLoss:Z

    .line 70
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->pause()V

    goto :goto_0

    .line 74
    :cond_5
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->isMute()Z

    move-result p1

    if-nez p1, :cond_6

    const p1, 0x3dcccccd    # 0.1f

    .line 75
    invoke-virtual {v0, p1, p1}, Lxyz/doikki/videoplayer/player/VideoView;->setVolume(FF)V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method abandonFocus()V
    .locals 2

    .line 107
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 111
    iput-boolean v1, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mStartRequested:Z

    .line 112
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 2

    .line 34
    iget v0, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mCurrentFocus:I

    if-ne v0, p1, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lxyz/doikki/videoplayer/player/AudioFocusHelper$1;

    invoke-direct {v1, p0, p1}, Lxyz/doikki/videoplayer/player/AudioFocusHelper$1;-><init>(Lxyz/doikki/videoplayer/player/AudioFocusHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    iput p1, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mCurrentFocus:I

    return-void
.end method

.method requestFocus()V
    .locals 3

    .line 85
    iget v0, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mCurrentFocus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x3

    .line 93
    invoke-virtual {v0, p0, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 95
    iput v1, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mCurrentFocus:I

    return-void

    .line 99
    :cond_2
    iput-boolean v1, p0, Lxyz/doikki/videoplayer/player/AudioFocusHelper;->mStartRequested:Z

    return-void
.end method
