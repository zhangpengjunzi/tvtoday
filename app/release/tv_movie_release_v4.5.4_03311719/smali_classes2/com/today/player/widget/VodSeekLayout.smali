.class public Lcom/today/player/widget/VodSeekLayout;
.super Landroid/widget/FrameLayout;
.source "VodSeekLayout.java"

# interfaces
.implements Lcom/tv/widget/VodSeekBar$OnVodSeekBarChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;
    }
.end annotation


# static fields
.field public static final SEEK_START:I = 0x1

.field public static final SEEK_STOP:I = 0x2


# instance fields
.field private delayed:I

.field private isSeekBar:Z

.field private leftMargin:I

.field private mDuration:J

.field private mRunnable:Ljava/lang/Runnable;

.field private mSeekBar:Lcom/tv/widget/VodSeekBar;

.field private playState:Landroid/widget/ImageView;

.field private seekInfoLayout:Landroid/widget/FrameLayout;

.field private seekRunnable:Ljava/lang/Runnable;

.field private seekStateListener:Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;

.field private tvCurrentPosition:Landroid/widget/TextView;

.field private tvDuration:Landroid/widget/TextView;

.field private vodName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/today/player/widget/VodSeekLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/today/player/widget/VodSeekLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xbb8

    .line 35
    iput p1, p0, Lcom/today/player/widget/VodSeekLayout;->delayed:I

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/today/player/widget/VodSeekLayout;->isSeekBar:Z

    .line 41
    new-instance p2, Lcom/today/player/widget/VodSeekLayout$1;

    invoke-direct {p2, p0}, Lcom/today/player/widget/VodSeekLayout$1;-><init>(Lcom/today/player/widget/VodSeekLayout;)V

    iput-object p2, p0, Lcom/today/player/widget/VodSeekLayout;->mRunnable:Ljava/lang/Runnable;

    .line 50
    new-instance p2, Lcom/today/player/widget/VodSeekLayout$2;

    invoke-direct {p2, p0}, Lcom/today/player/widget/VodSeekLayout$2;-><init>(Lcom/today/player/widget/VodSeekLayout;)V

    iput-object p2, p0, Lcom/today/player/widget/VodSeekLayout;->seekRunnable:Ljava/lang/Runnable;

    .line 151
    iput p1, p0, Lcom/today/player/widget/VodSeekLayout;->leftMargin:I

    .line 69
    invoke-direct {p0}, Lcom/today/player/widget/VodSeekLayout;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/widget/VodSeekLayout;)Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/today/player/widget/VodSeekLayout;->seekStateListener:Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/today/player/widget/VodSeekLayout;)Lcom/tv/widget/VodSeekBar;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/today/player/widget/VodSeekLayout;->mSeekBar:Lcom/tv/widget/VodSeekBar;

    return-object p0
.end method

