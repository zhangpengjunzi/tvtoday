.class public Lcom/today/player/dkplayer/SimonVodControlView;
.super Landroid/widget/FrameLayout;
.source "SimonVodControlView.java"

# interfaces
.implements Lxyz/doikki/videoplayer/controller/IControlComponent;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/dkplayer/SimonVodControlView$a;
    }
.end annotation


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:I

.field public C:F

.field public D:Lcom/today/player/dkplayer/SimonVodControlView$a;

.field public a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/widget/SeekBar;

.field public f160j:Landroid/widget/TextView;

.field public f161p:Landroid/widget/TextView;

.field public g:Landroid/widget/ProgressBar;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Z

.field public n:Z

.field public o:Landroid/widget/ImageView;

.field private playActivity:Lcom/today/player/ui/activity/PlayActivity;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/LinearLayout;

.field public u:Landroid/widget/LinearLayout;

.field public v:Landroid/widget/LinearLayout;

.field public w:Landroid/widget/FrameLayout;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->n:Z

    .line 78
    instance-of v1, p1, Lcom/today/player/ui/activity/PlayActivity;

    if-eqz v1, :cond_0

    .line 79
    check-cast p1, Lcom/today/player/ui/activity/PlayActivity;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->playActivity:Lcom/today/player/ui/activity/PlayActivity;

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->getLayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f080055

    .line 82
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->d:Landroid/widget/LinearLayout;

    const p1, 0x7f08005b

    .line 83
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->e:Landroid/widget/LinearLayout;

    const p1, 0x7f080136

    .line 84
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 85
    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f:Landroid/widget/SeekBar;

    .line 86
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p1, 0x7f080174

    .line 87
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->b:Landroid/widget/TextView;

    const p1, 0x7f08006e

    .line 88
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->c:Landroid/widget/TextView;

    const p1, 0x7f0800bc

    .line 89
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 90
    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->h:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080056

    .line 92
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    const p1, 0x7f080111

    .line 93
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->i:Landroid/widget/TextView;

    const p1, 0x7f080112

    .line 94
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f160j:Landroid/widget/TextView;

    const p1, 0x7f0802f5

    .line 95
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->k:Landroid/widget/TextView;

    const p1, 0x7f0802f6

    .line 96
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->l:Landroid/widget/TextView;

    .line 97
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->i:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f160j:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->k:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->l:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt p1, v1, :cond_1

    .line 102
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v1, -0x2

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const p1, 0x7f0802db

    .line 107
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->t:Landroid/widget/LinearLayout;

    const p1, 0x7f0802dc

    .line 108
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->o:Landroid/widget/ImageView;

    const p1, 0x7f0802dd

    .line 109
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f161p:Landroid/widget/TextView;

    const p1, 0x7f0802d6

    .line 110
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->u:Landroid/widget/LinearLayout;

    const p1, 0x7f0802d7

    .line 111
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->s:Landroid/widget/TextView;

    const p1, 0x7f0802d0

    .line 112
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->v:Landroid/widget/LinearLayout;

    const p1, 0x7f0802d1

    .line 113
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->w:Landroid/widget/FrameLayout;

    const p1, 0x7f0802d3

    .line 114
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->q:Landroid/widget/TextView;

    const p1, 0x7f0802d2

    .line 115
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->r:Landroid/widget/TextView;

    const p1, 0x7f0802d9

    .line 116
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->x:Landroid/widget/TextView;

    const p1, 0x7f0802da

    .line 117
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->y:Landroid/widget/TextView;

    .line 118
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->x:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->y:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0802e0

    .line 120
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->z:Landroid/widget/TextView;

    const p1, 0x7f0802e1

    .line 121
    invoke-virtual {p0, p1}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->A:Landroid/widget/TextView;

    .line 122
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->z:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->A:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 125
    iput v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->B:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 126
    iput p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->C:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 394
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->n:Z

    .line 395
    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->getLayoutId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p2, 0x7f080055

    .line 396
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->d:Landroid/widget/LinearLayout;

    const p2, 0x7f08005b

    .line 397
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f080136

    .line 398
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    .line 399
    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f:Landroid/widget/SeekBar;

    .line 400
    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f080174

    .line 401
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->b:Landroid/widget/TextView;

    const p2, 0x7f08006e

    .line 402
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->c:Landroid/widget/TextView;

    const p2, 0x7f0800bc

    .line 403
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 404
    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->h:Landroid/widget/ImageView;

    .line 405
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080056

    .line 406
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    const p2, 0x7f080111

    .line 407
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->i:Landroid/widget/TextView;

    const p2, 0x7f080112

    .line 408
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f160j:Landroid/widget/TextView;

    const p2, 0x7f0802f5

    .line 409
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->k:Landroid/widget/TextView;

    const p2, 0x7f0802f6

    .line 410
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->l:Landroid/widget/TextView;

    .line 411
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->i:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f160j:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->k:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->l:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-gt p2, v0, :cond_0

    .line 416
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 v0, -0x2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 418
    :cond_0
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->d:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 419
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 420
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const p2, 0x7f0802db

    .line 421
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->t:Landroid/widget/LinearLayout;

    const p2, 0x7f0802dc

    .line 422
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->o:Landroid/widget/ImageView;

    const p2, 0x7f0802dd

    .line 423
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f161p:Landroid/widget/TextView;

    const p2, 0x7f0802d6

    .line 424
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->u:Landroid/widget/LinearLayout;

    const p2, 0x7f0802d7

    .line 425
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->s:Landroid/widget/TextView;

    const p2, 0x7f0802d0

    .line 426
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->v:Landroid/widget/LinearLayout;

    const p2, 0x7f0802d1

    .line 427
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->w:Landroid/widget/FrameLayout;

    const p2, 0x7f0802d3

    .line 428
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->q:Landroid/widget/TextView;

    const p2, 0x7f0802d2

    .line 429
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->r:Landroid/widget/TextView;

    const p2, 0x7f0802d9

    .line 430
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->x:Landroid/widget/TextView;

    const p2, 0x7f0802da

    .line 431
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->y:Landroid/widget/TextView;

    .line 432
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->x:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->y:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0802e0

    .line 434
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->z:Landroid/widget/TextView;

    const p2, 0x7f0802e1

    .line 435
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->A:Landroid/widget/TextView;

    .line 436
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->z:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->A:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 439
    iput p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->B:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 440
    iput p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->C:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 444
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->n:Z

    .line 445
    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->getLayoutId()I

    move-result p3

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p2, 0x7f080055

    .line 446
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->d:Landroid/widget/LinearLayout;

    const p2, 0x7f08005b

    .line 447
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f080136

    .line 448
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    .line 449
    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f:Landroid/widget/SeekBar;

    .line 450
    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f080174

    .line 451
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->b:Landroid/widget/TextView;

    const p2, 0x7f08006e

    .line 452
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->c:Landroid/widget/TextView;

    const p2, 0x7f0800bc

    .line 453
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 454
    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->h:Landroid/widget/ImageView;

    .line 455
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080056

    .line 456
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    const p2, 0x7f080111

    .line 457
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->i:Landroid/widget/TextView;

    const p2, 0x7f080112

    .line 458
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f160j:Landroid/widget/TextView;

    const p2, 0x7f0802f5

    .line 459
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->k:Landroid/widget/TextView;

    const p2, 0x7f0802f6

    .line 460
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->l:Landroid/widget/TextView;

    .line 461
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->i:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f160j:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->k:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->l:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x16

    if-gt p2, p3, :cond_0

    .line 466
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 p3, -0x2

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 468
    :cond_0
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->d:Landroid/widget/LinearLayout;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 469
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const p2, 0x7f0802db

    .line 471
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->t:Landroid/widget/LinearLayout;

    const p2, 0x7f0802dc

    .line 472
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->o:Landroid/widget/ImageView;

    const p2, 0x7f0802dd

    .line 473
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f161p:Landroid/widget/TextView;

    const p2, 0x7f0802d6

    .line 474
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->u:Landroid/widget/LinearLayout;

    const p2, 0x7f0802d7

    .line 475
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->s:Landroid/widget/TextView;

    const p2, 0x7f0802d0

    .line 476
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->v:Landroid/widget/LinearLayout;

    const p2, 0x7f0802d1

    .line 477
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->w:Landroid/widget/FrameLayout;

    const p2, 0x7f0802d3

    .line 478
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->q:Landroid/widget/TextView;

    const p2, 0x7f0802d2

    .line 479
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->r:Landroid/widget/TextView;

    const p2, 0x7f0802d9

    .line 480
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->x:Landroid/widget/TextView;

    const p2, 0x7f0802da

    .line 481
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->y:Landroid/widget/TextView;

    .line 482
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->x:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->y:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0802e0

    .line 484
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->z:Landroid/widget/TextView;

    const p2, 0x7f0802e1

    .line 485
    invoke-virtual {p0, p2}, Lcom/today/player/dkplayer/SimonVodControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->A:Landroid/widget/TextView;

    .line 486
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->z:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->A:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 489
    iput p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->B:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 490
    iput p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->C:F

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 130
    iget v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->B:I

    add-int/lit8 v0, v0, 0x1

    .line 131
    iput v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->B:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->B:I

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    iget v1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->B:I

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->setScreenScaleType(I)V

    .line 136
    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->e()V

    return-void
