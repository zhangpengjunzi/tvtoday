.class public Lcom/today/player/dkplayer/SimonVideoController;
.super Lxyz/doikki/videoplayer/controller/GestureVideoController;
.source "SimonVideoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/dkplayer/SimonVideoController$OnPlayStateChangeListener;,
        Lcom/today/player/dkplayer/SimonVideoController$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ProgressBar;

.field public b:Lcom/today/player/dkplayer/SimonVideoController$a;

.field public c:Z

.field public d:I

.field public e:J

.field private listener:Lcom/today/player/dkplayer/SimonVideoController$OnPlayStateChangeListener;

.field private playActivity:Lcom/today/player/ui/activity/PlayActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/today/player/dkplayer/SimonVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    instance-of v0, p1, Lcom/today/player/ui/activity/PlayActivity;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Lcom/today/player/ui/activity/PlayActivity;

    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVideoController;->playActivity:Lcom/today/player/ui/activity/PlayActivity;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, p1, p2, v0}, Lcom/today/player/dkplayer/SimonVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 223
    invoke-direct {p0, p1, p2, p3}, Lxyz/doikki/videoplayer/controller/GestureVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 224
    iput-boolean p1, p0, Lcom/today/player/dkplayer/SimonVideoController;->c:Z

    .line 225
    iput p1, p0, Lcom/today/player/dkplayer/SimonVideoController;->d:I

    const-wide/16 p1, 0x0

    .line 226
    iput-wide p1, p0, Lcom/today/player/dkplayer/SimonVideoController;->e:J

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8

    .line 239
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    if-lez v1, :cond_8

    .line 241
    iget-boolean v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->c:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 244
    instance-of v5, v4, Lcom/today/player/dkplayer/SimonVodControlView;

    if-eqz v5, :cond_0

    .line 245
    check-cast v4, Lcom/today/player/dkplayer/SimonVodControlView;

    .line 246
    iget-object v5, v4, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v5}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->hide()V

    .line 247
    iget-object v5, v4, Lcom/today/player/dkplayer/SimonVodControlView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    check-cast v6, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 248
    iget-object v5, v4, Lcom/today/player/dkplayer/SimonVodControlView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object v5, v4, Lcom/today/player/dkplayer/SimonVodControlView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 250
    invoke-virtual {v4}, Lcom/today/player/dkplayer/SimonVodControlView;->c()V

    goto :goto_0

    .line 253
    :cond_1
    iput-boolean v2, p0, Lcom/today/player/dkplayer/SimonVideoController;->c:Z

    :cond_2
    int-to-float p1, p1

    const v0, 0x461c4000    # 10000.0f

    mul-float p1, p1, v0

    .line 255
    iget-wide v4, p0, Lcom/today/player/dkplayer/SimonVideoController;->e:J

    long-to-float v0, v4

    add-float/2addr p1, v0

    float-to-long v4, p1

    iput-wide v4, p0, Lcom/today/player/dkplayer/SimonVideoController;->e:J

    .line 256
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->getCurrentPosition()J

    move-result-wide v4

    long-to-int p1, v4

    .line 257
    iget-wide v4, p0, Lcom/today/player/dkplayer/SimonVideoController;->e:J

    int-to-long v6, p1

    add-long/2addr v4, v6

    long-to-int v0, v4

    if-le v0, v1, :cond_3

    move v0, v1

    :cond_3
    if-gez v0, :cond_4

    const/4 v0, 0x0

    .line 264
    :cond_4
    iget-object v4, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 265
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 266
    instance-of v6, v5, Lcom/today/player/dkplayer/SimonVodControlView;

    if-eqz v6, :cond_5

    .line 267
    check-cast v5, Lcom/today/player/dkplayer/SimonVodControlView;

    if-le v0, p1, :cond_6

    .line 269
    iget-object v6, v5, Lcom/today/player/dkplayer/SimonVodControlView;->o:Landroid/widget/ImageView;

    const v7, 0x7f0700b3

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 271
    :cond_6
    iget-object v6, v5, Lcom/today/player/dkplayer/SimonVodControlView;->o:Landroid/widget/ImageView;

    const v7, 0x7f0700a5

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    :goto_2
    iget-object v5, v5, Lcom/today/player/dkplayer/SimonVodControlView;->f161p:Landroid/widget/TextView;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Lxyz/doikki/videoplayer/util/PlayerUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1}, Lxyz/doikki/videoplayer/util/PlayerUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "%s/%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 276
    :cond_7
    iput v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->d:I

    :cond_8
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 231
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 232
    instance-of v2, v1, Lcom/today/player/dkplayer/SimonVodControlView;

    if-eqz v2, :cond_0

    .line 233
    check-cast v1, Lcom/today/player/dkplayer/SimonVodControlView;

    iget-object v1, v1, Lcom/today/player/dkplayer/SimonVodControlView;->q:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 57
    instance-of v3, v1, Lcom/today/player/dkplayer/SimonVodControlView;

    if-eqz v3, :cond_0

    .line 58
    check-cast v1, Lcom/today/player/dkplayer/SimonVodControlView;

    iget-object v0, v1, Lcom/today/player/dkplayer/SimonVodControlView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public b()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 70
    instance-of v2, v1, Lcom/today/player/dkplayer/SimonVodControlView;

    if-eqz v2, :cond_0

    .line 71
    check-cast v1, Lcom/today/player/dkplayer/SimonVodControlView;

    invoke-virtual {v1}, Lcom/today/player/dkplayer/SimonVodControlView;->d()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 5

    .line 77
    iget-boolean v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->c:Z

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 80
    instance-of v2, v1, Lcom/today/player/dkplayer/SimonVodControlView;

    if-eqz v2, :cond_0

    .line 81
    check-cast v1, Lcom/today/player/dkplayer/SimonVodControlView;

    .line 82
    iget-object v2, v1, Lcom/today/player/dkplayer/SimonVodControlView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/today/player/dkplayer/SimonVideoController$1;

    invoke-direct {v3, p0, v1}, Lcom/today/player/dkplayer/SimonVideoController$1;-><init>(Lcom/today/player/dkplayer/SimonVideoController;Lcom/today/player/dkplayer/SimonVodControlView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    iget v1, p0, Lcom/today/player/dkplayer/SimonVideoController;->d:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->seekTo(J)V

    .line 93
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->start()V

    :cond_2
    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->c:Z

    .line 97
    iput v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->d:I

    const-wide/16 v0, 0x0

    .line 98
    iput-wide v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->e:J

    :cond_3
    return-void
.end method

.method public cancelPause()V
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 148
    instance-of v2, v1, Lcom/today/player/dkplayer/SimonVodControlView;

    if-eqz v2, :cond_0

    .line 149
    check-cast v1, Lcom/today/player/dkplayer/SimonVodControlView;

    .line 150
    iget-object v2, v1, Lcom/today/player/dkplayer/SimonVodControlView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/today/player/dkplayer/SimonVideoController$3;

    invoke-direct {v3, p0, v1}, Lcom/today/player/dkplayer/SimonVideoController$3;-><init>(Lcom/today/player/dkplayer/SimonVideoController;Lcom/today/player/dkplayer/SimonVodControlView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()V
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->pause()V

    .line 105
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 107
    instance-of v2, v1, Lcom/today/player/dkplayer/SimonVodControlView;

    if-eqz v2, :cond_0

    .line 108
    check-cast v1, Lcom/today/player/dkplayer/SimonVodControlView;

    .line 109
    iget-object v2, v1, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v2}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->getDuration()J

    move-result-wide v2

    long-to-int v3, v2

    .line 110
    iget-object v2, v1, Lcom/today/player/dkplayer/SimonVodControlView;->a:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v2}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->getCurrentPosition()J

    move-result-wide v4

    long-to-int v2, v4

    .line 111
    iget-object v4, v1, Lcom/today/player/dkplayer/SimonVodControlView;->s:Landroid/widget/TextView;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Lxyz/doikki/videoplayer/util/PlayerUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v3}, Lxyz/doikki/videoplayer/util/PlayerUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const-string v2, "%s/%s"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, v1, Lcom/today/player/dkplayer/SimonVodControlView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iget-object v2, v1, Lcom/today/player/dkplayer/SimonVodControlView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 114
    iget-object v1, v1, Lcom/today/player/dkplayer/SimonVodControlView;->u:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    :cond_1
    return-void

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->start()V

    .line 120
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlComponents:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 122
    instance-of v2, v1, Lcom/today/player/dkplayer/SimonVodControlView;

    if-eqz v2, :cond_3

    .line 123
    check-cast v1, Lcom/today/player/dkplayer/SimonVodControlView;

    .line 124
    iget-object v2, v1, Lcom/today/player/dkplayer/SimonVodControlView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/today/player/dkplayer/SimonVideoController$2;

    invoke-direct {v3, p0, v1}, Lcom/today/player/dkplayer/SimonVideoController$2;-><init>(Lcom/today/player/dkplayer/SimonVideoController;Lcom/today/player/dkplayer/SimonVodControlView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0b00a1

    return v0
.end method

.method public initView()V
    .locals 1

    .line 167
    invoke-super {p0}, Lxyz/doikki/videoplayer/controller/GestureVideoController;->initView()V

    const v0, 0x7f0800cf

    .line 168
    invoke-virtual {p0, v0}, Lcom/today/player/dkplayer/SimonVideoController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->a:Landroid/widget/ProgressBar;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 2

    .line 176
    invoke-super {p0, p1}, Lxyz/doikki/videoplayer/controller/GestureVideoController;->onPlayStateChanged(I)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->listener:Lcom/today/player/dkplayer/SimonVideoController$OnPlayStateChangeListener;

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0, p1}, Lcom/today/player/dkplayer/SimonVideoController$OnPlayStateChangeListener;->playStateChanged(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Lxyz/doikki/videoplayer/controller/GestureVideoController;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 207
    invoke-super {p0, p1}, Lxyz/doikki/videoplayer/controller/GestureVideoController;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onVisibilityChanged(ZLandroid/view/animation/Animation;)V
    .locals 0

    .line 211
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVideoController;->mControlWrapper:Lxyz/doikki/videoplayer/controller/ControlWrapper;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/controller/ControlWrapper;->isFullScreen()Z

    return-void
.end method

.method public setListener(Lcom/today/player/dkplayer/SimonVideoController$OnPlayStateChangeListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVideoController;->listener:Lcom/today/player/dkplayer/SimonVideoController$OnPlayStateChangeListener;

    return-void
.end method

.method public setScreenTapListener(Lcom/today/player/dkplayer/SimonVideoController$a;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVideoController;->b:Lcom/today/player/dkplayer/SimonVideoController$a;

    return-void
.end method

.method protected togglePlay()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->playActivity:Lcom/today/player/ui/activity/PlayActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/today/player/ui/activity/PlayActivity;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->playActivity:Lcom/today/player/ui/activity/PlayActivity;

    iget-object v0, v0, Lcom/today/player/ui/activity/PlayActivity;->playAd:Lcom/today/player/ad/VideoPlayAd;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/today/player/dkplayer/SimonVideoController;->playActivity:Lcom/today/player/ui/activity/PlayActivity;

    iget-object v0, v0, Lcom/today/player/ui/activity/PlayActivity;->playAd:Lcom/today/player/ad/VideoPlayAd;

    invoke-virtual {v0}, Lcom/today/player/ad/VideoPlayAd;->showAd()V

    .line 142
    :cond_0
    invoke-super {p0}, Lxyz/doikki/videoplayer/controller/GestureVideoController;->togglePlay()V

    return-void
.end method