.method static synthetic access$202(Lcom/today/player/widget/VodSeekLayout;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/today/player/widget/VodSeekLayout;->isSeekBar:Z

    return p1
.end method

.method static synthetic access$300(Lcom/today/player/widget/VodSeekLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/today/player/widget/VodSeekLayout;->seekRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private initView()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->seekInfoLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f070198

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    const v0, 0x7f0700e3

    .line 81
    invoke-virtual {p0, v0}, Lcom/today/player/widget/VodSeekLayout;->setBackgroundResource(I)V

    .line 82
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->playState:Landroid/widget/ImageView;

    const v1, 0x7f070196

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->mSeekBar:Lcom/tv/widget/VodSeekBar;

    invoke-virtual {v0, p0}, Lcom/tv/widget/VodSeekBar;->setOnVodSeekBarChangedListener(Lcom/tv/widget/VodSeekBar$OnVodSeekBarChangedListener;)V

    .line 84
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->mSeekBar:Lcom/tv/widget/VodSeekBar;

    new-instance v1, Lcom/today/player/widget/VodSeekLayout$3;

    invoke-direct {v1, p0}, Lcom/today/player/widget/VodSeekLayout$3;-><init>(Lcom/today/player/widget/VodSeekLayout;)V

    invoke-virtual {v0, v1}, Lcom/tv/widget/VodSeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 101
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->tvCurrentPosition:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Lxyz/doikki/videoplayer/util/PlayerUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->tvDuration:Landroid/widget/TextView;

    invoke-static {v1}, Lxyz/doikki/videoplayer/util/PlayerUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private seekInfoLayout(I)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->seekInfoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 155
    iget v1, p0, Lcom/today/player/widget/VodSeekLayout;->leftMargin:I

    if-nez v1, :cond_0

    .line 156
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, p0, Lcom/today/player/widget/VodSeekLayout;->leftMargin:I

    .line 158
    :cond_0
    iget v1, p0, Lcom/today/player/widget/VodSeekLayout;->leftMargin:I

    add-int/2addr v1, p1

    int-to-float p1, v1

    iget-object v1, p0, Lcom/today/player/widget/VodSeekLayout;->mSeekBar:Lcom/tv/widget/VodSeekBar;

    invoke-virtual {v1}, Lcom/tv/widget/VodSeekBar;->getBarRadius()F

    move-result v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 159
    iget-object p1, p0, Lcom/today/player/widget/VodSeekLayout;->seekInfoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getMaxProgress()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->mSeekBar:Lcom/tv/widget/VodSeekBar;

    invoke-virtual {v0}, Lcom/tv/widget/VodSeekBar;->getMax()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 178
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 179
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/today/player/widget/VodSeekLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 180
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->seekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/today/player/widget/VodSeekLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProgressChanged(Lcom/tv/widget/VodSeekBar;F)V
    .locals 4

    .line 189
    iget-boolean v0, p0, Lcom/today/player/widget/VodSeekLayout;->isSeekBar:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->tvCurrentPosition:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/today/player/widget/VodSeekLayout;->mDuration:J

    long-to-float v1, v1

    mul-float v1, v1, p2

    iget-object v2, p0, Lcom/today/player/widget/VodSeekLayout;->mSeekBar:Lcom/tv/widget/VodSeekBar;

    invoke-virtual {v2}, Lcom/tv/widget/VodSeekBar;->getMax()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lxyz/doikki/videoplayer/util/PlayerUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    float-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 192
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-virtual {p1}, Lcom/tv/widget/VodSeekBar;->getMax()F

    move-result p2

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    iget-object p2, p0, Lcom/today/player/widget/VodSeekLayout;->mSeekBar:Lcom/tv/widget/VodSeekBar;

    invoke-virtual {p2}, Lcom/tv/widget/VodSeekBar;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/tv/widget/VodSeekBar;->getBarRadius()F

    move-result p1

    mul-float p1, p1, v2

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-int p1, v0

    invoke-direct {p0, p1}, Lcom/today/player/widget/VodSeekLayout;->seekInfoLayout(I)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->mSeekBar:Lcom/tv/widget/VodSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tv/widget/VodSeekBar;->setFocusable(Z)V

    .line 171
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->playState:Landroid/widget/ImageView;

    const v1, 0x7f070195

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/today/player/widget/VodSeekLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 173
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->seekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/today/player/widget/VodSeekLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCurrentPosition(J)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/today/player/widget/VodSeekLayout;->isSeekBar:Z

    .line 132
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->tvCurrentPosition:Landroid/widget/TextView;

    long-to-int p2, p1

    invoke-static {p2}, Lxyz/doikki/videoplayer/util/PlayerUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDuration(J)V
    .locals 4

    .line 119
    iput-wide p1, p0, Lcom/today/player/widget/VodSeekLayout;->mDuration:J

    const-wide/32 v0, 0x36ee80

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->mSeekBar:Lcom/tv/widget/VodSeekBar;

    long-to-float v1, p1

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/tv/widget/VodSeekBar;->setMax(F)V

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x7a120

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    long-to-float v2, p1

    const v3, 0x4a5bba00    # 3600000.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    .line 123
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->mSeekBar:Lcom/tv/widget/VodSeekBar;

    const v1, 0x459c4000    # 5000.0f

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/tv/widget/VodSeekBar;->setMax(F)V

    goto :goto_0

    :cond_1
    cmp-long v2, p1, v0

    if-gtz v2, :cond_2

    .line 125
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->mSeekBar:Lcom/tv/widget/VodSeekBar;

    long-to-float v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/tv/widget/VodSeekBar;->setMax(F)V

    .line 127
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->tvDuration:Landroid/widget/TextView;

    long-to-int p2, p1

    invoke-static {p2}, Lxyz/doikki/videoplayer/util/PlayerUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnSeekStateListener(Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/today/player/widget/VodSeekLayout;->seekStateListener:Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->mSeekBar:Lcom/tv/widget/VodSeekBar;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/tv/widget/VodSeekBar;->setProgress(F)V

    return-void
.end method

.method public setShowDelayed(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/today/player/widget/VodSeekLayout;->delayed:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/today/player/widget/VodSeekLayout;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/today/player/widget/VodSeekLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 110
    iget-object p1, p0, Lcom/today/player/widget/VodSeekLayout;->mRunnable:Ljava/lang/Runnable;

    iget v0, p0, Lcom/today/player/widget/VodSeekLayout;->delayed:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/today/player/widget/VodSeekLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    iget-object p1, p0, Lcom/today/player/widget/VodSeekLayout;->seekStateListener:Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 112
    invoke-interface {p1, v0}, Lcom/today/player/widget/VodSeekLayout$OnSeekStateListener;->onShowState(Z)V

    :cond_0
    return-void
.end method

.method public setVodName(Ljava/lang/String;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->vodName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public start()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->mSeekBar:Lcom/tv/widget/VodSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tv/widget/VodSeekBar;->setFocusable(Z)V

    .line 164
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->playState:Landroid/widget/ImageView;

    const v1, 0x7f070196

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/today/player/widget/VodSeekLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 166
    iget-object v0, p0, Lcom/today/player/widget/VodSeekLayout;->mRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/today/player/widget/VodSeekLayout;->delayed:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/today/player/widget/VodSeekLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
