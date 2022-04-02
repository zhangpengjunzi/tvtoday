.class Lcom/today/player/dkplayer/SimonVideoController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SimonVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/dkplayer/SimonVideoController;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/dkplayer/SimonVideoController;

.field final synthetic val$simonVodControlView2:Lcom/today/player/dkplayer/SimonVodControlView;


# direct methods
.method constructor <init>(Lcom/today/player/dkplayer/SimonVideoController;Lcom/today/player/dkplayer/SimonVodControlView;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/today/player/dkplayer/SimonVideoController$2;->this$0:Lcom/today/player/dkplayer/SimonVideoController;

    iput-object p2, p0, Lcom/today/player/dkplayer/SimonVideoController$2;->val$simonVodControlView2:Lcom/today/player/dkplayer/SimonVodControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 128
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVideoController$2;->val$simonVodControlView2:Lcom/today/player/dkplayer/SimonVodControlView;

    iget-object p1, p1, Lcom/today/player/dkplayer/SimonVodControlView;->u:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/today/player/dkplayer/SimonVideoController$2;->val$simonVodControlView2:Lcom/today/player/dkplayer/SimonVodControlView;

    iget-object p1, p1, Lcom/today/player/dkplayer/SimonVodControlView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