.end method

.method public attach(Lxyz/doikki/videoplayer/controller/ControlWrapper;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    .line 141
    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->e()V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 145
    iget v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->C:F

    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v0, v1

    .line 146
    iput v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->C:F

    float-to-double v0, v0

    const-wide v2, 0x4000cccccccccccdL    # 2.1

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 148
    iput v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->C:F

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    iget v1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->C:F

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->setSpeed(F)V

    .line 151
    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->e()V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public d()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 162
    iget-object v3, p0, Lcom/today/player/dkplayer/SimonVodControlView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    :cond_1
    iget-object v3, p0, Lcom/today/player/dkplayer/SimonVodControlView;->v:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 167
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 3

    .line 173
    iget v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->B:I

    const-string v1, "\u9ed8\u8ba4"

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v1, "16:9"

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v1, "4:3"

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const-string v1, "\u586b\u5145"

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    const-string v1, "\u539f\u59cb"

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    const-string v1, "\u88c1\u526a"

    .line 187
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->C:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->z:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0b0054

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0800bc

    if-ne p1, v0, :cond_1

    .line 207
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->playActivity:Lcom/today/player/ui/activity/PlayActivity;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/today/player/ui/activity/PlayActivity;->playAd:Lcom/today/player/ad/VideoPlayAd;

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->playActivity:Lcom/today/player/ui/activity/PlayActivity;

    iget-object p1, p1, Lcom/today/player/ui/activity/PlayActivity;->playAd:Lcom/today/player/ad/VideoPlayAd;

    invoke-virtual {p1}, Lcom/today/player/ad/VideoPlayAd;->showAd()V

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->togglePlay()V

    goto :goto_0

    :cond_1
    const v0, 0x7f080111

    if-ne p1, v0, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->c()V

    .line 213
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->D:Lcom/today/player/dkplayer/SimonVodControlView$a;

    invoke-interface {p1}, Lcom/today/player/dkplayer/SimonVodControlView$a;->next()V

    goto :goto_0

    :cond_2
    const v0, 0x7f080112

    if-ne p1, v0, :cond_3

    .line 215
    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->c()V

    .line 216
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->D:Lcom/today/player/dkplayer/SimonVodControlView$a;

    invoke-interface {p1}, Lcom/today/player/dkplayer/SimonVodControlView$a;->pre()V

    goto :goto_0

    :cond_3
    const v0, 0x7f0802f5

    if-ne p1, v0, :cond_4

    .line 218
    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->a()V

    goto :goto_0

    :cond_4
    const v0, 0x7f0802f6

    if-ne p1, v0, :cond_5

    .line 220
    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->b()V

    goto :goto_0

    :cond_5
    const v0, 0x7f0802d9

    if-ne p1, v0, :cond_6

    .line 222
    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->d()V

    .line 223
    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->c()V

    .line 224
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->D:Lcom/today/player/dkplayer/SimonVodControlView$a;

    invoke-interface {p1}, Lcom/today/player/dkplayer/SimonVodControlView$a;->next()V

    goto :goto_0

    :cond_6
    const v0, 0x7f0802da

    if-ne p1, v0, :cond_7

    .line 226
    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->d()V

    .line 227
    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->c()V

    .line 228
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->D:Lcom/today/player/dkplayer/SimonVodControlView$a;

    invoke-interface {p1}, Lcom/today/player/dkplayer/SimonVodControlView$a;->next()V

    goto :goto_0

    :cond_7
    const v0, 0x7f0802e0

    if-ne p1, v0, :cond_8

    .line 230
    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->a()V

    goto :goto_0

    :cond_8
    const v0, 0x7f0802e1

    if-ne p1, v0, :cond_9

    .line 232
    invoke-virtual {p0}, Lcom/today/player/dkplayer/SimonVodControlView;->b()V

    :cond_9
    :goto_0
    return-void
.end method

.method public onLockStateChanged(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    .line 237
    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {p0, p1, v0}, Lcom/today/player/dkplayer/SimonVodControlView;->onVisibilityChanged(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    return-void

    .line 286
    :pswitch_0
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->isPlaying()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 282
    :pswitch_1
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 263
    :pswitch_2
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->h:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 264
    iget-boolean p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->n:Z

    if-nez p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 269
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 270
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 277
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 279
    :goto_0
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->startProgress()V

    return-void

    .line 253
    :pswitch_3
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 256
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 257
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 258
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 259
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 260
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    return-void

    .line 246
    :pswitch_4
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onPlayerStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 298
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->getDuration()J

    move-result-wide v0

    int-to-long p1, p2

    mul-long v0, v0, p1

    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-long p1, p1

    div-long/2addr v0, p1

    .line 299
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    long-to-int p2, v0

    .line 301
    invoke-static {p2}, Lxyz/doikki/videoplayer/util/PlayerUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 307
    iput-boolean p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->m:Z

    .line 308
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->stopProgress()V

    .line 309
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->stopFadeOut()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .line 313
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->getDuration()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v3, p1

    mul-long v1, v1, v3

    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-long v3, p1

    div-long/2addr v1, v3

    long-to-int p1, v1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->seekTo(J)V

    const/4 p1, 0x0

    .line 314
    iput-boolean p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->m:Z

    .line 315
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->startProgress()V

    .line 316
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->startFadeOut()V

    return-void
.end method

.method public onVisibilityChanged(ZLandroid/view/animation/Animation;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    .line 321
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 325
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 327
    :cond_0
    iget-boolean p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->n:Z

    if-eqz p1, :cond_1

    .line 328
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void

    .line 333
    :cond_2
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 334
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p2, :cond_3

    .line 337
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 339
    :cond_3
    iget-boolean p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->n:Z

    if-eqz p1, :cond_4

    .line 340
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 341
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x12c

    .line 342
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 343
    iget-object p2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    return-void
.end method

.method public setProgress(II)V
    .locals 6

    .line 348
    iget-boolean v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->m:Z

    if-nez v0, :cond_4

    .line 349
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    if-lez p1, :cond_0

    const/4 v1, 0x1

    .line 352
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    int-to-double v0, p2

    .line 354
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    int-to-double v2, p1

    .line 356
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 357
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 358
    iget-object v2, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-double v2, v2

    .line 359
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 360
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 361
    iget-object v1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 362
    iget-object v1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 364
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->getBufferedPercentage()I

    move-result v0

    const/16 v1, 0x5f

    if-lt v0, v1, :cond_1

    .line 368
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f:Landroid/widget/SeekBar;

    .line 369
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 370
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    .line 371
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0xa

    .line 374
    iget-object v1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->f:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 375
    iget-object v1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 378
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVodControlView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 380
    invoke-static {p1}, Lxyz/doikki/videoplayer/util/PlayerUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :cond_3
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 384
    invoke-static {p2}, Lxyz/doikki/videoplayer/util/PlayerUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public setVodControlListener(Lcom/today/player/dkplayer/SimonVodControlView$a;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVodControlView;->D:Lcom/today/player/dkplayer/SimonVodControlView$a;

    return-void
.end method
